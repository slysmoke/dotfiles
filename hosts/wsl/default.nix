{ inputs, ... }:
{
  imports = [
    inputs.nixos-wsl.nixosModules.default
  ];
  # nh default flake
  environment.variables.NH_FLAKE = "/home/devnull/Documents/code/dotfiles";

  wsl = {
    enable = true;
    defaultUser = "devnull";
  };

  nixpkgs.hostPlatform = "x86_64-linux";
}
