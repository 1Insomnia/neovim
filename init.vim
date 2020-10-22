let mapleader = "\<Space>"
set shell=/bin/zsh
source $HOME/.config/nvim/coc.vim 
source $HOME/.config/nvim/plugs.vim

" general settings
set nobackup
set nowritebackup
set noswapfile
set dir=/tmp
"------------------------------------------------------------------------------
" Colorslut
"------------------------------------------------------------------------------
" let g:material_terminal_italics = 1
" let g:material_theme_style = 'default'
" let g:material_theme_terminal_italics=1
" let g:tokyonight_style = 'storm' " available: night, storm
" let g:tokyonight_enable_italic = 1
" let g:daycula_enable_italic = 1
" let g:daycula_current_word = 'underline'
" let g:sonokai_style = 'espresso'
" let g:sonokai_enable_italic = 1
"colorscheme kalahari "best light colortheme so far
" augroup colorscheme_change | au!
"     au ColorScheme polar hi Comment gui=italic cterm=italic
"     au ColorScheme polar hi Statement gui=italic cterm=italic
" augroup END

" augroup colorscheme_change | au!
"     au ColorScheme plain hi Comment gui=italic cterm=italic
"     au ColorScheme plain hi Statement guifg=#0098dd gui=italic cterm=italic
"     au ColorScheme plain hi String guifg=#c5a332 gui=italic cterm=italic 
" augroup END
set termguicolors
colo plainloco
let g:airline_theme="atomic"
set background=dark
"------------------------------------------------------------------------------
" Float Term
"------------------------------------------------------------------------------
let g:clap_theme = { 'search_text': {'guifg': 'green', 'ctermfg': 'red'} }
autocmd FileType clap_input inoremap <silent> <buffer> <Esc> <Esc>:call clap#handler#exit()<CR>
"------------------------------------------------------------------------------
" Float Term
"------------------------------------------------------------------------------
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
"------------------------------------------------------------------------------
" Bracket pair colorizer
"------------------------------------------------------------------------------
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
"------------------------------------------------------------------------------
" Better whitespaces
"------------------------------------------------------------------------------
set list
set fillchars=vert:\│
" set listchars=tab:-▸,eol:↲,extends:»,precedes:«,space:•
set listchars=tab:┊\ ,nbsp:␣,space:•,extends:>,precedes:<,trail:•
"------------------------------------------------------------------------------
" Markdown
"------------------------------------------------------------------------------
" disable header folding
let g:vim_markdown_folding_disabled = 1
" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0
" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1
" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format
" Pandoc syntax
augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END
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
set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>
nmap <C-n> :NERDTreeToggle<CR>
"------------------------------------------------------------------------------
"Illuminate
"------------------------------------------------------------------------------
let g:Illuminate_ftblacklist = ['javascript', 'jsx', 'html']
"------------------------------------------------------------------------------
"Indenting
"------------------------------------------------------------------------------
augroup plaintext
    autocmd!
    autocmd FileType text setlocal ts=2 sts=2 sw=2 expandtab textwidth=80 colorscheme
augroup END

augroup webdev
    autocmd!
    autocmd FileType less,css,html,js?,ts? setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType less,css,html nnoremap <Leader>s viB:sort<cr>
augroup END

augroup restorecursor
    autocmd BufReadPost *
                \ if line("'\"") > 1 && line("'\"") <= line("$") |
                \   execute "normal! g`\"" |
                \ endif
augroup END
"------------------------------------------------------------------------------
"Indent line
"------------------------------------------------------------------------------
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#565e6e'
let g:indentLine_setColors = 1
"------------------------------------------------------------------------------
" Git Gutter
"------------------------------------------------------------------------------
let g:gitgutter_enabled = 1

highlight GitGutterAdd    guifg=#37bd58 ctermfg=2
highlight GitGutterChange guifg=#199ffd ctermfg=3
highlight GitGutterDelete guifg=#fc4a6d ctermfg=1

let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_sign_added                     = '+'
let g:gitgutter_sign_modified                  = '±'
let g:gitgutter_sign_removed                   = '-'
let g:gitgutter_sign_removed_first_line        = '×'
let g:gitgutter_sign_modified_removed          = '×'
"------------------------------------------------------------------------------
" NERDTree
"------------------------------------------------------------------------------
let g:NERDTreeMinimalUI           = 1
let g:NERDTreeWinPos              = 'left'
let g:NERDTreeWinSize             = 20
let g:NERDTreeStatusline          = "  "
let g:NERDTreeDirArrowExpandable  = '+'
let g:NERDTreeDirArrowCollapsible = '-'
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
" nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>

map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>

let g:fzf_tags_command = 'ctags -R'

"let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }
"let $FZF_DEFAULT_OPTS="--reverse "                      " top to bottom

let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**' -g '!{node_modules,.git}'"

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

" nnoremap <C-f> :Rg

"------------------------------------------------------------------------------
" Defaults
"------------------------------------------------------------------------------
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler                                   " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set path+=**
set updatetime=300
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number
set relativenumber
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set timeoutlen=500 "Default 1000ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set colorcolumn=80
highlight ColorColumn guibg=#3d434f
set incsearch

set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*

" augroups
augroup indents
    autocmd!
    autocmd FileType less,css,scss,html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType text,markdown setlocal expandtab
    autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
augroup END

" Very magic by default
cnoremap %s/ %sm/

" No arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Left and right can switch buffers
nnoremap <C-f> :BL<CR>
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>
" Reload config
nnoremap <C-s> :source %<cr>
nnoremap <A-k> :bd<cr>

" Better splits
set splitbelow
set splitright

" Easy pane switching
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Split plane
nnoremap <A-h> :split<CR>
nnoremap <A-v> :vsplit<CR>

" Code folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Let's do something crazy
" nnoremap / :Clap blines<CR>
nnoremap / /\v
nnoremap ? :Clap<CR>
nnoremap <C-p> :Clap files<CR>

" Ugh
:command! SPI :source % | :PlugInstall
:command! WQ wq
:command! Wq wq
:command! Wqa wqa
:command! W w
:command! Q q
:command! PI :PlugInstall
:command! S :source %
:command! CT :ColorizerToggle

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" coc-nvim
hi CocHintSign ctermfg=6
hi CocErrorSign ctermfg=1
hi CocWarningSign ctermfg=3
hi CocInfoSign ctermfg=6

hi CocInfoFloat ctermfg=7
hi CocHintFloat ctermfg=7

