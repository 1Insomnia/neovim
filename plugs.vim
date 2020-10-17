" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

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
Plug 'luochen1990/rainbow'
" Editting
Plug 'RRethy/vim-illuminate'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim'
" Extra
Plug 'alvan/vim-closetag'
Plug 'scrooloose/nerdtree'
Plug 'machakann/vim-highlightedyank'
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
" Dark
Plug 'tomasiser/vim-code-dark'
Plug 'herrbischoff/cobalt2.vim'
Plug 'liuchengxu/space-vim-dark'
" Dark colorful
Plug 'joshdick/onedark.vim'
Plug 'nerdypepper/agila.vim'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'aonemd/kuroi.vim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'fenetikm/falcon'
Plug 'Rigellute/rigel'
Plug 'koirand/tokyo-metro.vim'
" Outrun/Cyber
Plug 'ghifarit53/tokyonight-vim'
Plug 'ntk148v/vim-horizon'
Plug 'yuttie/hydrangea-vim'
"Light Plain
Plug 'logico/typewriter-vim'
Plug 'thenewvu/vim-colors-sketching'
"Light colorful
Plug 'schickele/vim-fruchtig'
Plug 'NLKNguyen/papercolor-theme'
Plug 'michaelmalick/vim-colors-bluedrake'
Plug 'yasukotelin/shirotelin'
Plug 'arzg/vim-colors-xcode'
Plug 'chmllr/elrodeo-vim-colorscheme'
Plug 'fabi1cazenave/kalahari.vim' "best light colorscheme so far
" Plug 'https://gitlab.com/yorickpeterse/vim-paper.git'
Plug 'equt/paper.vim'
Plug 'meain/hima-vim' "Really cool light theme bundle with dark one
"Live Scratchpad
Plug 'metakirby5/codi.vim'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

