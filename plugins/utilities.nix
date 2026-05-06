{
  vim = {
    utility = {

      surround = {
        enable = true;
      };
      yazi-nvim = {
        enable = true;
        mappings = {
          openYazi = "<leader>y";
        };
      };
      snacks-nvim = {
        enable = true;
        setupOpts = {
          indent = {
            enabled = true;
          };
          input = {
            enabled = true;
          };
        };
      };
    };
    terminal = {
      toggleterm = {
        enable = true;
        lazygit = {
          enable = true;
          mappings.open = "<leader>lg";
        };
      };
    };
  };

}
