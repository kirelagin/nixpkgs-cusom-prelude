{ nixpkgs ? import <nixpkgs> {} }:

let
  myprelude = nixpkgs.pkgs.haskell.packages.ghc842.callPackage ./myprelude/myprelude.nix {};
  demo = nixpkgs.pkgs.haskell.packages.ghc842.callPackage ./demo/demo.nix { inherit myprelude; };
in {
  inherit myprelude demo;
}
