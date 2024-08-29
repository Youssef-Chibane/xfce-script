#!/bin/bash

# Update the system
echo "Updating the system..."
sudo dnf update -y

# Install XFCE desktop environment
echo "Installing XFCE desktop environment..."
sudo dnf install -y @xfce-desktop-environment

# Install additional utilities and display manager (if not already installed)
echo "Installing additional utilities and display manager..."
sudo dnf install -y lightdm lightdm-gtk-plugin-gtk3 xfce4-screensaver

# Enable and start the LightDM display manager
echo "Enabling and starting LightDM display manager..."
sudo systemctl enable lightdm.service
sudo systemctl start lightdm.service

# Install a few additional useful tools
echo "Installing additional tools..."
sudo dnf install -y gnome-terminal vim

# Finish
echo "Installation complete. The system will now use LightDM to log in to XFCE. Please reboot your system to start using XFCE."
