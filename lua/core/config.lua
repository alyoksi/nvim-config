local vo = vim.opt


-- vo.clipboard:append "unnamedplus"
vo.lazyredraw = true
vo.number = true
vo.mouse = 'v'
vo.encoding = 'utf-8'
vo.foldmethod='manual'
vo.signcolumn='yes' -- addition column for pointing mistakes


vo.shiftwidth = 4 	--на сколько сдвигать при <<, >>
vo.expandtab  = true	--пробелы вместо \t
vo.softtabstop = 4	--кол-во пробелов tab\backspace
vo.autoindent = true	--автомат. пробелы на новой строке
-- vo.smarttab = true   --хз что делает
vo.smartindent = true	--indent с учетом синтаксиса
vo.shiftround = true	--округление до стобца, кратного shiftwidth
vo.scrolloff = 6	--отступ сверху/снизу курсора

--> Автоматические действия при смене буфера или !e
vo.autoread = true	--внесение изменений в файл извне
vo.autowrite = true	--сохранение файла

--> Встроенный поиск
vo.incsearch = true	--сразу искать, пока пишу
vo.ignorecase = true
vo.smartcase = true	--case-sensitive только если есть заглавная
