return {
  "mistweaverco/kulala.nvim",
  keys = {
    { "<leader>Ts", desc = "Send request" },
    { "<leader>Ta", desc = "Send all requests" },
    { "<leader>Tb", desc = "Open scratchpad" },
  },
  ft = { "http", "rest" },
  opts = {
    global_keymaps = true,
    global_keymaps_prefix = "<leader>T",
    kulala_keymaps_prefix = "",
  },
}
