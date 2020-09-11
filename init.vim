let mapleader = "\<Space>"
set shell=/bin/zsh
source $HOME/.config/nvim/coc.vim

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
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'ryanoasis/vim-devicons'
" Editting
Plug 'RRethy/vim-illuminate'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
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
" Colorscheme
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'haishanh/night-owl.vim'
Plug 'ntk148v/vim-horizon'
Plug 'tomasiser/vim-code-dark'
"Live Scratchpad
Plug 'metakirby5/codi.vim'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

" True color support
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
"------------------------------------------------------------------------------
" Better whitespaces
"------------------------------------------------------------------------------
" Set list
" Show tabs as __ / Trails as / End of line as
"highlight SpecialKey ctermfg=12 guifg=DimGrey
highlight SpecialKey ctermfg=14 guifg=Yellow
let g:better_whitespace_enabled=0
set list
set listchars=tab:┊\ ,nbsp:␣,trail:·,extends:>,precedes:<
"------------------------------------------------------------------------------
" Colorscheme
"------------------------------------------------------------------------------
set termguicolors
let g:material_terminal_italics = 1
let g:material_theme_style = 'palenight'
let g:material_theme_terminal_italics=1
colorscheme material
set background=dark
"------------------------------------------------------------------------------
" Closetag
"------------------------------------------------------------------------------
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'
let g:closetag_filetypes = 'html,xhtml,phtml,javascript'
"------------------------------------------------------------------------------
" Colorizer
"------------------------------------------------------------------------------
lua require'colorizer'.setup()
"------------------------------------------------------------------------------
"NERDTree
"------------------------------------------------------------------------------
nmap <C-n> :NERDTreeToggle<CR>
"------------------------------------------------------------------------------
"Illuminate
"------------------------------------------------------------------------------
let g:Illuminate_ftblacklist = ['javascript', 'jsx', 'html']
"------------------------------------------------------------------------------
"Indent line
"------------------------------------------------------------------------------
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#FF0'
"------------------------------------------------------------------------------
" Vim Markdown
"------------------------------------------------------------------------------
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Firefox'
"------------------------------------------------------------------------------
" Git Gutter
"------------------------------------------------------------------------------
let g:gitgutter_enabled = 1

highlight GitGutterAdd    guifg=#37bd58 ctermfg=2
highlight GitGutterChange guifg=#199ffd ctermfg=3
highlight GitGutterDelete guifg=#fc4a6d ctermfg=1
"------------------------------------------------------------------------------
" FZF
"------------------------------------------------------------------------------
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_buffers_jump = 0

map <leader>p :Files<CR>
nnoremap <C-g> :GFiles<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>

nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>

let g:fzf_tags_command = 'ctags -R'

"let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }
"let $FZF_DEFAULT_OPTS="--reverse "                      " top to bottom

let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'"
"-g '!{node_modules,.git}'

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--inline-info']}), <bang>0)


" Get text in files with Rg
" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   "rg --column --line-number --no-heading --color=always --smart-case --glob '!.git/**' ".shellescape(<q-args>), 1,

 " Make Ripgrep ONLY search file contents and not filenames
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --hidden --smart-case --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4.. -e'}, 'right:50%', '?'),
  \   <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

nnoremap <C-f> :Rg!

"------------------------------------------------------------------------------
" Defaults
"------------------------------------------------------------------------------
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
"set laststatus=2                        " Always display the status line
set number                              " Line numbers
set relativenumber
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc#refresh
set nowritebackup                       " This is recommended by coc
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set clipboard=unnamedplus               " Copy paste between vim and everything else
set colorcolumn=80                      " and give me a colored column
highlight ColorColumn ctermbg=0 guibg=lightred
set incsearch
set guifont=Operator\ Mono\
" Very magic by default
" nnoremap ? ?\v
" nnoremap / /\v
" cnoremap %s/ %sm/

" No arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Left and right can switch buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>
nnoremap <C-k> :bdelete<CR>
" Reload config
nnoremap <C-s> :source %<cr>

" Better splits
set splitbelow
set splitright
"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Code folding
set foldmethod=indent
set foldnestmax=10
"set nofoldenable
set foldlevel=2

" Ugh
:command! WQ wq
:command! Wq wq
:command! Wqa wqa
:command! W w
:command! Q q

" YEAH
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap X "_d

" Replace current word with last yanked test
nnoremap S diw"0P
