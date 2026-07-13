return {
  -- {
  --   "webhooked/kanso.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     theme = "zen",
  --   },
  -- },

  -- {
  --   "AlexvZyl/nordic.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("nordic").load()
  --   end,
  -- },
  {
    "ember-theme/nvim",
    name = "ember",
    lazy = false,
    priority = 1000,
    config = function()
      require("ember").load()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ember-soft",
    },
  },
}
