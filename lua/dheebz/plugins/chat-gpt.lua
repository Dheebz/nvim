return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup({
      -- optional configuration
    })

    -- Open ChatGPT interface
    vim.api.nvim_set_keymap("n", "<leader>cc", "<cmd>ChatGPT<CR>", { noremap = true, silent = true })
    
    -- Edit selected code or text with ChatGPT instructions
    vim.api.nvim_set_keymap("n", "<leader>ce", "<cmd>ChatGPTEditWithInstruction<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("v", "<leader>ce", "<cmd>ChatGPTEditWithInstruction<CR>", { noremap = true, silent = true })
    
    -- Perform grammar correction
    vim.api.nvim_set_keymap("n", "<leader>cg", "<cmd>ChatGPTRun grammar_correction<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("v", "<leader>cg", "<cmd>ChatGPTRun grammar_correction<CR>", { noremap = true, silent = true })
    
    -- Translate selected text
    vim.api.nvim_set_keymap("n", "<leader>ct", "<cmd>ChatGPTRun translate<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("v", "<leader>ct", "<cmd>ChatGPTRun translate<CR>", { noremap = true, silent = true })
    
    -- Extract keywords from the selected text
    vim.api.nvim_set_keymap("n", "<leader>ck", "<cmd>ChatGPTRun keywords<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("v", "<leader>ck", "<cmd>ChatGPTRun keywords<CR>", { noremap = true, silent = true })
    
    -- Generate a docstring for the selected function or code
    vim.api.nvim_set_keymap("n", "<leader>cd", "<cmd>ChatGPTRun docstring<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("v", "<leader>cd", "<cmd>ChatGPTRun docstring<CR>", { noremap = true, silent = true })
    
    -- Add tests to the selected function or code
    vim.api.nvim_set_keymap("n", "<leader>ca", "<cmd>ChatGPTRun add_tests<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("v", "<leader>ca", "<cmd>ChatGPTRun add_tests<CR>", { noremap = true, silent = true })
    
    -- Optimize the selected code
    vim.api.nvim_set_keymap("n", "<leader>co", "<cmd>ChatGPTRun optimize_code<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("v", "<leader>co", "<cmd>ChatGPTRun optimize_code<CR>", { noremap = true, silent = true })
    
    -- Summarize the selected content
    vim.api.nvim_set_keymap("n", "<leader>cs", "<cmd>ChatGPTRun summarize<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("v", "<leader>cs", "<cmd>ChatGPTRun summarize<CR>", { noremap = true, silent = true })
    
    -- Fix bugs in the selected code
    vim.api.nvim_set_keymap("n", "<leader>cf", "<cmd>ChatGPTRun fix_bugs<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("v", "<leader>cf", "<cmd>ChatGPTRun fix_bugs<CR>", { noremap = true, silent = true })
    
    -- Explain the selected code
    vim.api.nvim_set_keymap("n", "<leader>cx", "<cmd>ChatGPTRun explain_code<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("v", "<leader>cx", "<cmd>ChatGPTRun explain_code<CR>", { noremap = true, silent = true })
    
    -- Docstring for the selected code 
    vim.api.nvim_set_keymap("n", "<leader>cd", "<cmd>ChatGPTRun docstring<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("v", "<leader>cd", "<cmd>ChatGPTRun docstring<CR>", { noremap = true, silent = true })


    -- Analyze the readability of the selected code
    vim.api.nvim_set_keymap("n", "<leader>cl", "<cmd>ChatGPTRun code_readability_analysis<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("v", "<leader>cl", "<cmd>ChatGPTRun code_readability_analysis<CR>", { noremap = true, silent = true })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim"
  }
}
