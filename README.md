# KDE Plasma 6: Getting HDR to work on Arch Linux

For HDR to work, first add ENABLE_HDR_WSI=1 to /etc/environment. After that add the following line to .bashrc:

alias mpvHDR="ENABLE_HDR_WSI=1 mpv --vo=gpu-next --target-colorspace-hint --gpu-api=vulkan --gpu-context=waylandvk $1"

Optionally, --icc-profile=<path2profile> can be passed as an argument to mpv.
