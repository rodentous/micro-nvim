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

-- case-insensitive search
vim.opt.ignorecase = true

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

-- no normal mode
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set({'i', 'n'}, '<Esc>', '<cmd>nohlsearch<CR>', { noremap = true })

--- MICRO CONFIGURATION ---

-- Auto insert
vim.cmd("startinsert")

vim.keymap.set('i', '<C-s>', "<cmd>w<CR>", { desc = "Save file", noremap = true })
vim.keymap.set('i', '<C-k>', '<C-O>"_dd', { desc = "Remove line", noremap = true })
vim.keymap.set('s', '<C-k>', '<C-G>"_dd', { desc = "Remove line", noremap = true })
vim.keymap.set('i', '<C-x>', "<C-O>dd", { desc = "Cut line", noremap = true })
vim.keymap.set('v', '<C-x>', "x", { desc = "Cut", noremap = true })
vim.keymap.set('v', '<C-c>', "y", { desc = "Copy", noremap = true })
vim.keymap.set('v', '<C-v>', '"_xp', { desc = "Paste", noremap = true })
vim.keymap.set('i', '<C-c>', "<C-O>yy", { desc = "Copy", noremap = true })
vim.keymap.set('i', '<C-v>', "<C-O>p", { desc = "Paste", noremap = true })
vim.keymap.set('i', '<C-a>', "<C-O>G<C-O>$<C-O>vgg0i", { desc = "Select all", noremap = true })

vim.keymap.set('i', '<C-f>', "<C-O>/", { desc = "Find", noremap = true })
vim.keymap.set('i', '<C-o>', "<C-O>:tabedit ", { desc = "Open", noremap = true })
vim.keymap.set('i', '<C-A-O>', "<C-O>", { desc = "Temporarily use normal mode", noremap = true })


vim.keymap.set('i', '<C-S-Up>', "<cmd>m -2<CR>", { desc = "Move line up", noremap = true })
-- vim.keymap.set('s', '<C-S-Up>', "<C-G>dkP`[V`]", { desc = "Move line up", noremap = true })
vim.keymap.set('i', '<C-S-Down>', "<cmd>m +1<CR>", { desc = "Move line down", noremap = true })
-- vim.keymap.set('s', '<C-S-Down>', "<C-G>dp`[V`]", { desc = "Move line up", noremap = true })
vim.keymap.set('i', '<A-Up>', "<cmd>m -2<CR>", { desc = "Move line up", noremap = true })
vim.keymap.set('i', '<A-Down>', "<cmd>m +1<CR>", { desc = "Move line down", noremap = true })
vim.keymap.set('i', '<A-Left>', "<C-O>0", { desc = "Move to the beginning of the current line", noremap = true })
vim.keymap.set('i', '<A-Right>', "<C-O>$", { desc = "Move to the end of the current line", noremap = true })


vim.keymap.set('i', '<C-_>', "<C-A-O>gcc", { desc = "Comment", remap = true })
vim.keymap.set('s', '<C-_>', "<C-G>gc", { desc = "Comment selection", remap = true })
vim.keymap.set('v', '<C-_>', "gc", { desc = "Comment selection", remap = true })


vim.keymap.set('v', '<Tab>', "<C-O>>", { desc = "Indent seletion", noremap = true })
vim.keymap.set({'v', 'i'}, '<S-Tab>', "<C-O><", { desc = "Unindent seletion", noremap = true })

vim.keymap.set('i', '\b', '<C-\\><C-O>"_db', { desc = "Delete word", noremap = true })
vim.keymap.set('i', '<C-Del>', '<C-\\><C-A-O>"_dw', { desc = "Delete word to the right", noremap = true })

vim.keymap.set('n', '<BS>', '"_X', { desc = "Backspace", noremap = true })
vim.keymap.set('v', '<BS>', '"_x', { desc = "Backspace", noremap = true })
vim.keymap.set('n', '<Esc>', "i", { desc = "Insert mode", noremap = true })

vim.keymap.set({'i', 'n'}, '<C-q>', "<cmd>qa!<CR>", { desc = "Quit entierly", noremap = true })
vim.keymap.set({'i', 'n'}, '<C-w>', "<cmd>q!<CR>", { desc = "Close current file", noremap = true })

vim.keymap.set('i', '<A-.>', "<cmd>tabnext<CR>", { desc = "Next tab", noremap = true })
vim.keymap.set('i', '<A-,>', "<cmd>tabprevious<CR>", { desc = "Previous tab", noremap = true })

vim.keymap.set('i', '<C-b>', "<cmd>tab terminal<CR>", { desc = "Terminal", noremap = true })
vim.keymap.set('i', '<C-e>', "<C-O>:", { desc = "Internal command prompt", noremap = true })

vim.keymap.set({'i', 'v', 's'}, '<C-z>', "<cmd>undo<CR>", { desc = "Undo", noremap = true })
vim.keymap.set({'i', 'v', 's'}, '<C-S-z>', "<cmd>redo<CR>", { desc = "Redo", noremap = true })
vim.keymap.set({'i', 'v', 's'}, '<C-y>', "<cmd>redo<CR>", { desc = "Redo", noremap = true })

vim.opt.keymodel = 'startsel,stopsel'
vim.opt.selectmode = 'mouse,key'
vim.opt.showmode = true

vim.cmd("xnoremap <C-S-Up> dkP`[V`]")
vim.cmd("xnoremap <C-S-Down> dp`[V`]")

vim.keymap.set('i', '<C-d>', "<cmd>co.<CR>", { desc = "Duplicate line up", noremap = true })
-- vim.keymap.set('s', '<C-d>', "<C-G>:y<CR>'>gP']", { desc = "Duplicate lines up", noremap = true })
vim.keymap.set('s', '<C-d>', "<C-G>XgPgPi", { desc = "Duplicate lines up", noremap = true })

