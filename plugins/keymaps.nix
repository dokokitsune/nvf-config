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
    # AI/Claude Code
    {
      key = "<leader>a";
      mode = "n";
      action = "";
      desc = "AI/Claude Code";
    }
    {
      key = "<leader>ac";
      mode = "n";
      action = "<cmd>ClaudeCode<cr>";
      desc = "Toggle Claude";
    }
    {
      key = "<leader>af";
      mode = "n";
      action = "<cmd>ClaudeCodeFocus<cr>";
      desc = "Focus Claude";
    }
    {
      key = "<leader>ar";
      mode = "n";
      action = "<cmd>ClaudeCode --resume<cr>";
      desc = "Resume Claude";
    }
    {
      key = "<leader>aC";
      mode = "n";
      action = "<cmd>ClaudeCode --continue<cr>";
      desc = "Continue Claude";
    }
    {
      key = "<leader>am";
      mode = "n";
      action = "<cmd>ClaudeCodeSelectModel<cr>";
      desc = "Select Claude model";
    }
    {
      key = "<leader>ab";
      mode = "n";
      action = "<cmd>ClaudeCodeAdd %<cr>";
      desc = "Add current buffer";
    }
    {
      key = "<leader>as";
      mode = "v";
      action = "<cmd>ClaudeCodeSend<cr>";
      desc = "Send to Claude";
    }
    # Diff management
    {
      key = "<leader>aa";
      mode = "n";
      action = "<cmd>ClaudeCodeDiffAccept<cr>";
      desc = "Accept diff";
    }
    {
      key = "<leader>ad";
      mode = "n";
      action = "<cmd>ClaudeCodeDiffDeny<cr>";
      desc = "Deny diff";
    }

  ];
}
