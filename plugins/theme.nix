{ pkgs, ... }:
{
  vim = {
    # ANSI colors follow the terminal palette instead of fixed RGB values.
    options.termguicolors = false;

    statusline.lualine.setupOpts.options.theme = {
      normal = {
        a = { fg = 0; bg = 4; gui = "bold"; };
        b = { fg = 7; bg = "none"; };
        c = { fg = 7; bg = "none"; };
      };
      insert.a = { fg = 0; bg = 2; gui = "bold"; };
      visual.a = { fg = 0; bg = 5; gui = "bold"; };
      replace.a = { fg = 0; bg = 1; gui = "bold"; };
      command.a = { fg = 0; bg = 3; gui = "bold"; };
      terminal.a = { fg = 0; bg = 6; gui = "bold"; };
      inactive = {
        a = { fg = 7; bg = 8; };
        b = { fg = 8; bg = "none"; };
        c = { fg = 8; bg = "none"; };
      };
    };

    extraPlugins.vim-dim = {
      package = pkgs.vimPlugins.vim-dim;
      setup = ''
        vim.cmd.colorscheme('dim')

        local function transparent_backgrounds()
          for _, group in ipairs({
            "Normal", "NormalNC", "NormalFloat", "FloatBorder",
            "SignColumn", "FoldColumn", "LineNr", "CursorLineNr",
            "EndOfBuffer", "WinSeparator", "VertSplit",
            "StatusLine", "StatusLineNC", "TabLineFill",
            "Pmenu", "PmenuSbar",
            "TelescopeNormal", "TelescopeBorder",
            "TelescopePromptNormal", "TelescopePromptBorder",
            "TelescopeResultsNormal", "TelescopeResultsBorder",
            "TelescopePreviewNormal", "TelescopePreviewBorder",
          }) do
            local highlight = vim.api.nvim_get_hl(0, { name = group, link = false })
            highlight.bg = nil
            highlight.ctermbg = nil
            highlight.reverse = false
            if highlight.cterm then
              highlight.cterm.reverse = false
            end
            vim.api.nvim_set_hl(0, group, highlight)
          end
        end

        vim.api.nvim_create_autocmd("ColorScheme", {
          group = vim.api.nvim_create_augroup("TerminalTransparency", { clear = true }),
          callback = transparent_backgrounds,
        })
        -- Apply after the other plugins have finished defining their highlights.
        vim.schedule(transparent_backgrounds)
      '';
    };
  };
}
