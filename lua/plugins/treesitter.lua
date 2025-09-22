-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "json",
      "tsx",
      "css",
      "html",
      "bash",
      "markdown",
      "markdown_inline",
      "yaml",
      "python",
      "gitignore",
      "sql",
      "vimdoc",
      "dockerfile",
      "java",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
