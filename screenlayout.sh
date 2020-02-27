#!/bin/sh

xrandr \
  --output HDMI-0 \
     --mode 3840x2160 \
    --pos 1920x0 \
    --rotate left \
  --output DP-2 \
    --mode 1920x1080 \
    --pos 0x2520 \
    --rotate normal \
  --output DP-1 --off \
  --output DP-0 --off
  
