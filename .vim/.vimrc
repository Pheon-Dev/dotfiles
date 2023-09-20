" ============= Vim-Plug ============== "{{{

" auto-install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

"}}}

" ============= Plugins =============== "{{{

source ~/.vim/plugins.vim

"}}}

" ============= Options =============== "{{{
source ~/.vim/options.vim
"}}}

" Themeing
colorscheme catppuccin_mocha
 " hi Pmenu guibg='#1e1e2e' guifg=white                    " popup menu colors
" hi Comment gui=italic cterm=italic                      " italic comments
 " hi Search guibg=#b16286 guifg=#ebdbb2 gui=NONE          " search string highlight color
" hi NonText guifg=bg                                     " mask ~ on empty lines
" hi clear CursorLineNr                                   " use the theme color for relative number
" hi CursorLineNr gui=bold                                " make relative number bold
" hi SpellBad guifg=NONE gui=bold,undercurl               " misspelled words

" coc multi cursor highlight color
" hi CocCursorRange guibg=#b16286 guifg=#ebdbb2

"}}}

" " ======================== Plugin Configurations ======================== "{{{
"
 "" built in plugins
 let g:omni_sql_no_default_maps = 1                      " disable sql omni completion
 let g:loaded_python_provider = 0
 let g:loaded_perl_provider = 1
 let g:loaded_ruby_provider = 1
 if glob('~/.python3') != ''
   let g:python3_host_prog = expand('~/.python3/bin/python')
 else
   let g:python3_host_prog = systemlist('which python3')[0]
 endif

 "" coc

 " Navigate snippet placeholders using tab
 let g:coc_snippet_next = '<Tab>'
 let g:coc_snippet_prev = '<S-Tab>'

 " list of the extensions to make sure are always installed
 let g:coc_global_extensions = [
             \'coc-yank',
             \'coc-pairs',
             \'coc-json',
             \'coc-css',
             \'coc-html',
             \'coc-tsserver',
             \'coc-yaml',
             \'coc-lists',
             \'coc-snippets',
             \'coc-pyright',
             \'coc-clangd',
             \'coc-prettier',
             \'coc-xml',
             \'coc-syntax',
             \'coc-git',
             \'coc-marketplace',
             \'coc-highlight',
             \'coc-sh',
             \]

 " " indentLine
 " let g:indentLine_char_list = ['▏', '¦', '┆', '┊']
 " let g:indentLine_setColors = 0
 " let g:indentLine_setConceal = 0                         " actually fix the annoying markdown links conversion

 " rainbow brackets
 let g:rainbow_active = 1

  "" FZF
  let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit' }

  " let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }
  " let g:fzf_tags_command = 'ctags -R'

  " let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info'
  let $FZF_DEFAULT_COMMAND = "rg --files --hidden --glob '!.git/**' --glob '!build/**' --glob '!.dart_tool/**' --glob '!.idea' --glob '!node_modules'"

 " }}}

 " ======================== Commands ============================= "{{{

 au BufEnter * set fo-=c fo-=r fo-=o                     " stop annoying auto commenting on new lines
 au FileType help wincmd L                               " open help in vertical split
 au BufWritePre * :%s/\s\+$//e                           " remove trailing whitespaces before saving
 au CursorHold * silent call CocActionAsync('highlight') " highlight match on cursor hold

 " enable spell only if file type is normal text
 let spellable = ['markdown', 'gitcommit', 'txt', 'text', 'liquid', 'rst']
 autocmd BufEnter * if index(spellable, &ft) < 0 | set nospell | else | set spell | endif


 " coc completion popup
 autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" format with available file format formatter
command! -nargs=0 Format :call CocAction('format')

 " organize imports
 command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

 " files in fzf
 command! -bang -nargs=? -complete=dir Files
     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--inline-info']}), <bang>0)

 " advanced grep
 command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)

 "}}}

 "" ================== Custom Functions ===================== "{{{

 "" advanced grep(faster with preview)
 function! RipgrepFzf(query, fullscreen)
     let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
     let initial_command = printf(command_fmt, shellescape(a:query))
     let reload_command = printf(command_fmt, '{q}')
     let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
     call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
 endfunction

 " check if last inserted char is a backspace (used by coc pmenu)
 function! s:check_back_space() abort
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~# '\s'
 endfunction

 " show docs on things with K
 function! s:show_documentation()
   if (index(['vim','help'], &filetype) >= 0)
     execute 'h '.expand('<cword>')
   else
     call CocAction('doHover')
   endif
 endfunction

 "}}}

 " ======================== Custom Mappings ====================== "{{{
 source ~/.vim/keymaps.vim

 "}}}


 " ======================== Additional sourcing ====================== "{{{
 source ~/.vim/statusline.vim
 source ~/.vim/config.vim

 "}}}

