
let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in


pkgs.mkShell {
  buildInputs = [
    pkgs.bash
    pkgs.which
    pkgs.curl
    pkgs.git
    pkgs.temurin-bin-17
    pkgs.hcloud
    pkgs.ansible
  ];

  shellHook = ''
    echo NIX SHELL ACTIVATED
  '';

  MY_ENVIRONMENT_VARIABLE = "world";

}


#with import <nixpkgs> {};
#mkShell {
#  nativeBuildInputs = [
#    bashInteractive
#  ];
#  buildInputs = with pkgs; [
#    git
#  ];
#}



## save this as shell.nix
#{ pkgs ? import <nixpkgs> {}}:
#
#pkgs.mkShell {
#  packages = [ pkgs.hello ];
#}

