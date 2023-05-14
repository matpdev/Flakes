<div align="center">

# **Nixos - Hyprland**
</div>

# Gallery
<img title="Desktop" alt="Desktop" src="./assets/2023-04-26T01:58:03.png">
<br/>
<br/>
<img title="Terminal" alt="Terminal" src="./assets/2023-04-26T01:59:07.png">
<br/>
<br/>
<img title="nvim" alt="nvim" src="./assets/2023-04-26T01:59:41.png">
<br/>
<br/>
<br/>

## Technology

- Operating System: Nixos
- Window Manager: Hyprland
- Compositor: Wayland
- Display Manager: None (Use tty for login)
- Terminal: Kitty
- ColorScheme: catppuccino
- Editor: Neovim (neovide), Visual Studio code
- Topbar: Waybar (dexperimental override)
- Launcher, Wallpaper picker: Wofi
- Powermenu: wlogout


## Installation guide

1. ``` git clone https://github.com/samiulbasirfahim/nixos.git ~/Flakes ```
2. ``` cd ~/Flakes ```
3. ``` rm -rf .git/ && rm -rf hosts/nixos/hardware-configuration.nix```
4. ``` cp -r /etc/nixos/hardware-configuration.nix  hosts/nixos/ ```
5. ``` sudo nixos-rebuild switch --flake ~/Flakes/.#nixos ```
