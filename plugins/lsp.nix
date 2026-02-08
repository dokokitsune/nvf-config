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
        sources = [ (mkLuaInline ''require("null-ls").builtins.formatting.yamlfmt'') ];
      };
    };
    lspconfig = {
      enable = true;
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
