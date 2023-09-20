   " _____   __            __                     __     _
  " / ___/  / /_  ____ _  / /_  __  __   _____   / /    (_)   ____   ___
  " \__ \  / __/ / __ `/ / __/ / / / /  / ___/  / /    / /   / __ \ / _ \
 " ___/ / / /_  / /_/ / / /_  / /_/ /  (__  )  / /___ / /   / / / //  __/
" /____/  \__/  \__,_/  \__/  \__,_/  /____/  /_____//_/   /_/ /_/ \___/

    function! GitStatus()
      let [a,m,r] = GitGutterGetHunkSummary()
      return printf('+%d ~%d -%d', a, m, r)
    endfunction
" set statusline+=%{GitStatus()}

   set laststatus=2
   set noshowmode

   let g:lightline = {
      \ 'colorscheme' : 'catppuccin_mocha',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'file_name', 'modified' ] ],
      \   'right': [ [ 'git_status', 'gitbranch']],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ 'component': {
      \   'git_status': '%{GitStatus()}',
      \   'file_name': '%F',
      \ },
      \ 'mode_map': {
        \ 'n' : ' ',
        \ 'i' : ' ',
        \ 'R' : ' ',
        \ 'v' : ' ',
        \ 'V' : ' ',
        \ "\<C-v>": ' ',
        \ 'c' : ' ',
        \ 's' : ' ',
        \ 'S' : ' ',
        \ "\<C-s>": ' ',
        \ 't': ' ',
        \ },
      \ }
