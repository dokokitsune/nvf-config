{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs =
    {
      self,
      nixpkgs,
      nvf,
      ...
    }:
    let

      system = "x86_64-linux";
    in
    {
      packages.${system}.default =
        (nvf.lib.neovimConfiguration {
          pkgs = nixpkgs.legacyPackages.${system};
          modules = [ ./plugins ];
        }).neovim;
    };

}
