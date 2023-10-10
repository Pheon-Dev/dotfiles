let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

let g:Hexokinase_highlighters = ['backgroundfull']


  let g:hlchunk_files = '*.ts,*.js,*.json,*.go,*.c,*rs,*.vim,*.lua'
  au VimEnter * hi IndentLineSign ctermfg=248
  let g:hlchunk_time_delay = 50
  let g:hlchunk_priority = 90
  let g:hlchunk_theme = 1
  let g:hlchunk_theme_byuser = { 'sign_texts': ['╭─', '│ ', '╰>'], 'usenew': [1, 1, 1, 1] }

