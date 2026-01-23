{
  vim.lsp = {
    enable = true;
    mappings = {
      format = "<leader>fm";
    };
    null-ls = {
      enable = true;
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
