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
  },
}

vim.keymap.set("n", "<leader>m", function()
  if M.filetype[vim.bo.filetype] ~= nil then
    vim.cmd [[Format]]
  else
    vim.lsp.buf.format { async = true }
  end
end)

return M
