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
          ];
        };
        signature = {
          enabled = true;
        };
    fuzzy = { implementation = "lua"; };

        snippets = {
          preset = "luasnip";
        };
      };

    };

  };
}
