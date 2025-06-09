#!/bin/bash
#SBATCH -p ampere
#SBATCH -t 1-00:00:00
#SBATCH -o ./logs/gap-stdout-%j.txt
#SBATCH -e ./logs/gap-stderr-%j.txt
#SBATCH --array=1-16:10

set -x

gap -r -b -q << EOF
    order := 2;
    id := ${SLURM_ARRAY_TASK_ID:-10};

    Read("root.g");
    AntimagmaSaveToFile(order, id);
EOF
