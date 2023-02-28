#!/bin/bash
set -e
cd "$(dirname "$0")"

mkdir -p models/Stable-diffusion
pushd models/Stable-diffusion

echo "Downloading SD v1.5..."
wget https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt

echo "Downloading SD v2.1..."
wget https://huggingface.co/stabilityai/stable-diffusion-2-1/blob/main/v2-1_768-ema-pruned.safetensors

echo "Downloading Anything v4.5..."
wget https://huggingface.co/andite/anything-v4.0/resolve/main/anything-v4.5-pruned.ckpt

echo "Downloading AbyssOrangeMix3..."
wget https://huggingface.co/WarriorMama777/OrangeMixs/blob/main/Models/AbyssOrangeMix3/AOM3.safetensors
wget https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/Models/AbyssOrangeMix3/AOM3A1.safetensors
wget https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/Models/AbyssOrangeMix3/AOM3A1B.safetensors
wget https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/Models/AbyssOrangeMix3/AOM3A2.safetensors
wget https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/Models/AbyssOrangeMix3/AOM3A3.safetensors
