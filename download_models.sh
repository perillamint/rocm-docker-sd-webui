#!/bin/bash
set -e
cd "$(dirname "$0")"

echo "By running this script. you are agreeing OpenRAIL++-M license and OpenRAIL-M license"
echo "Stable Diffusion v1.5 - OpenRAIL++-M"
echo "Stable Diffusion v2.1 - OpenRAIL++-M"
echo "Anything v4.5 - OpenRAIL-M"
echo "AbyssOrangeMix3 - OpenRAIL-M"
echo ""

read -r -p "Continue? [y/N] " response
response=${response,,}
if [[ ! "$response" =~ ^(yes|y)$ ]]; then exit 1; fi

mkdir -p data/models/Stable-diffusion
mkdir -p data/models/VAE
pushd data/models/Stable-diffusion

echo "Downloading SD v1.5..."
wget https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt

echo "Downloading SD v2.1..."
wget https://huggingface.co/stabilityai/stable-diffusion-2-1/blob/main/v2-1_768-ema-pruned.safetensors
pushd ../VAE
wget https://huggingface.co/stabilityai/stable-diffusion-2-1/resolve/main/vae/diffusion_pytorch_model.safetensors
popd

echo "Downloading Anything v4.5..."
wget https://huggingface.co/andite/anything-v4.0/resolve/main/anything-v4.5-pruned.ckpt

echo "Downloading AbyssOrangeMix3..."
wget https://huggingface.co/WarriorMama777/OrangeMixs/blob/main/Models/AbyssOrangeMix3/AOM3.safetensors
wget https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/Models/AbyssOrangeMix3/AOM3A1.safetensors
wget https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/Models/AbyssOrangeMix3/AOM3A1B.safetensors
wget https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/Models/AbyssOrangeMix3/AOM3A2.safetensors
wget https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/Models/AbyssOrangeMix3/AOM3A3.safetensors
