#!/usr/bin/env bash
# Rust ( in case it's not installed )
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# source "$HOME/.cargo/env"

CONDA_SUBDIR=osx-arm64 conda env create -f environment.yaml
conda init bash
conda activate sdm1
CONDA_SUBDIR=osx-arm64 conda install -y ftfy spacy accelerate -c pytorch