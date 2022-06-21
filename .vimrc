set number
set nocompatible
set laststatus=2
set noshowmode
syntax on
set encoding=UTF-8

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'ghifarit53/tokyonight-vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

call plug#end()

let g:Hexokinase_highlighters = [ 'backgroundfull' ]

" Support 24 bit color
if has('termguicolors')
	    " Turns on true terminal colors
	    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	    set termguicolors
	    set t_Co=256
	endif

set background=dark
colorscheme onedark

" colorscheme tokyonight
"let g:tokyonight_style = 'storm' " available: night, storm
"let g:tokyonight_enable_italic = 1

"Lightline
let g:lightline = {
	      \ 'colorscheme': 'one',
\ }

" emmet
"let g:user_emmet_mode='n'    "only enable normal mode functions.
"let g:user_emmet_leader_key='<C-,>'

"new tab with ctrl+t
nnoremap <silent> <C-t> :tabnew<CR>

"switch between tab
nnoremap H gT
nnoremap L gt

" VimDevIcons for lightline
let g:lightline = {
	      \ 'colorscheme': 'one',
      \ 'active': {
	      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
	    \   'gitbranch': 'FugitiveHead',
			\		'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ },
      \ }

function! MyFiletype()
	  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
	endfunction

	function! MyFileformat()
		  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
		endfunction
