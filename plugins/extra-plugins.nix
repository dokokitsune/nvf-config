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
    copilot-lua = {
      package = pkgs.vimPlugins.copilot-lua;
      setup = ''
        require('copilot').setup({
          suggestion = {
            enabled = false,
            auto_trigger = true,
            accept = false,
          },
          panel = {enabled = false},
          filetypes = {
            help = true,
            nix = true,
            javascript = true,
            typescript = true,
            ["*"] = true
          },
        })
      '';
    };
    blink-cmp-copilot = {
      package = pkgs.vimPlugins.blink-cmp-copilot;
      setup = "require('blink-cmp-copilot')";
    };

    vim-moonfly = {
      package = pkgs.vimPlugins.vim-moonfly-colors;
        setup = "vim.cmd [[colorscheme moonfly]]";
    };

  };
}
