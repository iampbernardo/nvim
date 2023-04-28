return {
  "renerocksai/telekasten.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },

  cmd = { "Telekasten" },
  config = function()
    require("telekasten").setup({
      home = vim.fn.expand("~/nsecondbrain"),
      template_new_note = vim.fn.expand("~/nsecondbrain/templates/new_note.md"),
      template_daily = vim.fn.expand("~/nsecondbrain/templates/daily.md"),
      template_weekly = vim.fn.expand("~/nsecondbrain/templates/weekly.md"),
      media_previewer = "catimg-previewer",
      journal_auto_open = true,
    })
  end,
}
