# Stable Diffusion WebUI - ROCm Docker Edition

![SD-Web running on RX6900XT](image/sd-web-rocm.png "SD-Web running on RX6900XT")

This project packages AUTOMATIC1111's [Stable Diffusion WebUI](https://github.com/AUTOMATIC1111/stable-diffusion-webui) into AMD ROCm Docker.

Since installing ROCm on not officially supported platforms (e.g. Fedora Linux, Gentoo, Arch, etc) is hard but the kernel driver is already available on everywhere,
packaging userland dependencies into Docker container and running SD-Web on it would simplify the process a lot.

## Requirements

* AMD Graphics card supported by ROCm which has more then 16GB VRAM, such as, but not limited to, AMD Radeon Pro WX 9100 or AMD Radeon RX 6900XT 
* Linux machine which runs decent kernel (>5.10) and Docker (\w compose support)
* Plenty of storage space (SSD preferred)

## Performance
Measured on ASUS TUF Gaming Radeon RX 6900 XT T16G D6 16GB card.

* AOM3 model, 512x512 image, 32 prompt, 126 negative prompt, DPM++ 2M Karras 20 step - 4.5 second
* Above with Hires. fix \w R-ESRGAN 4x+ Anime6B, 2x scale, 20 hires steps - 30 second

## How to use

1. Clone the repository
2. Run `git submodule update --init --recursive`
3. Run `docker compose build`
4. Run `download_models.sh` or, download the models by hand and put it in `models/Stable-Diffusion` directory
5. Run `docker compose up -d`
6. Navigate to [http://localhost:3000](http://localhost:3000) and use it.
