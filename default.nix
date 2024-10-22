{ pkgs }:
let manifest = (pkgs.lib.importTOML ./Cargo.toml).package;
in
pkgs.rustPlatform.buildRustPackage rec {
  pname = manifest.name;
  version = manifest.version;
  src = pkgs.lib.cleanSource ./.;
  cargoLock.lockFile = ./Cargo.lock;
}
