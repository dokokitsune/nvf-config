{
  vim.keymaps = [
    {
      key = "<leader>y";
      mode = "n";
      silent = true;
      action = ":Triptych<CR>";
    }
    {
      key = "<S-Tab>";
      mode = "i";
      silent = true;
      lua = true;
      action = ''
        function()
          if require("copilot.suggestion").is_visible() then
            require("copilot.suggestion").accept()
          else
            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<S-Tab>", true, false, true), "n", false)
          end
        end
      '';
    }
        

  ];
}
