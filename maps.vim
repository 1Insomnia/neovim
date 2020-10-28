" ░█▄█░█▀█░█▀█░█▀█░▀█▀░█▀█░█▀▀░█▀▀
" ░█░█░█▀█░█▀▀░█▀▀░░█░░█░█░█░█░▀▀█
" ░▀░▀░▀░▀░▀░░░▀░░░▀▀▀░▀░▀░▀▀▀░▀▀▀

" Buffers management {{{
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>
nnoremap <C-k> :bd<cr>
" Close the current buffer
nnoremap <leader>bd :Bclose<cr>:tabclose<cr>gT
"}}}

" Tabs {{{
map <leader>tn :tabnew<cr>
map <leader>t<leader> :tabnext
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
"}}}

" Indentation {{{
nmap >> <Nop>
nmap << <Nop>
vmap >> <Nop>
vmap << <Nop>nnoremap <Tab>   >>
" Using tab
nnoremap <S-Tab> <<
nnoremap <Tab> >>
vnoremap <Tab>   >><Esc>gv
vnoremap <S-Tab> <<<Esc>gv
" Indent paragraph
noremap <leader>a =ip
"}}}

" Pane management {{{
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

" Splits
nnoremap <leader>h :split<CR>
nnoremap <leader>v :vsplit<CR>

" Resize pane
nnoremap <Leader>+ :vertical resize +10<CR>
nnoremap <Leader>- :vertical resize -10<CR>
nnoremap <Leader>rp :resize 100<CR>
"}}}

" Lines {{{
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
nnoremap <S-up> <Esc>7<up>
nnoremap <S-down> <Esc>7<down>
nnoremap <S-left> <Esc>0
nnoremap <S-right> <Esc>$
" nnoremap K 7<up>
" nnoremap J 7<down>

map $ <Nop>
map ^ <Nop>
map { <Nop>
map } <Nop>

" Paragraph emacs like
nnoremap <A-a> {
nnoremap <A-e> }

" Move by paragraph
nnoremap K {
nnoremap J }
" SOL / EOL
noremap H ^
noremap L $

" Delete line
nnoremap <C-X> <ESC>"_dd
"}}}

" Command mapping {{{
" Ugh {{{
:command! SPI :source % | :PlugInstall
:command! WQ wq
:command! Wq wq
:command! Wqa wqa
:command! W w
:command! Q q
"}}}

:command! PI :PlugInstall
:command! S :source %
:command! CT :ColorizerToggle
:command! GA :Git add .
:command! GC :Git commit
:command! GP :Git push
"}}}

" Reload / Quick access vim config {{{
nnoremap <Leader>r :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>e :e! ~/.config/nvim/init.vim<cr>
autocmd! bufwritepost ~/.config/nvim/init.vim source ~/.config/nvim/init.vim
"}}}

" Macro {{{
nnoremap Q @q
vnoremap Q :norm @q<cr>
"}}}

" Search {{{
nnoremap / /\v
nnoremap <C-f> :BL<CR>
nnoremap <leader>f :BL<CR>
"}}}

" Misc {{{
nnoremap Y y$
nnoremap <leader>q :q<cr>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" Rename current word
nnoremap <Leader>x /\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn
nnoremap <Leader>X ?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN

" Source current file
nnoremap <C-s> :source %<CR>

cnoremap %s/ %sm/
nnoremap <silent><leader><leader> :x<CR>
nnoremap <silent><leader><space> :w<CR>
"}}}
