vim.g.mapleader = ' ' --  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.maplocalleader = ' '

require 'options'
require 'keymaps'
require 'lazy-bootstrap'
require 'lazy-plugins'
