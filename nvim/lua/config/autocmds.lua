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

vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
