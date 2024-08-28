#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt update

# Install XFCE and additional utilities
echo "Installing XFCE and additional utilities..."
sudo apt install -y xfce4 xfce4-goodies

# Install LightDM as the display manager
echo "Installing LightDM..."
sudo apt install -y lightdm

# Enable and start LightDM
echo "Enabling and starting LightDM..."
sudo systemctl enable lightdm
sudo systemctl start lightdm

# Install additional XFCE utilities (optional)
echo "Installing additional XFCE utilities..."
sudo apt install -y thunar xfce4-terminal xfce4-clipman-plugin xfce4-notifyd xfce4-power-manager

# Install Chromium
echo "Installing Chromium..."
sudo apt install -y chromium

# Reboot the system
echo "Rebooting the system..."
sudo reboot
