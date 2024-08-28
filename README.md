# Installation of proprietary NVIDIA drivers on Arch Linux

A very good and concise guide can be found [here](https://github.com/korvahannu/arch-nvidia-drivers-installation-guide/blob/main/README.md).

# KDE Plasma 6: Getting HDR to work on Arch Linux

For HDR to work, first add ENABLE_HDR_WSI=1 to /etc/environment. After that add the following line to .bashrc:

alias mpvHDR="ENABLE_HDR_WSI=1 mpv --vo=gpu-next --target-colorspace-hint --gpu-api=vulkan --gpu-context=waylandvk $1"

Optionally, --icc-profile=<path2profile> can be passed as an argument to mpv.
