 " ======================== Custom Mappings ====================== "{{{

 "" the essentials
 let mapleader=" "
 nnoremap ; :
 " nmap \ <leader>q
 nmap <leader>r :so ~/.vim/.vimrc<CR>
 nmap <leader>q :bd<CR>
 imap jj <ESC>
 nmap <leader>w :w<CR>
 map leader>s :Format<CR>
 nmap <Tab> :bnext<CR>
 nmap <S-Tab> :bprevious<CR>
 noremap <leader>pi :PlugInstall<CR>
 noremap <leader>pu :PlugUpdate<CR>
 noremap <leader>pg :PlugUpgrade<CR>
 noremap <leader>pc :PlugClean<CR>
 noremap <C-q> :q<CR>

" new line in normal mode and back
map <Enter> o<ESC>
map <S-Enter> O<ESC>

 " use a different register for delete and paste
 nnoremap d "_d
 vnoremap d "_d
 vnoremap p "_dP
 nnoremap x "_x

 " emulate windows copy, cut behavior
 vnoremap <LeftRelease> "+y<LeftRelease>
 vnoremap <C-c> "+y<CR>
 vnoremap <C-x> "+d<CR>

 " switch between splits using ctrl + {h,j,k,l}
 " inoremap <C-h> <C-\><C-N><C-w>h
 " inoremap <C-j> <C-\><C-N><C-w>j
 " inoremap <C-k> <C-\><C-N><C-w>k
 " inoremap <C-l> <C-\><C-N><C-w>l
 nnoremap <C-h> <C-w>h
 noremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

 inoremap <C-j> <C-o>o
 inoremap <C-k> <C-o>O
 inoremap <C-l> <C-o>A
 inoremap <C-h> <C-o>I

 nmap _ <Plug>MoveLineDown
 nmap + <Plug>MoveLineUp
 vmap H <Plug>MoveBlockLeft
 vmap J <Plug>MoveBlockDown
 vmap K <Plug>MoveBlockUp
 vmap L <Plug>MoveBlockRight

 " disable hl with 2 esc
 noremap <silent><esc> <esc>:noh<CR><esc>

 " trim white spaces
 nnoremap <F2> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

 " markdown preview
 au FileType markdown nmap <leader>m :MarkdownPreview<CR>

 "" FZF
 nnoremap <silent> <leader>f :Files<CR>
 nmap <leader>b :Buffers<CR>
 nmap <leader>c :Commands<CR>
 nmap <leader>t :BTags<CR>
 nmap <leader>l :FloatermNew lazygit<CR>
 nmap <leader>s :Rg<CR>
 nmap <leader>gc :Commits<CR>
 nmap <leader>gs :GFiles?<CR>
 " nmap <leader>sh :History/<CR>
 nmap <leader>em :Mkdir
 nmap <leader>ew :SudoWrite<CR>
 nmap H ^
 nmap L $
 nmap U :redo<cr>

 " show mapping on all modes with F1
 nmap <F1> <plug>(fzf-maps-n)
 imap <F1> <plug>(fzf-maps-i)
 vmap <F1> <plug>(fzf-maps-x)

 "" coc

 " use tab to navigate snippet placeholders
 inoremap <silent><expr> <TAB>
     \ coc#pum#visible() ? coc#_select_confirm() :
     \ coc#expandableOrJumpable() ?
     \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
     \ check_back_space() ? "\<TAB>" :
     \ coc#refresh()

 let g:coc_snippet_next = '<tab>'

 " use enter to accept completion
 inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

 " " multi cursor shortcuts
 " nmap <silent> <C-a> <Plug>(coc-cursors-word)
 " xmap <silent> <C-a> <Plug>(coc-cursors-range)

 " Use `[g` and `]g` to navigate diagnostics
 nmap <silent> [g <Plug>(coc-diagnostic-prev)
 nmap <silent> ]g <Plug>(coc-diagnostic-next)

 " other stuff
 nmap <leader>rn <Plug>(coc-rename)
 nmap <leader>o :OR <CR>

 " jump stuff
 nmap <leader>jd <Plug>(coc-definition)
 nmap <leader>jy <Plug>(coc-type-definition)
 nmap <leader>ji <Plug>(coc-implementation)
 nmap <leader>jr <Plug>(coc-references)

 " other coc actions
 nnoremap <silent> K :call <SID>show_documentation()<CR>
 nmap <leader>a <Plug>(coc-codeaction-line)
 xmap <leader>a <Plug>(coc-codeaction-selected)

" fugitive mappings
nmap <leader>gd :Gdiffsplit<CR>
nmap <leader>gb :Git blame<CR>

 "}}}
