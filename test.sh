#!/bin/bash

cuda_version="empty"
image="flexflow"

# Parse command-line options and # Get name of desired Docker image and cuda version as input
while [[ $# -gt 0 ]]; do
  key="$1"

  case $key in
    --cuda_version)
      cuda_version="$2"
      shift 2
      ;;
    --image_name)
      image="$2"
      shift 2
      ;;
    *)
      echo "Invalid option: $key"
      exit 1
      ;;
  esac
done

if [[ $cuda_version == "empty" ]]; then
  cuda_version=$(command -v nvcc >/dev/null 2>&1 && nvcc --version | grep "release" | awk '{print $NF}')
  # Change cuda_version eg. V11.7.99 to 11.7
  cuda_version=${cuda_version:1:4}
fi

echo "cuda_version is ${cuda_version}, image_name is ${image}"
