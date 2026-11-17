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
  };
}
