# clarity_syntax_vim
<em>Clarity syntax highlighting and some handy commands</em>

![shot1](https://user-images.githubusercontent.com/99462537/236886827-b892a91d-62db-4d40-a062-cea4856c8a3c.png)

## Commands
| command | task |
|---------|------|
| `gd`      | go to the definition of the current word |
| `:ClarinetCheck` | check syntax ( requires [Clarinet](https://github.com/hirosystems/clarinet) ) |
## Installation
### Plug
Add this to vim-plug section of your `.vimrc` ( `stdpath('config') . '/init.vim'` for Neovim) then do a `:PlugInstall`
```vim
Plug 'Shifta-Robel/clarity_syntax_vim'
```
### Vundle
```vim
Plugin 'Shifta-Robel/clarity_syntax_vim'
```
### Pathogen
```bash
git clone https://github.com/shifta-robel/clarity_syntax_vim ~/.vim/bundle/clarity_syntax_vim
```
