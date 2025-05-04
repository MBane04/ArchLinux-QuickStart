#!/bin/bash
# Native Arch Linux dependencies for SVT

echo "Installing system dependencies..."
sudo pacman -S --needed \
    base-devel git \
    glfw-x11 libx11 libxrandr libxinerama libxcursor libxi mesa glu \
    nvidia nvidia-utils libva-vdpau-driver vulkan-icd-loader \  # NVIDIA-specific
    cuda \                                                      # If using CUDA
    ffmpeg 

# Optional: Install these ONLY if your code uses them
# sudo pacman -S freeglut soil   # Uncomment if needed

echo "Dependencies installation completed!"