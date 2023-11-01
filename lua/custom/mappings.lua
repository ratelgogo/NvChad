---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>ax"] = { ": lua require('nvchad.tabufline').closeAllBufs()<CR>"},
  },
  v = {
    [">"] = { ">gv", "indent"},
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
  },
}
M.custom = {
  n = {
    ["<C-q>"] = { "<cmd>qall!<CR>", "exit without save" },
    ["<leader>gg"] = { "<cmd> LazyGit<CR>", "show LazyGit UI" },
  },
  i = {
    ["<C-s>"] = { "<ESC><cmd> w <CR>", "Save file" },
  },
}

M.telescope = {
  n = {
    ["<leader>fp"] = { "<cmd> lua require('telescope').extensions.project.project{} <CR>", "list projects" },
    ["<leader>fd"] = { "<cmd> lua require('telescope.builtin').diagnostics({bufnr=0}) <CR>", "list diagnostic"}
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
    ["<leader>ls"] = {
      "<Cmd>Lspsaga signature_help<CR>",
      "LSP signature help",
    },

    ["<leader>D"] = {
      "<cmd>Lspsaga finder tyd<CR>",
      "LSP definition type",
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

    ["<leader>q"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "Diagnostic setloclist",
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
