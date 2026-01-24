vim.api.nvim_create_augroup("waybar_config", {})
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  group = "waybar_config",
  pattern = { "*waybar/config.jsonc", "*waybar/style.css" },
  callback = function()
    vim.fn.jobstart("killall waybar; waybar & disown", {
      detach = true,
    })
  end,
})

vim.api.nvim_create_augroup("mako_config", {})
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  group = "mako_config",
  pattern = { "*mako/config" },
  callback = function()
    vim.fn.jobstart("makoctl reload", {
      detach = true,
    })
  end,
})

vim.api.nvim_create_augroup("markdown_settings", {})
vim.api.nvim_create_autocmd({ "FileType" }, {
  group = "markdown_settings",
  pattern = { "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
  end,
})
