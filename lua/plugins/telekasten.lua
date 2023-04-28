return {
  "renerocksai/telekasten.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    local home = vim.fn.expand("~/nsecondbrain/") -- Put the name of your notes directory here
    require("telekasten").setup({
      -- template for new notes (new_note, follow_link)
      -- set to `nil` or do not specify if you do not want a template
      template_new_note = home .. "/" .. "templates/new_note.md",

      -- template for newly created daily notes (goto_today)
      -- set to `nil` or do not specify if you do not want a template
      template_new_daily = home .. "/" .. "templates/daily.md",

      -- template for newly created weekly notes (goto_thisweek)
      -- set to `nil` or do not specify if you do not want a template
      template_new_weekly = home .. "/" .. "templates/weekly.md",
    })
  end,
}
