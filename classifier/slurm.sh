#!/bin/bash
#SBATCH -p ampere
#SBATCH -t 1-00:00:00
#SBATCH -o ./logs/classifier/gap-stdout-%j.txt
#SBATCH -e ./logs/classifier/gap-stderr-%j.txt
#SBATCH --array=1-16:10

set -x

~/.local/share/gap/gap -r -b -q << EOF
    LoadPackage("smallantimagmas");
    Read("root.g");
    order := 2;
    id := ${SLURM_ARRAY_TASK_ID:-11};
    AntimagmaSaveToFile(order, id);
EOF
