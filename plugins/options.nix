{

  vim = {
    luaConfigPost = ''
      local function paste()
        return {
          vim.fn.split(vim.fn.getreg(""), "\n"),
          vim.fn.getregtype(""),
        }
      end

      vim.g.clipboard = {
        name = "OSC 52",
        copy = {
          ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
          ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
        },
        paste = {
          ["+"] = paste,
          ["*"] = paste,
        },
      }
    '';

    options = {
      autoindent = true;
      title = true;
      tabstop = 2;
      shiftwidth = 2;
      cmdheight = 0;
      foldlevelstart = 99;
      clipboard = "unnamedplus";
    };

  };
}
