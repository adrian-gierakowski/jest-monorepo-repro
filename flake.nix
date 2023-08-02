{
  description = "A very basic flake";

  outputs = { self, nixpkgs }: {

    devShells.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.mkShell {
      packages = [
        nixpkgs.legacyPackages.x86_64-linux.nodejs
        nixpkgs.legacyPackages.x86_64-linux.yarn
      ];
    };
  };
}
