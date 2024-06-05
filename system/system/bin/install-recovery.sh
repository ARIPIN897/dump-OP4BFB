#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:546a8707e1cc83cfce34a2bb9ad1bcde0d5ebd5b; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:7f607368cf8b51a519c74528e9af06752e73f8de EMMC:/dev/block/platform/bootdevice/by-name/recovery 546a8707e1cc83cfce34a2bb9ad1bcde0d5ebd5b 67108864 7f607368cf8b51a519c74528e9af06752e73f8de:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
