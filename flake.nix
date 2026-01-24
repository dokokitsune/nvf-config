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
    }@inputs:
    let
      forEachSystem = nixpkgs.lib.getAttrs [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

    in
    {
      packages = forEachSystem (
        system:
        let
          pkgs = inputs.nixpkgs.legacyPackages.${system};
          configModule = import ./plugins;
          neovimConfigured = inputs.nvf.lib.neovimConfiguration {
            inherit pkgs;

            modules = [ configModule ];

          };
        in
        {

          neovim = neovimConfigured.neovim;
          default = self.packages.${system}.neovim;
        }
      );
    };
}
