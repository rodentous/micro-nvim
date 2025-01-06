require("config.lazy")

-- Automatically change directory to a location of current file
vim.opt.autochdir = true

-- use catppuccin colors
vim.cmd.colorscheme "catppuccin-frappe"
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

vim.keymap.set('n', '<A-.>', "<cmd>tabnext<CR>", { desc = "Next tab" })
vim.keymap.set('n', '<A-,>', "<cmd>tabprevious<CR>", { desc = "Previous tab" })


vim.keymap.set('i', '<C-s>', "<cmd>w<CR>", { desc = "Save file", noremap = true })
vim.keymap.set('i', '<C-k>', "<cmd>.,.d_<CR>", { desc = "Remove line", noremap = true })
vim.keymap.set('i', '<C-x>', "<C-O>dd", { desc = "Cut line", noremap = true })
vim.keymap.set('i', '<C-c>', "<C-O>yy", { desc = "Copy", noremap = true })
vim.keymap.set('i', '<C-v>', "<C-O>pi", { desc = "Paste", noremap = true })
vim.keymap.set('i', '<C-a>', "<Esc>G$vgg0i", { desc = "Select all", noremap = true })

vim.keymap.set('n', '<BS>', "Xi", { desc = "Backspace", noremap = true })
vim.keymap.set('v', '<BS>', "Xi", { desc = "Backspace", noremap = true })
vim.keymap.set('n', '<Esc>', "i", { desc = "Insert mode", noremap = true })

-- no normal mode
vim.keymap.set('i', '<Esc>', '<nop>')

vim.keymap.set('i', '<C-q>', "<cmd>qa<CR>", { desc = "Quit entierly", noremap = true })
vim.keymap.set('i', '<C-w>', "<cmd>q<CR>", { desc = "Close current file", noremap = true })

vim.keymap.set('i', '<A-.>', "<cmd>tabnext<CR>", { desc = "Next tab", noremap = true })
vim.keymap.set('i', '<A-,>', "<cmd>tabprevious<CR>", { desc = "Previous tab", noremap = true })

vim.keymap.set('i', '<C-b>', "<cmd>terminal<CR>", { desc = "Terminal", noremap = true })


vim.cmd("inoremap <C-Z> <C-O>u")
vim.cmd("inoremap <C-Y> <C-O><C-R>")

vim.opt.keymodel = 'startsel,stopsel'


-- vim.cmd("nnoremap <S-Up> <Esc>v<Up>")
-- vim.cmd("nnoremap <S-Down> <Esc>v<Down>")
-- vim.cmd("nnoremap <S-Left> <Esc>v<Left>")
-- vim.cmd("nnoremap <S-Right> <Esc>v<Right>")
--
-- vim.cmd("vnoremap <S-Up> <Esc>v<Up>")
-- vim.cmd("vnoremap <S-Down> <Esc>v<Down>")
-- vim.cmd("vnoremap <S-Left> <Esc>v<Left>")
-- vim.cmd("vnoremap <S-Right> <Esc>v<Right>")
--
-- vim.cmd("inoremap <S-Up> <Esc>v<Up>")
-- vim.cmd("inoremap <S-Down> <Esc>v<Down>")
-- vim.cmd("inoremap <S-Left> <Esc>v<Left>")
-- vim.cmd("inoremap <S-Right> <Esc>v<Right>")

-- vim.keymap.set('i', '<C-z>', "<C-O><cmd>undo<CR>", { desc = "Undo", noremap = true })
-- vim.keymap.set('i', '<C-Z>', "<C-O><cmd>redo<CR>", { desc = "Redo", noremap = true })
-- vim.keymap.set('i', '<C-y>', "<C-O><cmd>redo<CR>", { desc = "Redo", noremap = true })
--
vim.keymap.set('i', '<C-d>', "<cmd>co.<CR>", { desc = "Duplicate line down", noremap = true })

