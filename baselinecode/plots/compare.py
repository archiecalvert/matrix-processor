import pandas as pd
import matplotlib.pyplot as plt

BEST_UNROLL = 8
BEST_THREAD = 8
BEST_BLOCK = 32

directories = {
    "data/1.2.csv": ["Baseline", ["FLOPS", "Dimension"]],
    "data/1.3/-O3.csv": ["O3 Optimisation", ["FLOPS", "Dimension", "Optimisation"], "-O3"],
    "data/1.4.csv": [f"Unroll {BEST_UNROLL}", ["FLOPS", "Dimension", "Unroll"], BEST_UNROLL],
    "data/1.5.csv": [f"{BEST_THREAD} Threads", ["FLOPS", "Dimension", "Threads"], BEST_THREAD],
    "data/1.6.csv": [f"{BEST_BLOCK} Block Size", ["FLOPS", "Dimension", "Block"], BEST_BLOCK],
    "data/1.7.csv": ["SIMD", ["FLOPS", "Dimension"]],
    "data/2.csv": ["Custom Combination", ["FLOPS", "Dimension"]],
}

figure, axis = plt.subplots()

for directory, config in directories.items():

    label = config[0]
    column_names = config[1]
    df = pd.read_csv(directory, names=column_names)

    if len(config) == 3:
        best_value = config[2]
        filter_column = column_names[2]
        df = df[df[filter_column] == best_value]

    x = df["Dimension"]
    y = df["FLOPS"] / 10**9

    axis.plot(x, y, marker='o', linewidth=2, markersize=1, label=label)

axis.set_xlabel("Matrix Dimension N")
axis.set_ylabel("GFLOPS")
axis.grid(True, alpha=0.6)
axis.legend()
plt.savefig("graphs/compare.png", dpi=200)