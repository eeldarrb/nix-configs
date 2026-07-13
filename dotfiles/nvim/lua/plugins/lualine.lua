return {
  "nvim-lualine/lualine.nvim",
  opts = {
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = { "filename" },
      lualine_x = {},
      lualine_y = { "filetype" },
      lualine_z = { "location" },
    },
  },
}
