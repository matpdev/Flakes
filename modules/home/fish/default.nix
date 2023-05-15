{
  hostname,
  config,
  pkgs,
  ...
}: {
  programs.fish = {
    loginShellInit = ''
      set TTY1 (tty)
      [ "$TTY1" = "/dev/tty1" ] && exec Hyprland
    '';
    shellInit = ''
      set PATH $PATH ~/.cargo/bin
      set PATH $PATH ~/.local/bin
    '';
    enable = true;
    shellAliases = {
      n = "clear && neofetch";
      v = "nvim";
      nv = "env -u WAYLAND_DISPLAY neovide --multigrid";
      xw = "env -u WAYLAND_DISPLAY";
      record = "wf-recorder --audio=alsa_output.pci-0000_08_00.6.analog-stereo.monitor -f $HOME/Videos/$(date +'%Y%m%d%H%M%S_1.mp4')";
      ani = "bash $HOME/.local/bin/anime --dub";
      ls = "exa --icons";

      # nixos
      ncg = "nix-collect-garbage && nix-collect-garbage -d && doas nix-collect-garbage && doas nix-collect-garbage -d && doas rm /nix/var/nix/gcroots/auto/*";
      nrf = "doas nixos-rebuild switch --flake ~/Flakes/.#nixos";
      fl = "cd ~/Flakes/ && v";

      # python
      piv = "python -m venv .venv";
      psv = "source .venv/bin/activate.fish";
    };
  };
}
