local xcode_dir = (vim.env.XDG_DATA_HOME or vim.env.HOME .. "/.local/share") .. "/themes/xcode.nvim"

return {
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
  },
  {
    name = "xcode",
    dir = xcode_dir,
    lazy = false,
    priority = 1000,
    enabled = function()
      return (vim.uv or vim.loop).fs_stat(xcode_dir) ~= nil
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        if not pcall(vim.cmd.colorscheme, "xcode-dark") then
          vim.cmd.colorscheme("ember-soft")
        end
      end,
    },
  },
}
