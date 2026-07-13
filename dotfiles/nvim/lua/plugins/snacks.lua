return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = [[

        
                         ███                 
                        ░░░                  
 ████████   █████ █████ ████  █████████████  
░░███░░███ ░░███ ░░███ ░░███ ░░███░░███░░███ 
 ░███ ░███  ░███  ░███  ░███  ░███ ░███ ░███ 
 ░███ ░███  ░░███ ███   ░███  ░███ ░███ ░███ 
 ████ █████  ░░█████    █████ █████░███ █████
░░░░ ░░░░░    ░░░░░    ░░░░░ ░░░░░ ░░░ ░░░░░ 
                                             
                                             
                                             ]],
        keys = {
          {
            key = "q",
            desc = "Quit",
            action = ":qa",
            hidden = true,
          },
        },
      },
      sections = {
        { section = "header" },
        {
          section = "keys",
          align = "left",
        },
      },
    },
    picker = {
      sources = {
        files = {
          ignored = true,
          hidden = true,
        },
        explorer = {
          ignored = true,
          hidden = true,
          layout = {
            hidden = { "input" },
            -- auto_hide = { "input" },
            layout = {
              position = "left",
              width = 25,
            },
          },
        },
      },
      exclude = {
        ".git",
        "node_modules",
        ".venv",
        ".ruff_cache",
        "__pycache__",
        ".DS_Store",
      },
    },
  },
}
