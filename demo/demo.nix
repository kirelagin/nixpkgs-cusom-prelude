{ mkDerivation, base-noprelude, myprelude, stdenv }:
mkDerivation {
  pname = "demo";
  version = "0.0.0";
  src = ./.;
  libraryHaskellDepends = [ base-noprelude myprelude ];
  license = stdenv.lib.licenses.unfree;
  hydraPlatforms = stdenv.lib.platforms.none;
}
