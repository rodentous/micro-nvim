require("config.lazy")

-- Automatically change directory to a location of current file
vim.opt.autochdir = true

-- use catppuccin colors
vim.cmd.colorscheme "catppuccin-mocha"
vim.cmd.cnoreabbrev "qq qa!"

-- <Tab> = 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- don't use relative line numbers
vim.opt.number = true
vim.opt.relativenumber = false

-- don't wrap lines
vim.opt.wrap = false

-- sync with system clipboard
vim.opt.clipboard = "unnamedplus"

-- open all command line arguments in separate tabs
vim.cmd("tab all")

require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          maxLineLength = 100
        }
      }
    }
  }
}

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

--- MICRO CONFIGURATION ---

-- Auto insert
vim.cmd("startinsert")

-- no normal mode
vim.keymap.set('i', '<Esc>', '<nop>')

vim.keymap.set('n', '<A-.>', "<cmd>tabnext<CR>", { desc = "Next tab" })
vim.keymap.set('n', '<A-,>', "<cmd>tabprevious<CR>", { desc = "Previous tab" })

vim.keymap.set('i', '<C-s>', "<cmd>w<CR>", { desc = "Save file", noremap = true })
vim.keymap.set('i', '<C-k>', "<cmd>.,.d_<CR>", { desc = "Remove line", noremap = true })
vim.keymap.set('i', '<C-x>', "<C-O>dd", { desc = "Cut line", noremap = true })
vim.keymap.set('v', '<C-x>', "xi", { desc = "Cut", noremap = true })
vim.keymap.set('v', '<C-c>', "yi", { desc = "Copy", noremap = true })
vim.keymap.set('i', '<C-c>', "<C-O>yy", { desc = "Copy", noremap = true })
vim.keymap.set('i', '<C-v>', "<C-O>pi", { desc = "Paste", noremap = true })
vim.keymap.set('i', '<C-a>', "<C-O>G$vgg0i", { desc = "Select all", noremap = true })

-- Doesn't work. idk why
vim.keymap.set('i', '<C-_>', "<C-O>gcc", { desc = "Comment", noremap = true })
vim.keymap.set('v', '<C-_>', "<C-O>gc", { desc = "Comment", noremap = true })

vim.keymap.set('i', '\b', "<C-O>db<C-O>x", { desc = "Delete word", noremap = true })
vim.keymap.set('i', '<C-Del>', "<C-O>dw", { desc = "Delete word to the right", noremap = true })


vim.keymap.set('n', '<BS>', "Xi", { desc = "Backspace", noremap = true })
vim.keymap.set('v', '<BS>', "Xi", { desc = "Backspace", noremap = true })
vim.keymap.set('n', '<Esc>', "i", { desc = "Insert mode", noremap = true })

vim.keymap.set({'i', 'n'}, '<C-q>', "<cmd>qa!<CR>", { desc = "Quit entierly", noremap = true })
vim.keymap.set({'i', 'n'}, '<C-w>', "<cmd>q!<CR>", { desc = "Close current file", noremap = true })

vim.keymap.set('i', '<A-.>', "<cmd>tabnext<CR>", { desc = "Next tab", noremap = true })
vim.keymap.set('i', '<A-,>', "<cmd>tabprevious<CR>", { desc = "Previous tab", noremap = true })

vim.keymap.set('i', '<C-b>', "<cmd>tab terminal<CR>", { desc = "Terminal", noremap = true })
vim.keymap.set('i', '<C-e>', "<C-O>:", { desc = "Internal command prompt", noremap = true })


vim.cmd("inoremap <C-Z> <C-O>u")
vim.cmd("inoremap <C-Y> <C-O><C-R>")

vim.opt.keymodel = 'startsel,stopsel'


vim.keymap.set('i', '<C-d>', "<cmd>co.<CR>", { desc = "Duplicate line down", noremap = true })

