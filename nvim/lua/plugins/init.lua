return {
  {
  "hrsh7th/cmp-cmdline",
  dependencies = { "hrsh7th/nvim-cmp" },
  config = function()
    local cmp = require("cmp")
    cmp.setup.cmdline(":", {
      sources = {
        { name = "path" },
        { name = "cmdline" },
      },
    })
    cmp.setup.cmdline("/", {
      sources = {
        { name = "buffer" },
      },
    })
  end,
},
  {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      highlight = { enable = true },
      indent = { enable = true },
      rainbow = { enable = true }
    }
  end
},
{
  "p00f/nvim-ts-rainbow"
},

    -- Statusline: clean, informative
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup {
        options = {
          theme = "auto",
          section_separators = '',
          component_separators = ''
        }
      }
    end
  },

  {
  "zbirenbaum/copilot-cmp",
  dependencies = { "zbirenbaum/copilot.lua" },
  config = function()
    require("copilot").setup()
    require("copilot_cmp").setup()
  end,
},
    -- Smooth scrolling
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup()
    end
  },

  -- Dashboard: startup screen
  {
    "goolord/alpha-nvim",
    config = function()
      require("alpha").setup(require("alpha.themes.startify").config)
    end
  },


  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
   { import = "nvchad.blink.lazyspec" },

   {
   	"nvim-treesitter/nvim-treesitter",
   	opts = {
   		ensure_installed = {
   			"vim", "lua", "vimdoc",
        "html", "css", "go", "rust", "javascript", "ts", "python", "cpp", "ruby"
   		},
   	},
   },
  {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup {
      ensure_installed = {
        "tsserver",
        "pyright",
        "gopls",
        "lua_ls",
        "html",
        "cssls",
        "clangd",    -- C/C++
        "rust_analyzer",
        "solargraph" -- Ruby
      }
    }
  end
}

}
