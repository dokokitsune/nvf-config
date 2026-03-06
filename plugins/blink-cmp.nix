{
  vim = {
    autocomplete.blink-cmp = {
      enable = true;
      setupOpts = {

        keymap = {
          preset = "default";
          "<C-k>" = [
            "select_prev"
            "fallback"
          ];
          "<C-j>" = [
            "select_next"
            "fallback"
          ];
          "<CR>" = [
            "select_and_accept"
            "fallback"
          ];

        };
        sources = {
          default = [
            "lsp"
            "path"
            "snippets"
            "buffer"
            "copilot"
          ];
          providers = {
            copilot = {
              name = "copilot";
              module = "blink-cmp-copilot";
              score_offset = 100;
              async = true;
            };
          };
        };
        signature = {
          enabled = true;
        };

        snippets = {
          preset = "luasnip";
        };
      };

    };

  };
}
