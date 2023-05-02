local home = vim.fn.expand("~/nsecondbrain")
return {
  "renerocksai/telekasten.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "renerocksai/calendar-vim",
  },

  cmd = { "Telekasten" },
  config = function()
    require("telekasten").setup({
      home = home,

      -- -- dir names for special notes (absolute path or subdir name)
      dailies = home .. "/" .. "daily",
      weeklies = home .. "/" .. "weekly",
      templates = home .. "/" .. "templates",
      -- template for new notes (new_note, follow_link)
      -- set to `nil` or do not specify if you do not want a template
      template_new_note = home .. "/" .. "templates/new_note.md",

      -- template for newly created daily notes (goto_today)
      -- set to `nil` or do not specify if you do not want a template
      template_new_daily = home .. "/" .. "templates/daily.md",

      -- template for newly created weekly notes (goto_thisweek)
      -- set to `nil` or do not specify if you do not want a template
      template_new_weekly = home .. "/" .. "templates/weekly.md",
      -- templates notation
      --templates = vim.fn.expand("~/nsecondbrain/templates"),
      template_handling = "smart",

      journal_auto_open = true,
    })
  end,
}
