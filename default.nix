{ pkgs ? import <nixpkgs> }:

with pkgs;
buildGoModule rec {
  pname = "kooky";
  version = "0.2.0";

  doCheck = false;
  meta = with lib; { maintainers = with maintainers; [ jdbaldry ]; };
  src = ./.;
  vendorSha256 = "sha256-WcKJwubsPreUDM0HBrCUYfMkoQCu+tEMhkAe+h7Gq24=";
}
