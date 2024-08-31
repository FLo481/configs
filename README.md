# Arch Linux Setup

![Arch Linux Logo](https://archlinux.org/static/logos/archlinux-logo-dark-90dpi.ebdee92a15b3.png)

## Installation of proprietary NVIDIA drivers on Arch Linux

A very good and concise guide can be found [here](https://github.com/korvahannu/arch-nvidia-drivers-installation-guide/blob/main/README.md).

## KDE Plasma 6: Getting HDR to work on Arch Linux

For HDR to work, first add ENABLE_HDR_WSI=1 to /etc/environment. After that add the following line to [.bashrc](.bashrc):

alias mpvHDR="ENABLE_HDR_WSI=1 mpv --vo=gpu-next --target-colorspace-hint --gpu-api=vulkan --gpu-context=waylandvk $1"

Optionally, --icc-profile=<path2profile> can be passed as an argument to mpv.

## Getting PrusaSlicer to work

When executing prusa-slicer, it can happen that it fails with
```
[flo@archlinuxbtw applications]$ prusa-slicer
An error occured while setting up locale.
You may need to reconfigure the missing locales, likely by running the "locale-gen" and "dpkg-reconfigure locales" commands.
PrusaSlicer will now terminate.

locale::facet::_S_create_c_locale name not valid
```

The problem is that LC_ALL is not set
```
[flo@archlinuxbtw ~]$ locale
locale: Cannot set LC_ALL to default locale: No such file or directory
LANG=en_GB.UTF-8
LC_CTYPE="en_GB.UTF-8"
LC_NUMERIC="en_GB.UTF-8"
LC_TIME=de_DE.UTF-8
LC_COLLATE="en_GB.UTF-8"
LC_MONETARY=de_DE.UTF-8
LC_MESSAGES="en_GB.UTF-8"
LC_PAPER="en_GB.UTF-8"
LC_NAME="en_GB.UTF-8"
LC_ADDRESS="en_GB.UTF-8"
LC_TELEPHONE="en_GB.UTF-8"
LC_MEASUREMENT="en_GB.UTF-8"
LC_IDENTIFICATION="en_GB.UTF-8"
LC_ALL=
```

A workaround to solve this issue is to edit /usr/share/applications/PrusaSlicer.desktop and change Exec=prusa-slicer %F to Exec=LC_ALL=en_GB.UTF8 prusa-slicer %F.

LC_ALL is only for troubleshooting purposes https://wiki.archlinux.org/title/Locale#LC_ALL:_troubleshooting

## Fixing Jellyfin Media Player black screen

Using Exec=__EGL_VENDOR_LIBRARY_FILENAMES=/usr/share/glvnd/egl_vendor.d/50_mesa.json jellyfinmediaplayer in /usr/share/applications/com.github.iwalton3.jellyfin-media-player.desktop seems to work (cf. https://github.com/jellyfin/jellyfin-media-player/issues/165).

Another workaround would be to use jellyfinmediaplayer --disable-gpu.
