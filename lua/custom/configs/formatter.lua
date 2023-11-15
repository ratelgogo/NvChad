local M = {
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    javascriptreact = {
      require("formatter.filetypes.javascript").prettier,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier,
    },
    typescriptreact = {
      require("formatter.filetypes.typescript").prettier,
    },
    less = {
      require("formatter.filetypes.css").prettier,
    },
    css = {
      require("formatter.filetypes.css").prettier,
    },
    scss = {
      require("formatter.filetypes.css").prettier,
    },
    html = { require("formatter.filetypes.html").prettier },
    vue = {
      require("formatter.filetypes.vue").prettier,
    },
  },
}

vim.keymap.set("n", "<leader>m", function()
  if M.filetype[vim.bo.filetype] ~= nil then
    vim.cmd [[Format]]
  else
    vim.lsp.buf.format { async = false, timeout = 500 }
  end
end)

-- vim.api.nvim_exec(
--   [[
-- augroup FormatAutogroup
--   autocmd!
--   autocmd BufWritePost *.js,*.tsx,*.lua,*.less,*.css,*.ts FormatWrite
-- augroup END
-- ]],
--   true
-- )
return M
