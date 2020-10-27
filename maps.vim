" Very magic by default {{{
cnoremap %s/ %sm/
nnoremap <silent><leader><leader> :x<CR>
nnoremap <silent><leader><space> :w<CR>
"}}}

" Buffers management {{{
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>
nnoremap <C-k> :bd<cr>
"}}}

" Pane management {{{
nnoremap <A-h>h :wincmd h<CR>
nnoremap <A-j>j :wincmd j<CR>
nnoremap <A-k>k :wincmd k<CR>
nnoremap <A-l>l :wincmd l<CR>

" Splits
nnoremap <leader>h :split<CR>
nnoremap <leader>h :split<CR>

" Resize pane
nnoremap <Leader>+ :vertical resize +10<CR>
nnoremap <Leader>- :vertical resize -10<CR>
nnoremap <Leader>rp :resize 100<CR>
"}}}

" Paragraph scrolling
nnoremap <A-a> {
nnoremap <A-e> }

" Lines {{{
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

nnoremap <S-up> <Esc>7<up>
nnoremap <S-down> <Esc>7<down>
nnoremap <S-left> <Esc>0
nnoremap <S-right> <Esc>$

nnoremap K 7<up>
nnoremap J 7<down>

nnoremap <C-X> <ESC>"_dd
"}}}

" Search
nnoremap / /\v
nnoremap <C-f> :BL<CR>
nnoremap <leader>f :BL<CR>

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

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" Reload vim config
nnoremap <Leader>r :so ~/.config/nvim/init.vim<CR>
