" Very magic by default
cnoremap %s/ %sm/
nnoremap <leader> c:<CR>
nnoremap <silent><leader><leader> :x<CR>

" Arrows
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Buffers management
" List all buffers
" Previous & Next buffer swtiching
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

" Kill current buffer
nnoremap <C-k> :bd<cr>

" Reload config
nnoremap <C-s> :source %<cr>

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

" Paragraph scrolling
nnoremap <A-a> {
nnoremap <A-e> }

" Moving lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Search
nnoremap / /\v
nnoremap <C-f> :BL<CR>
nnoremap <leader>f :BL<CR>

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

" Reload vim config
nnoremap <Leader>r :so ~/.config/nvim/init.vim<CR>
