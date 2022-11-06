#!/usr/bin/env bash

# Rust ( in case not installed before )
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# source "$HOME/.cargo/env"

CONDA_SUBDIR=osx-64 conda env create -f environment.yaml

conda init bash &&
eval "$(command conda 'shell.bash' 'hook' 2>/dev/null)" &&
conda activate sdm1

conda install -c conda-forge diffusers==0.7.2
conda install -c conda-forge transformers accelerate

#--