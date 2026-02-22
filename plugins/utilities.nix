{
  vim = {
    utility = {

      surround = {
        enable = true;
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
