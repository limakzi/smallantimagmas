#!/bin/bash


#SBATCH --partition ampere
#SBATCH -t 1-00:00:00

#SBATCH --job-name=smallantimagmas-classifier
#SBATCH --no-requeue
#SBATCH --verbose

#SBATCH --output ./logs/stdout-%x-%j-%a.txt
#SBATCH --error ./logs/stderr-%x-%j-%a.txt

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1

#SBATCH --array=1-16:10

set -x

gap -r -b -q << EOF
    order := 2;
    id := ${SLURM_ARRAY_TASK_ID:-10};

    Read("root.g");
    AntimagmaSaveToFile(order, id);
EOF
