{ mkDerivation, base-noprelude, stdenv }:
mkDerivation {
  pname = "myprelude";
  version = "0.0.0";
  src = ./.;
  libraryHaskellDepends = [ base-noprelude ];
  license = stdenv.lib.licenses.unfree;
  hydraPlatforms = stdenv.lib.platforms.none;
}
