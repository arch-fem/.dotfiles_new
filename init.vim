" set rc directory
let g:rc_dir = expand('~/.config/nvim')

function! s:source_rc(rc_file_name)
    let rc_file = expand(g:rc_dir . '/' . a:rc_file_name)
    if filereadable(rc_file)
        execute 'source' rc_file
    endif
endfunction

call s:source_rc('dein.rc.vim')

call s:source_rc('init.rc.vim')

call s:source_rc('editor.rc.vim')

call s:source_rc('terminal.rc.vim')

call s:source_rc('color.rc.vim')

inoremap <silent> jj <ESC>

set matchtime=1

nnoremap ; :
nnoremap : ;

" 新しいウィンドウを下に開く
set splitbelow
" 新しいウィンドウを右に開く
set splitright


" Command-line mode keymappings:
" <C-a>, A: move to head.
cnoremap <C-a>          <Home>
" <C-b>: previous char.
cnoremap <C-b>          <Left>
" <C-d>: delete char.
cnoremap <C-d>          <Del>
" <C-e>, E: move to end.
cnoremap <C-e>          <End>
" <C-f>: next char.
cnoremap <C-f>          <Right>
" <C-n>: next history.
cnoremap <C-n>          <Down>
" <C-p>: previous history.
cnoremap <C-p>          <Up>
" <C-y>: paste.
cnoremap <C-y>          <C-r>*
" <C-g>: Exit.
cnoremap <C-g>          <C-c>

" Smart <C-f>, <C-b>.
noremap <expr> <C-f> max([winheight(0) - 2, 1])
      \ . "\<C-d>" . (line('w$') >= line('$') ? "L" : "M")
noremap <expr> <C-b> max([winheight(0) - 2, 1])
      \ . "\<C-u>" . (line('w0') <= 1 ? "H" : "M")

" Disable Ex-mode.
nnoremap Q  q

nnoremap x "_x
nnoremap s "_s

nnoremap > >>
nnoremap < <<
xnoremap > >gv
xnoremap < <gv

inoremap <C-a> <Home>
inoremap <C-b> <Left>
inoremap <C-e> <End>
inoremap <silent> <C-f> <C-r>=lexima#insmode#leave(1, '<LT>C-G>U<LT>RIGHT>')<CR>
inoremap <C-g> <C-o>b<C-o>gUiw<C-o>e<Right>
inoremap <C-G> <C-o>b<C-o>guiw<C-o>e<Right>
inoremap <C-u> <C-o>cc
imap     <C-h> <BS>
inoremap <C-j> <C-o>o
inoremap <C-k> <C-o>O
inoremap <C-l> <Del>
inoremap <C-v> <esc><C-v>
inoremap <C-y> <Home>S<BS>
inoremap <C-p> <Up>
inoremap <C-n> <Down> 

nnoremap <C-h> <Home>
nnoremap <C-l> <End>
nnoremap <C-j> o<esc><Up>
nnoremap <C-k> O<esc><Down>
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap J L
nnoremap L J
nnoremap K H
nnoremap H K 

nnoremap Y y$
set display=lastline
set pumheight=10
set showmatch
set matchtime=1


" Tab setting for file type
augroup MyTabStop
    autocmd!
    autocmd BufNewFile,BufRead *.rhtml     setlocal tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.html      setlocal tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.js        setlocal tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.css       setlocal tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.scss      setlocal tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.md        setlocal tabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.scala     setlocal tabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.rb        setlocal tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.erb       setlocal tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.{c,cpp,h} setlocal tabstop=8 shiftwidth=8 noexpandtab
    autocmd BufNewFile,BufRead *.py        setlocal tabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.go        setlocal tabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.vim       setlocal tabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead Makefile    setlocal noexpandtab
    autocmd BufNewFile,BufRead *.yml       setlocal tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.yaml      setlocal tabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.toml      setlocal tabstop=4 shiftwidth=4
    autocmd BufRead,BufNewFile *.scss      setlocal filetype=scss
augroup END

augroup MyGitSpellCheck
    autocmd!
    autocmd FileType gitcommit setlocal spell
augroup END
