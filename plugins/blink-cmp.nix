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
        signature = {
          enabled = true;
        };

      };
    };

  };
}
