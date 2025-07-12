# Neovim config
## Plugins
- [Lazy](https://github.com/folke/lazy.nvim) - plugin manager
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) - automatically closes [, (, ', ...
- [barbar](https://github.com/romgrk/barbar.nvim) - buffers like tabs in browser
- LSP setup:
  - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - no need to do all of these autocmd's now :)
  - [mason](https://github.com/williamboman/mason.nvim) and [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim) - installing LS's, DAT's, etc.
  - [cmp](https://github.com/hrsh7th/nvim-cmp) - autocompletion plugin
  - [snippy](https://github.com/dcampos/nvim-snippy) - snippets (using it for comptetite programming, but also needed for cmp)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) - file explorer
- [telescope](https://github.com/nvim-telescope/telescope.nvim) - quick searching for files
- [tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter) - better highlighting
- Themes:
  -  [onedark](https://github.com/navarasu/onedark.nvim)
  -  [gruvbox material](https://github.com/sainnhe/gruvbox-material)
  
## Installing
### Recommendations
1. Download xclip - access to system buffer in neovim
2. Download any [Nerdfont](https://www.nerdfonts.com/)
3. Great article to learn about how LSP works in Neovim: \
   https://dx13.co.uk/articles/2023/04/24/neovim-lsp-without-plugins/

### Install Neovim
1. [Download](https://github.com/neovim/neovim/releases/) latest Neovim tag.gz file
2. Unzip it:
   ```bash
   tar xzvf nvim-linux-x86_64.tar.gz
   ```
4. Create a symlink to binary file in any directory in $PATH
   ```bash
    sudo ln -s nvim-linux-x86_64/bin/nvim /usr/bin
   ```

### How to make clangd work
As far as I know clangd is looking for a compile_commands.json in parent directories, so if you don't have one clangd won't work.
```bash
mkdir -p ~/.config/clangd
echo '[]' > ~/.config/clangd/compile_commands.json

export CLANGD_COMPILE_COMMANDS_DIR=~/.config/clangd
```
