return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = "catppuccin",
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    }
    --[[
    tabline = {
      lualine_a = {
        {
          "tabs",
          mode = 2,
          separator = { left = "", right = "" },
          fmt = function(name, context)
            return string.format("%d: %s", context.tabnr, name)
          end
        }
      }
    }
    ]]
  }
}
