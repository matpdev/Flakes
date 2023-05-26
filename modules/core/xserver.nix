{...}: {
  services.xserver = {
    enable = true;
    videoDrivers = ["amdgpu"];
    displayManager.gdm.enable = true;
    windowManager.i3.enable = true;
  };
}
