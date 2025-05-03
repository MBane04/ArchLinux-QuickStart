#!/bin/bash
# Arch Linux dependencies for SVT

echo "Installing system dependencies..."
sudo pacman -Sy --needed \
    glfw-x11 libx11 libxrandr libxinerama libxcursor libxi libxext libxfixes \
    mesa libglvnd glu soil mesa-demos freeglut glfw-x11 cuda base-devel ffmpeg \
    gedit

# Install NVIDIA CUDA Toolkit (if NVIDIA GPU)
sudo pacman -S cuda nvidia-utils

echo "Dependencies installation completed!"