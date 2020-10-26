set nocompatible
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

let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
let g:material_theme_terminal_italics=1
" let g:tokyonight_style = 'storm' " available: night, storm
" let g:tokyonight_enable_italic = 1
" let g:daycula_enable_italic = 1
" let g:daycula_current_word = 'underline'
" let g:sonokai_style = 'espresso'
" let g:sonokai_enable_italic = 1
" let g:material_terminal_italics = 1
" let python_highlight_all=1
set fillchars+=vert:│
augroup colorscheme_change | au!
    au ColorScheme * hi Comment gui=italic cterm=italic
    au ColorScheme * hi JsThis gui=italic cterm=italic
    au ColorScheme * hi JsClassKeyword gui=italic cterm=italic
    au ColorScheme * hi Keyword gui=italic cterm=italic
    au ColorScheme * hi pythonClassKeyword gui=italic cterm=italic
    au ColorScheme * hi pythonClassVar gui=italic
    if &background != "dark"
        au ColorScheme toast hi Normal guibg=#d9d9d9
        au ColorScheme isaac hi Normal guibg=#d9d9d9
        au ColorScheme polar hi Normal guibg=#d9d9d9
    else
        au ColorScheme toast hi Normal guibg=#18191E
        au ColorScheme tokyonight hi Normal guibg=#18191E
    endif
augroup END
set termguicolors
colo plainloco
set background=dark

" let g:airline_theme = 'material'
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
autocmd FileType html let g:rainbow_active= 0
"------------------------------------------------------------------------------
" Better whitespaces
"------------------------------------------------------------------------------
" set list
" set fillchars=vert:\│
" set listchars=tab:-▸,eol:↲,extends:»,precedes:«,space:•
set list
set listchars=
set listchars+=tab:›\ ,
set listchars+=trail:•,
" set listchars=tab:┊\ ,nbsp:␣,space:•,extends:>,precedes:<,trail:•
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
let NERDTreeChDirMode=1
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
let g:fzf_command_prefix = 'Fzf'
nnoremap <Leader>b :FzfBuffers<CR>
nnoremap <Leader>h :FzfHistory<CR>
nnoremap <Leader>t :FzfBTags<CR>
nnoremap <silent> <Leader>x :FzfCommits<CR>
nnoremap <Leader>T :FzfTags<CR>
" Have FZF list all tracked files plus untracked files minus ignored files
nnoremap <Leader>p :FzfGitFiles --exclude-standard --others --cached<CR>
nnoremap <Leader>gt :FzfRg<CR>

" floating fzf window with borders
let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }

function! FZFWithDevIcons()
  let l:fzf_files_options = ' -m --bind ctrl-d:preview-page-down,ctrl-u:preview-page-up --preview "bat --color always --style numbers {2..}"'

  function! s:files()
    let l:files = split(system($FZF_DEFAULT_COMMAND.'| devicon-lookup'), '\n')
    return l:files
  endfunction

  function! s:edit_file(items)
    let items = a:items
    let i = 1
    let ln = len(items)
    while i < ln
      let item = items[i]
      let parts = split(item, ' ')
      let file_path = get(parts, 1, '')
      let items[i] = file_path
      let i += 1
    endwhile
    call s:Sink(items)
  endfunction

  let opts = fzf#wrap({})
  let opts.source = <sid>files()
  let s:Sink = opts['sink*']
  let opts['sink*'] = function('s:edit_file')
  let opts.options .= l:fzf_files_options
  call fzf#run(opts)
endfunction

" Open fzf Files
nnoremap <silent> <C-p> :call FZFWithDevIcons()<CR>
function! CreateCenteredFloatingWindow()
    let width = min([&columns - 4, max([80, &columns - 20])])
    let height = min([&lines - 4, max([20, &lines - 10])])
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    au BufWipeout <buffer> exe 'bw '.s:buf
endfunction
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
" Disable auto comment
set formatoptions-=cro
set iskeyword+=-                      	" treat dash separated words as a word text object"

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


" Very magic by default
cnoremap %s/ %sm/
nnoremap <leader> c:<CR>
nnoremap <silent><leader><leader> :x<CR>

" No arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Left and right can switch buffers
nnoremap <C-f> :BL<CR>
nnoremap <leader>f :BL<CR>
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
nnoremap <leader>h :split<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <A-h> :split<CR>
nnoremap <A-v> :vsplit<CR>

" Code folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Let's do something crazy
nnoremap / /\v


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
:command! GA :Git add .
:command! GC :Git commit
:command! GP :Git push

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" coc-nvim
hi CocHintSign ctermfg=6
hi CocErrorSign ctermfg=1
hi CocWarningSign ctermfg=3
hi CocInfoSign ctermfg=6

hi CocInfoFloat ctermfg=7
hi CocHintFloat ctermfg=7

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
