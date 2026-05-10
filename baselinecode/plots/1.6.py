# BLOCKING

import subprocess
import math
import matplotlib.pyplot as plt
import pandas as pd
import matplotlib.ticker as ticker
import os
from pathlib import Path

OPTIMISATION_FLAG = "-O3"
DIR = Path(__file__).stem
MODE = 4

# ../matrix_multiply.out <L> <M> <N> <SEED> <MODE> <ADDITIONAL ARGS>
PROGRAM_RUN = "../matrix_multiply.out {} {} {} {} {} {}"
SEED = 1234
MIN_DIM = 128
MAX_DIM = 2048
STEP = 128
REPEAT_COUNT = 3
BLOCK_MAX = 128

def run_test(L: int, M: int, N: int, block_size: int) -> list[float]:
    """
    Runs the experiment for the given matrix inputs.

    Returns:
        list[float]: the resulting data of [L, M, N, TIME]
    """
    # run program and get output
    std_args = subprocess.run(PROGRAM_RUN.format(max(L, 1), max(M, 1), max(N, 1), SEED, MODE, block_size), shell=True, capture_output=True, text=True)
    raw_result = std_args.stdout

    # break each statistic into array
    stats_strings = [x.strip() for x in raw_result.split(",")]

    # extract the final section of the stat, being the actual measured value
    stats_vars = [float(x.split(" ")[-1]) for x in stats_strings]
    return stats_vars


if __name__ == "__main__":
    
    os.system("make -C ../ clean")
    os.system(f"make -C ../ OPT={OPTIMISATION_FLAG}")
    data = []
    for i in range(int(math.log2(MIN_DIM)), int(math.log2(MAX_DIM)) + 1):
        print(f"Running Experiment on M={i}")
        for block_val in range(0, int(math.log2(BLOCK_MAX)) + 1):
            print(f"DIM:\t{2**i}\nBLOCK_S:\t{2**block_val}")
            L = M = N = u = 0
            time_total = 0.0
            for j in range(REPEAT_COUNT):
                res = run_test(2**i, 2**i, 2**i, 2**block_val)
                L, M, N, time, B = int(res[0]), int(res[1]), int(res[2]), res[3], int(res[4])
                time_total += time

            time = time_total / float(REPEAT_COUNT)

            flops = (float(L * N * (2 * M - 1)) / time) if time != 0 else 0
            data.append([flops, L, B])

    with open(f"data/{DIR}.csv", "w") as f:
        for line in data:
            f.write(f"{line[0]},{line[1]},{line[2]}\n")

    df = pd.DataFrame(data, columns=["FLOPS", "Dimension", "Block Size"])

    figure, axis = plt.subplots(figsize=(10, 6))

    axis.set_xlabel("Matrix Dimension N")
    axis.set_ylabel("FLOPS")
    axis.grid(True, alpha=0.6)

    for block_size in sorted(df["Block Size"].unique()):
        subset = df[df["Block Size"] == block_size]

        axis.plot(
            subset["Dimension"],
            subset["FLOPS"],
            marker='o',
            linewidth=2,
            markersize=5,
            label=f"{block_size}x{block_size} Block Size"
        )

    axis.legend()

    plt.savefig(fname=f"graphs/{DIR}.png", dpi=200)
    plt.show()

