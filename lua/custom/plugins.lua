local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    -- dependencies = {
    --   -- format & linting
    --   {
    --     "jose-elias-alvarez/null-ls.nvim",
    --     config = function()
    --       require "custom.configs.null-ls"
    --     end,
    --   },
    -- },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
  },

  {

    "numToStr/Comment.nvim",
    opts = overrides.comment,
  },
  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require "custom.configs.treesitter"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function()
      local leap = require "leap"
      leap.add_default_mappings()
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          leap.init_highlight(true)
        end,
      })
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    lazy = false,
    ft = { "typescriptreact", "tsx", "html" },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "glepnir/lspsaga.nvim",
    lazy = false,
    config = function()
      return require "custom.configs.lspsaga"
    end,
  },
  {
    "karb94/neoscroll.nvim",
    lazy = false,
    config = function()
      require("neoscroll").setup()
    end,
  },
  {
    "ibhagwan/smartyank.nvim",
    lazy = false,
  },
  {
    "nvim-telescope/telescope-project.nvim",
    lazy = false,
    opt = true,
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = false,
  },
  {
    "romainl/vim-cool",
    opt = true,
    event = { "CursorMoved", "InsertEnter" },
  },
  {
    "rainbowhxch/accelerated-jk.nvim",
    lazy = false,
    config = function()
      require("accelerated-jk").setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    lazy = false,
    config = function()
      require("nvim-surround").setup()
    end,
  },
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.formatter"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "custom.configs.lint"
    end,
  },
  {
    "filNaj/tree-setter",
    event = "VeryLazy",
  },
  {
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
  },
  {
    "mfussenegger/nvim-jdtls",
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
