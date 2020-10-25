" auto-install vim-plug
"if empty(glob('~/.config/nvim/autoload/plug.vim'))
"  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
"    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"  "autocmd VimEnter * PlugInstall
"  autocmd VimEnter * PlugInstall | source $MYVIMRC
"endif

call plug#begin('~/.config/nvim/autoload/plugged')
" Completion and Synthax
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
"Gui stuff
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/vim-which-key'
Plug 'junegunn/goyo.vim'
" Editting
Plug 'RRethy/vim-illuminate'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim'
" Extra
Plug 'alvan/vim-closetag'
Plug 'scrooloose/nerdtree'
Plug 'machakann/vim-highlightedyank'
Plug 'voldikss/vim-floaterm'
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" Misc
Plug 'tpope/vim-commentary'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'liuchengxu/vim-clap'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
Plug 'liuchengxu/vim-clap', { 'do': { -> clap#installer#force_download() } }
Plug 'liuchengxu/vim-clap', { 'do': has('win32') ? 'cargo build --release' : 'make' }
" Colorscheme
Plug 'adigitoleo/vim-mellow' "light and dark theme pretty plain
Plug 'khadegd/vim-isaac-theme'
Plug 'jsit/toast.vim'
" Plain
Plug 'axvr/photon.vim'
Plug 'cideM/yui'
Plug 'jeffkreeftmeijer/vim-dim'
" Dark
Plug 'nerdypepper/agila.vim'
Plug 'junegunn/seoul256.vim' 
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'herrbischoff/cobalt2.vim'
" Dark colorful
Plug 'joshdick/onedark.vim'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'ghifarit53/sonokai'
Plug 'rakr/vim-colors-rakr'
" Outrun/Cyber
Plug 'ghifarit53/tokyonight-vim'
Plug 'ntk148v/vim-horizon'
Plug 'ghifarit53/daycula-vim' , {'branch' : 'main'}
Plug 'embark-theme/vim', { 'as': 'embark' }
" Light
Plug 'habamax/vim-polar'
Plug 'lifepillar/vim-wwdc17-theme'
"Live Scratchpad
Plug 'metakirby5/codi.vim'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

