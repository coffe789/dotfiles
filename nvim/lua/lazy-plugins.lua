-- [[ Configure and install plugins ]]
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).

  {'tpope/vim-sleuth'},                   -- Detect tabstop and shiftwidth automatically
  { 'numToStr/Comment.nvim', opts = {} }, -- `gc` to comment visual regions/lines
  require 'custom/plugins/gitsigns',      -- Show which lines have changed on git
  require 'custom/plugins/telescope',     -- Search
  require 'custom/plugins/lspconfig',     -- LSP
  require 'custom/plugins/cmp',           -- Completion
  require 'custom/plugins/tokyonight',    -- Colors
  require 'custom/plugins/todo-comments', -- TODO comments glow and can be searched for
  require 'custom/plugins/mini',          -- `vib` instead of `vi(`, statusline
  require 'custom/plugins/treesitter',    -- Make use of LSP (Highlight, edit, and navigate code)
  require 'custom.plugins.indent_line',   -- Blank lines are visible
  -- require 'custom.plugins.autopairs',  -- Automatically complete brackets, quotes, etc..
  require 'custom.plugins.neo-tree',      -- View file tree
  require 'custom.plugins.auto-session',  -- Remember stuff
  require 'custom.plugins.cokeline',      -- Buffers are visible at top of screen
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
