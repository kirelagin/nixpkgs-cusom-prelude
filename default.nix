{ nixpkgs ? import <nixpkgs> {} }:

let
  myprelude = nixpkgs.pkgs.haskell.packages.ghc841.callPackage ./myprelude/myprelude.nix {};
  demo = nixpkgs.pkgs.haskell.packages.ghc841.callPackage ./demo/demo.nix { inherit myprelude; };
in {
  inherit myprelude demo;
}
