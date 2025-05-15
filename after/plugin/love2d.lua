-- Run only when a Lua file is opened
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    -- Safe require
    local ok, love2d = pcall(require, "love2d")
    if not ok then
      return -- Plugin not loaded yet
    end

    -- Setup plugin (only once)
    if not vim.g._love2d_setup_done then
      love2d.setup({})
      vim.g._love2d_setup_done = true
    end

    -- Keymaps for LÖVE
    vim.keymap.set("n", "<leader>v", "<Nop>", { desc = "LÖVE" })
    vim.keymap.set("n", "<leader>vv", "<cmd>LoveRun<CR>", { desc = "Run LÖVE", buffer = true })
    vim.keymap.set("n", "<leader>vs", "<cmd>LoveStop<CR>", { desc = "Stop LÖVE", buffer = true })
  end,
})
