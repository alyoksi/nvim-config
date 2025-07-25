return {
    'neovim/nvim-lspconfig',
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',

    'dcampos/nvim-snippy',
    'dcampos/cmp-snippy',
    {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"}
}
