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
          (mkLuaInline ''require("null-ls").builtins.diagnostics.trivy'')
          (mkLuaInline ''require("null-ls").builtins.diagnostics.kube_linter'')
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
          vim.lsp.config('docker_compose_language_service', {})
        '';
        regal = ''
          vim.lsp.enable('regal');
          vim.lsp.config('regal', {})
        '';
        just = ''
          vim.lsp.enable('just')';
          vim.lsp.config('just', {})
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
