{pkgs, ...}: {
  systemd.packages = [
    pkgs.cloudflare-warp
  ];

  systemd.services."warp-svc".wantedBy = ["multi-user.target"];
  systemd.user.services."warp-taskbar".wantedBy = ["graphical-session.target"];

  environment.systemPackages = [
    pkgs.cloudflare-warp
  ];
}
