{ pkgs ? import <nixpkgs> {} }:

    pkgs.mkShell {
      name = "Python";
      packages = with pkgs; [
        pyright
        (python3.withPackages (ps: with ps; [
            pygame
        ]))
      ];
    }
