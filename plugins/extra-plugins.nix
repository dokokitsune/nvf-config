{ pkgs, ... }:
{
  vim.extraPlugins = {
    render-markdown = {
      package = pkgs.vimPlugins.render-markdown-nvim;
      setup = "require('render-markdown').setup({})";
    };
    smear-cursor = {
      package = pkgs.vimPlugins.smear-cursor-nvim;
      setup = "require('smear_cursor').toggle()";
    };
    triptych-nvim = {
      package = pkgs.vimPlugins.triptych-nvim;
      setup = "require('triptych').setup()";
    };
    copilot-lua = {
      package = pkgs.vimPlugins.copilot-lua;
      setup = ''
        require('copilot').setup({
          suggestion = {
            enabled = true,
            auto_trigger = true,
            accept = false,
          },
          panel = {enabled = false},
          filetypes = {
            markdown = true,
            help = true,
            nix = true,
            javascript = true,
            typescript = true,
            ["*"] = true
          },
        })
      '';
    };

  };
}
