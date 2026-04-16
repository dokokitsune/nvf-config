{ lib, ... }:

let
  inherit (lib.generators) mkLuaInline;

in
{
  vim.lsp = {
    enable = true;
    mappings = {
      format = "<leader>fm";
    };
    null-ls = {
      enable = true;
      setupOpts = {
        sources = [
          (mkLuaInline ''require("null-ls").builtins.formatting.yamlfmt'')
          (mkLuaInline ''require("null-ls").builtins.formatting.black'')
        ];
      };
    };
    lspconfig = {
      enable = true;
      sources = {
        dockerls = ''
          vim.lsp.enable('dockerls');
          vim.lsp.config('dockerls', {})
        '';
        docker_compose_language_service = ''
          vim.lsp.enable('docker_compose_language_service');
          vim.lsp.config('dockerls', {})
        '';

      };
    };
    otter-nvim = {
      enable = true;
    };
    trouble = {
      enable = true;
      mappings = {
        documentDiagnostics = "<leader>xx";
      };
    };
  };
}
