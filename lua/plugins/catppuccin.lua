return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "frappe",
      transparent_background = false,
      dim_inactive = { enabled = true, percentage = 0.25 },
      highlight_overrides = {
        mocha = function(c)
          return {
            Comment = { fg = "#7687a0" },
            ["@tag.attribute"] = { style = {} },
          }
        end,
      },
    },
  },
}
