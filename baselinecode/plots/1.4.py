import subprocess
import math
import matplotlib.pyplot as plt
import pandas as pd
import matplotlib.ticker as ticker
import os
from pathlib import Path

OPTIMISATION_FLAG = "-O3"
DIR = Path(__file__).stem

# ../matrix_multiply.out <L> <M> <N> <SEED>
PROGRAM_RUN = "../matrix_multiply.out {} {} {} {}"
SEED = 1234
MIN_DIM = 64
MAX_DIM = 1024
STEP = 64
REPEAT_COUNT = 1

def run_test(L: int, M: int, N: int) -> list[float]:
    """
    Runs the experiment for the given matrix inputs.

    Returns:
        list[float]: the resulting data of [L, M, N, TIME]
    """
    # run program and get output
    std_args = subprocess.run(PROGRAM_RUN.format(max(L, 1), max(M, 1), max(N, 1), SEED), shell=True, capture_output=True, text=True)
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
    for i in range(MIN_DIM, MAX_DIM + 1, STEP):
        print(f"Running Experiment on M={i}")
        time_total = 0.0
        L = M = N = 0
        for j in range(REPEAT_COUNT):
            res = run_test(i, i, i)
            L, M, N, time = int(res[0]), int(res[1]), int(res[2]), res[3]
            time_total += time
        time = time_total / float(REPEAT_COUNT)

        flops = float(L * N * (2 * M - 1)) / time if time != 0 else 0
        data.append([flops, L])

    with open(f"data/{DIR}.csv", "w") as f:
        for line in data:
            f.write(f"{line[0]},{line[1]}\n")

    df = pd.DataFrame(data, columns=["FLOPS", "Dimension"])
    x = df["Dimension"]
    y = df["FLOPS"]
    
    figure, axis = plt.subplots()
    axis.set_xlabel("Matrix Dimension N")
    axis.set_ylabel("FLOPS")
    axis.grid(True, alpha=0.6)
    axis.plot(x, y, marker='o', linewidth=2, markersize=5)
    plt.savefig(fname = f"graphs/{DIR}.png", dpi=200)

