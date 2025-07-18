-------------------------------------------------------------------------------
-- Bootstrap lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-------------------------------------------------------------------------------
-- plugins

require("lazy").setup({
  { 'sonph/onehalf',
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/vim")
    end
  },
  { 'nvim-tree/nvim-tree.lua', dependencies = { "nvim-tree/nvim-web-devicons" } },
  { 'sbdchd/neoformat' },
  { 'ojroques/nvim-hardline' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/nvim-cmp' },
  { 'mason-org/mason-lspconfig.nvim', dependencies = {"mason-org/mason.nvim", "neovim/nvim-lspconfig", } },
})

require("nvim-tree").setup {}
require("hardline").setup {}

--require('mason').setup({})
--require('mason-lspconfig').setup({
--  ensure_installed = { 'clangd', 'rust_analyzer', 'lua_ls', 'pyright', 'powershell_es', 'bashls', },
--  handlers = {
--    function(server_name)
--      require('lspconfig')[server_name].setup({})
--    end,
--  }
--})

local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  snippet = {
    expand = function(args)
      -- You need Neovim v0.10 to use vim.snippet
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({}),
})


-------------------------------------------------------------------------------
-- bindings

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set('i', 'jk', '<ESC>')
vim.keymap.set('i', 'kj', '<ESC>')
vim.keymap.set('n', '<leader>n', ':set relativenumber! number!<CR>', { silent = true })
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>j', '<C-W><C-J>')
vim.keymap.set('n', '<leader>k', '<C-W><C-K>')
vim.keymap.set('n', '<leader>h', '<C-W><C-H>')
vim.keymap.set('n', '<leader>l', '<C-W><C-L>')
vim.keymap.set('n', '<leader>i', ':tabprevious<CR>')
vim.keymap.set('n', '<leader>o', ':tabnext<CR>')
vim.keymap.set('n', '<C-K><C-F>', ':Neoformat<CR>')
--lsp
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
vim.keymap.set('n', '<leader>t', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
vim.keymap.set('n', '<leader>g', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

-------------------------------------------------------------------------------
-- settings

vim.wo.number = true
vim.wo.relativenumber = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.encoding = 'utf-8'
vim.opt.listchars = { tab='»·',trail='·',nbsp='·' }
vim.opt.list = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.cursorline = true

if (not vim.g.vscode) then
  vim.o.termguicolors = true
  vim.o.background = 'dark'
  vim.cmd.colorscheme 'onehalfdark'
end

