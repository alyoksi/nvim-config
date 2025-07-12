require("mason").setup()
require("mason-lspconfig").setup()

-- installing LS's
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "clangd", "rust_analyzer"},
}

-- enabling lua LS
--require("lspconfig").lua_ls.setup {}


require('core.setup.snippy')
require('core.setup.nvim_cmp')

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  -- Hover documentation
  vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, opts)
  -- Go to definition
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  -- Go to declaration
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  -- Rename symbol
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  -- Open diagnostics float
  vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
end


-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').lua_ls.setup {
    capabilities = capabilities,
    on_attach=on_attach,
}

require('lspconfig').rust_analyzer.setup {
    capabilities = capabilities,
    on_attach=on_attach,
}

require('lspconfig').clangd.setup({
    cmd = {
        'clangd',
        '--background-index',
        '--clang-tidy',
        '--fallback-style=Google',
        '--compile-commands-dir=build'
    },
    filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
    init_options = {
        fallbackFlags = { '-std=c++17',
            "-I/usr/include/c++/11",
            "-I/usr/include/x86_64-linux-gnu/c++/11",
        },
    },

    capabilities = capabilities,
    on_attach=on_attach,
})
