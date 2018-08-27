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


nnoremap x "_x
nnoremap s "_s

inoremap <C-a> <Home>
inoremap <C-b> <Left>
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <C-g> <C-o>B<C-o>gUiw<C-o>E<Right>
imap     <C-j> <Return>
inoremap <C-k> <C-o>o
inoremap <C-l> <Del>
inoremap <C-v> <C-o><C-v>
inoremap <C-y> <C-o>+<Right>

nnoremap <C-a> <Home>
nnoremap <C-e> <End>
nnoremap <C-j> o<esc>
nnoremap <C-k> O<esc>
nnoremap <C-p> <C-y>
nnoremap <C-n> <C-e>
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap J L
nnoremap L J
nnoremap K H
nnoremap H K 
nnoremap + <C-a>
nnoremap - <C-x>

let mapleader = "\<Space>"

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
    autocmd BufNewFile,BufRead *.{c,cpp,h} setlocal tabstop=8 shiftwidth=8
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

