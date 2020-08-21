" To install vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" Reload .vimrc and :PlugInstall to install plugins.


call plug#begin('~/.vim/plugged')

""" Utility
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" NERD Commenter (code comment)
Plug 'preservim/nerdcommenter'
" Text Navigation
Plug 'easymotion/vim-easymotion'
" Undo History Visualizer
Plug 'mbbill/undotree'
" Statusline/Tabline plugin
Plug 'itchyny/lightline.vim'
"Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
" Unix shell command
" Plug 'tpope/vim-eunuch'
" Completion tool for HTML, CSS & JAVASCRIPT
Plug 'mattn/emmet-vim'
" EditorConfig
Plug 'editorconfig/editorconfig-vim'
" Fuzzy Finder(similar to GOTO)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Quoting/Parenthesizing
Plug 'tpope/vim-surround'
" Cursor
Plug 'terryma/vim-multiple-cursors'
" CSS & SCSS
Plug 'cakebaker/scss-syntax.vim'
" Preview css color in editor
Plug 'ap/vim-css-color'
" Javascript support
Plug 'pangloss/vim-javascript'
" TypeScript support
Plug 'leafgarland/typescript-vim'
" React support
Plug 'maxmellon/vim-jsx-pretty'
" Time tracking
"Plug 'wakatime/vim-wakatime'
" Phpcomplete.vim(Improved PHP omni-completion)
Plug 'shawncplus/phpcomplete.vim'
" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" Twig syntax highlights
Plug 'lumiliet/vim-twig'

" Auto-Complete
function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction

Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

" Django
Plug 'tweekmonster/django-plus.vim'
" Asynchronous Lint Engine(ALE)
Plug 'w0rp/ale'


" Snipplets
" Plug 'SirVer/ultisnips'
" Snipplets list
" Plug 'honza/vim-snippets'

" ColorScheme
" Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

call plug#end()

"delc PlugUpgrade
"filetype plugin indent on
