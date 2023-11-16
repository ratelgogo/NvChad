-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snippets/lua"
vim.g.vscode_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snippets/vscode"

vim.opt.showbreak = "↳"
vim.opt.wrap = true
vim.opt.relativenumber = true

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  virtual_text = {
    spacing = 5,
    severity_limit = "Warning",
  },
  update_in_insert = true,
})

local neovide_config = function()
  -- vim.opt.guifont = { "JetBrainsMono Nerd Font", ":h15" }
  -- vim.o.guifont = "CodeNewRoman Nerd Font:h15"
  vim.o.guifont = "FiraCode Nerd Font:h15"
  -- vim.o.guifont = "Hack Nerd Font:h15"
  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_cursor_vfx_mode = "railgun"
  -- vim.g.neovide_cursor_vfx_mode = "torpedo"
  vim.g.neovide_no_idle = true
  vim.g.neovide_cursor_animation_length = 0.03
  vim.g.neovide_cursor_trail_length = 0.05
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_vfx_opacity = 200.0
  vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
  vim.g.neovide_cursor_vfx_particle_speed = 20.0
  vim.g.neovide_cursor_vfx_particle_density = 5.0
  vim.g.neovide_refresh_rate_idle = 5
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_confirm_quit = true
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  -- vim.g.neovide_transparency = 0.8
  -- vim.g.transparency = 0.8
  -- vim.g.neovide_background_color = '#282c34'
end

if vim.fn.exists "g:neovide" then
  neovide_config()
end
