# MULTICORE PERFORMANCE

import subprocess
import math
import matplotlib.pyplot as plt
import pandas as pd
import matplotlib.ticker as ticker
import os
from pathlib import Path

OPTIMISATION_FLAG = "-O3"
DIR = Path(__file__).stem
MODE = 3

# ../matrix_multiply.out <L> <M> <N> <SEED> <MODE> <ADDITIONAL ARGS>
PROGRAM_RUN = "../matrix_multiply.out {} {} {} {} {} {}"
SEED = 1234
MIN_DIM = 64
MAX_DIM = 2048
STEP = 128
REPEAT_COUNT = 3
THREAD_MAX = 20

def run_test(L: int, M: int, N: int, threads: int) -> list[float]:
    """
    Runs the experiment for the given matrix inputs.

    Returns:
        list[float]: the resulting data of [L, M, N, TIME]
    """
    # run program and get output
    std_args = subprocess.run(PROGRAM_RUN.format(max(L, 1), max(M, 1), max(N, 1), SEED, MODE, max(1, threads)), shell=True, capture_output=True, text=True)
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
        for thread_count in range(0, THREAD_MAX + 1, 2):
            L = M = N = u = 0
            time_total = 0.0
            print(thread_count)
            for j in range(REPEAT_COUNT):
                res = run_test(i, i, i, thread_count)
                L, M, N, time, T = int(res[0]), int(res[1]), int(res[2]), res[3], int(res[4])
                time_total += time

            time = time_total / float(REPEAT_COUNT)

            flops = (float(L * N * (2 * M - 1)) / time) if time != 0 else 0
            data.append([flops, L, T])

    with open(f"data/{DIR}.csv", "w") as f:
        for line in data:
            f.write(f"{line[0]},{line[1]},{line[2]}\n")

    df = pd.DataFrame(data, columns=["FLOPS", "Dimension", "Threads"])

    figure, axis = plt.subplots(figsize=(10, 6))

    axis.set_xlabel("Matrix Dimension N")
    axis.set_ylabel("FLOPS")
    axis.grid(True, alpha=0.6)

    for thread_count in sorted(df["Threads"].unique()):
        subset = df[df["Threads"] == thread_count]

        axis.plot(
            subset["Dimension"],
            subset["FLOPS"],
            marker='o',
            linewidth=2,
            markersize=5,
            label=f"{thread_count} Thread(s)"
        )

    axis.legend()

    plt.savefig(fname=f"graphs/{DIR}.png", dpi=200)
    plt.show()

