return {
    "glepnir/lspsaga.nvim",
    branch = "main",
    event = "LspAttach", -- Load lspsaga when LSP attaches to a buffer
    config = function()
      require("lspsaga").setup({
        ui = {
          border = "rounded", -- Rounded border for UI windows
          title = true, -- Show titles for UI windows
          winblend = 0, -- Transparency level (0 = opaque, 100 = fully transparent)
        },
        diagnostic = {
          show_code_action = true, -- Display code actions inline
          keys = {
            exec_action = "o", -- Key to execute actions
            quit = "q", -- Key to close diagnostics window
          },
        },
        lightbulb = {
          enable = false, -- Show a lightbulb for code actions
          sign = false, -- Use a sign column indicator
        },
        symbol_in_winbar = {
          enable = true, -- Show current symbol in the winbar
          separator = " > ", -- Separator for symbol breadcrumbs
        },
      })
  
      -- Keybindings
      local keymap = vim.keymap.set
  
      -- LSP Finder: Lists definitions, references, etc.
      keymap("n", "gh", "<cmd>Lspsaga finder<CR>", { silent = true })
  
      -- Hover Documentation
      keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
  
      -- Code Action
      keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
      keymap("v", "<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true })
  
      -- Rename
      keymap("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })
  
      -- Diagnostics
      keymap("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
      keymap("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
  
      -- Show line diagnostics
      --keymap("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
  
      -- Outline (Symbol tree)
      keymap("n", "<leader>o", "<cmd>Lspsaga outline<CR>", { silent = true })
    end,
  }
  
