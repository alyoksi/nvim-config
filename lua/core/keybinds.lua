--noremap: если команда "что-то <Esc>" то "<Esc>" не выполнится
--silent: игнорирование какого-либо вывода

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local modes = {'n', 'i', 'v', 'c', 'o', 'x', 's', 't', 'l'}

--> Зачем мне :help на F1??
map(modes, '<F1>', '<Nop>', opts)

--> На <Esc> удаляется подсветка поиска
map('n', '<Esc>', ':nohlsearch<CR>', { noremap = true, silent = true })

map('n', '<Leader>b', ':bNext<CR>', { noremap = true, silent = true }) --на след. буфер
map('n', '<Leader>a', 'ggVG', { noremap = true, silent = true }) --выделить все
map('v', '<Leader>y', ':%y+ <CR>', { noremap = true, silent = true }) --скопировать в сист. буфер выделенное


--> Telescope
map('n', '<leader>ff', ':Telescope find_files <CR>', { desc = 'Telescope find files' })
map('n', '<leader>fg', ':Telescope live_grep <CR>', { desc = 'Telescope live grep' })
--<


--> Barbar
-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)

-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)

--Open Nvim-tree
map(modes, '<Leader>t', '<Esc> :NvimTreeToggle <CR>', opts)

--> Для CP
local function bindCompilationAndRun()
  local filetype = vim.bo.filetype --filetype для тек. буфера

  if filetype == "cpp" then
    comp_cmd = '<Esc> :w <CR> :terminal g++ -fsanitize=address -ftrapv -std=c++17 -Wall -Wextra -Wshadow -O2 -DLOCAL -o %:r % && ./%:r <CR>'
    vim.keymap.set('n', '<Leader>c', comp_cmd, { noremap = true, silent = true })
    vim.keymap.set('n', '<Leader>r', '<Esc> :w <CR> :terminal ./%:r <CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<Leader>i', '<Esc> :w <CR> :terminal ./%:r < input.in <CR>', { noremap = true, silent = true })
  elseif filetype == "python" then
    vim.keymap.set('n', '<Leader>c', '<Esc> :w <CR> :terminal python3 ./% <CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<Leader>i', '<Esc> :w <CR> :terminal python3 ./% < input.in <CR>', { noremap = true, silent = true })
  end
end

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter", "FileType"}, {
  pattern = {"*.cpp", "*.py"},
  callback = bindCompilationAndRun,
  desc = "Запуска cpp/python файла"
})
--<
