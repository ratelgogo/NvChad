---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  theme_toggle = { "onedark", "onedark" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    theme = 'default',
    overriden_modules = function(modules)
      local fn = vim.fn
      local sep_l = "█"
      modules[9] = (function()
        local dir_icon = "%#St_cwd_icon#" .. "󰉋 "
        local dir_name = "%#St_cwd_text#" .. " " .. fn.fnamemodify(fn.getcwd(), ":t") .. " "
        return (vim.o.columns > 85 and ("%#St_cwd_sep#" .. sep_l .. dir_icon .. dir_name)) or ""
      end)()
      modules[10] = (function()
        local left_sep = "%#St_pos_sep#" .. sep_l .. "%#St_pos_icon#" .. " "

        local current_line = fn.line(".", vim.g.statusline_winid)
        local total_line = fn.line("$", vim.g.statusline_winid)
        local text = current_line .. "/" .. total_line
        text = string.format("%4s", text)

        text = (current_line == 1 and "Top") or text
        text = (current_line == total_line and "Bot") or text

        return left_sep .. "%#St_pos_text#" .. " " .. text .. " "
      end)()
    end,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
