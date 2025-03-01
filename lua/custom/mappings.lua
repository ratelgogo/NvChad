---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>ax"] = { ": lua require('nvchad.tabufline').closeAllBufs()<CR>", "close all bufs" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

M.disabled = {
  n = {
    ["<leader>ma"] = "",
    ["<leader>f"] = "",
    ["<leader>fm"] = "",
    ["<leader>wa"] = "",
    ["<leader>wr"] = "",
    ["<leader>wl"] = "",
    ["<leaner>e"] = "",
  },
}
M.custom = {
  n = {
    ["<C-q>"] = { "<cmd>qall!<CR>", "exit without save" },
    ["<leader>gg"] = { "<cmd> LazyGit<CR>", "show LazyGit UI" },
    ["<leader>e"] = { "<cmd>lua vim.diagnostic.open_float()<cr>", "show line diagnostics" },
  },
  i = {
    ["<C-s>"] = { "<ESC><cmd> w <CR>", "Save file" },
  },
}

M.telescope = {
  n = {
    ["<leader>fp"] = { "<cmd> lua require('telescope').extensions.project.project{} <CR>", "list projects" },
    ["<leader>fd"] = {
      "<cmd> lua require('telescope.builtin').diagnostics({bufnr=0, line_width='full'}) <CR>",
      "list diagnostic",
    },
    ["<leader>fm"] = {
      "<cmd> Telescope media_files<CR>",
      "list all media_files",
    },
    ["<leader>fr"] = {
      "<cmd> Telescope lsp_references<CR>",
      "list references under the cursor",
    },
  },
}

M.lspconfig = {
  n = {
    ["gD"] = {
      "<Cmd>Lspsaga goto_definition<CR>",
      "LSP declaration",
    },

    ["gd"] = {
      "<Cmd>Lspsaga peek_definition<CR>",
      "LSP definition",
    },

    ["K"] = {
      "<Cmd>Lspsaga hover_doc<CR>",
      "LSP hover",
    },
    ["gi"] = {
      "<cmd>Lspsaga finder imp<CR>",
      "LSP implementation",
    },
    ["go"] = {
      "<cmd>Lspsaga outline<CR>",
      "LSP outline",
    },

    ["ga"] = {
      "<cmd>Lspsaga code_action<CR>",
      "LSP code action",
    },

    ["gr"] = {
      "<cmd>Lspsaga finder ref<CR>",
      "LSP references",
    },

    ["[d"] = {
      "<cmd>Lspsaga diagnostic_jump_prev<CR>",
      "Goto prev",
    },

    ["]d"] = {
      "<cmd>Lspsaga diagnostic_jump_next<CR>",
      "Goto next",
    },
  },

  v = {
    ["ga"] = {
      "<cmd>Lspsaga code_action<CR>",
      "LSP code action",
    },
  },
}
return M
