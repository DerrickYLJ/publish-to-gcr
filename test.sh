#!/bin/bash

cuda_version=$(nvcc --version | grep "release" | awk '{print $NF}')

if [[ -n "$cuda_version" ]]; then
  echo "CUDA version: $cuda_version"
else
  echo "CUDA is not installed on this machine."
fi
