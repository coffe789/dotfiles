return {
  {
    "EdenEast/nightfox.nvim",
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme 'nightfox'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
