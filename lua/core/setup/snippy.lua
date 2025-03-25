require('snippy').setup({
    scopes ={
        cpp = { 'cpp' },
    },
    mappings = {
        is = {
            ['<Tab>'] = 'expand_or_advance',
            ['<S-Tab>'] = 'previous',
        },
        nx = {
            ['<leader>x'] = 'cut_text',
        },
    },
})

require 'cmp'.setup {
  snippet = {
    expand = function(args)
      require 'snippy'.expand_snippet(args.body)
    end
  },

  sources = {
    { name = 'snippy' }
  }
}
