{
  description = "A very basic flake";
  inputs.flake-utils.url = "github:numtide/flake-utils";


  outputs = { self, flake-utils, nixpkgs }@inputs:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {inherit system;};
        devShell = pkgs.mkShell {
          packages = with pkgs; [nodejs yarn];
        };
      in {
        devShells.default = devShell;
      }
    );
}
