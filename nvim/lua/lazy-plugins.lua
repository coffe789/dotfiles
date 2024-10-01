-- [[ Configure and install plugins ]]
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  require 'custom/plugins/gitsigns',
  require 'custom/plugins/which-key',
  require 'custom/plugins/telescope',
  require 'custom/plugins/lspconfig',
  -- require 'custom/plugins/conform',
  require 'custom/plugins/cmp',
  require 'custom/plugins/tokyonight',
  require 'custom/plugins/todo-comments',
  require 'custom/plugins/mini',
  require 'custom/plugins/treesitter',
  require 'custom.plugins.debug',
  require 'custom.plugins.indent_line',
  -- require 'custom.plugins.lint',
  require 'custom.plugins.autopairs',
  require 'custom.plugins.neo-tree',
  require 'custom.plugins.auto-session',
  -- require 'custom.plugins.bufferline',
}, {
  ui = {
    icons = {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
