#!/bin/bash

#SBATCH -p general
#SBATCH -n 1
#SBATCH -N 1
#SBATCH --mem 8000
#SBATCH -t 4:00:00
#SBATCH -J bwa_index
#SBATCH -o bwa_index_%j.out
#SBATCH -e bwa_index_%j.err

module load bwa/0.7.9a-fasrc01

GENOME=$1

bwa index -p $GENOME $GENOME.fna.gz