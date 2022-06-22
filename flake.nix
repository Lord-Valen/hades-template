{
  description = "A bot to wet my feet in the Hades framework";

  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
    fu.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, fu }:
    fu.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in { devShell = import ./shell.nix { inherit pkgs; }; });
}
