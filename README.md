# Neovim config
## Plugins
- [Lazy](https://github.com/folke/lazy.nvim) - plugin manager
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) - automatically closes [, (, ', ...
- [barbar](https://github.com/romgrk/barbar.nvim) - buffers like tab in browser
- LSP setup:
  - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - no need to do all of these autocmd's not :)
  - [mason](https://github.com/williamboman/mason.nvim) and [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim) - installing LS, DAT's, etc.
  - [cmp](https://github.com/hrsh7th/nvim-cmp) - autocompletion plugin
  - [snippy](https://github.com/dcampos/nvim-snippy) - snippets (use for comptetite programming, but also needed for cmp)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) - file explorer
- [telescope](https://github.com/nvim-telescope/telescope.nvim) - quick searching for files
- Themes:
  -  [onedark](https://github.com/navarasu/onedark.nvim)
  - [kanagawa](https://github.com/rebelot/kanagawa.nvim?tab=readme-ov-file) - the one I use
  
## Installing
### Recommendations
1. Download xclip - access to system buffer in neovim
2. Download any [Nerdfont](https://www.nerdfonts.com/)

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
As far as I know clangd is looking for a compile_commands.json in parent directories, so if you don't have one clangd won't work. But we have a solution!
```bash
mkdir -p ~/.config/clangd
echo '[]' > ~/.config/clangd/compile_commands.json

export CLANGD_COMPILE_COMMANDS_DIR=~/.config/clangd
```

## Directories structure
![image](https://github.com/user-attachments/assets/1f45bab0-968c-4b6a-9c30-4f2ea3748955)
