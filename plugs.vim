" ░█▀█░█░░░█░█░█▀▀░█▀▀░░░█▀▀░█▀█░█▀█░█▀▀░▀█▀░█▀▀
" ░█▀▀░█░░░█░█░█░█░▀▀█░░░█░░░█░█░█░█░█▀▀░░█░░█░█
" ░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░░░▀▀▀░▀▀▀░▀░▀░▀░░░▀▀▀░▀▀▀

"" auto-install vim-plug {{{
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
""}}}

call plug#begin('~/.config/nvim/autoload/plugged')
" vim plug {{{{{{{{{
" Completion and Synthax {{{
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'maxmellon/vim-jsx-pretty', {'as': 'vim-syntax-jsx', 'for': ['javascriptreact']}
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim'
"}}}

" Editting
Plug 'RRethy/vim-illuminate'
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-expand-region'

" Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'machakann/vim-highlightedyank'

" Redifine some words TODO Some problems with hex values tho
Plug 'chaoren/vim-wordmotion'

" Easy comments
Plug 'tpope/vim-commentary'

" Extra
Plug 'alvan/vim-closetag'
Plug 'scrooloose/nerdtree'
Plug 'voldikss/vim-floaterm'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git {{{
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'sodapopcan/vim-twiggy'
"}}}

" Gui stuff {{{
" Status Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ryanoasis/vim-devicons'

" Focus Mode
Plug 'junegunn/goyo.vim'

" Colorschemes {{{
Plug 'jsit/toast.vim'

Plug 'fcpg/vim-orbital'
Plug 'nerdypepper/agila.vim'
Plug 'junegunn/seoul256.vim' 
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'herrbischoff/cobalt2.vim'
Plug 'joshdick/onedark.vim'
Plug 'ghifarit53/sonokai'
Plug 'rakr/vim-colors-rakr'

Plug 'ghifarit53/tokyonight-vim'
Plug 'ghifarit53/daycula-vim' , {'branch' : 'main'}

Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/forest-night'
Plug 'sainnhe/edge'
" Colorschemes }}}

" Gui Stuff }}}

"Live Scratchpad
Plug 'metakirby5/codi.vim'
Plug 'roman/golden-ratio'

" SO GOOD
Plug 'pechorin/any-jump.vim'

" Misc
Plug 'norcalli/nvim-colorizer.lua'
Plug 'liuchengxu/vim-which-key'
" Vim plug}}}}}}}}}
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

