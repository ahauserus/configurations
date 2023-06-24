set shell=/bin/zsh
syntax on
filetype plugin indent on
set number

let g:ale_linters = {'c':['betty-style', 'betty-doc'], 'python':['flake8']}

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'html': ['prettier'],
\   'python': ['autopep8', 'pycodestyle', 'flake8'],
\}

au TermEnter * setlocal scrolloff=0
au TermLeave * setlocal scrolloff=3
set autoindent
set tabstop=6
set shiftwidth=6
set smarttab
set softtabstop=6
set mouse=a
set cursorline
set cindent
set completeopt-=preview
set hlsearch
set incsearch
set ignorecase
set smartcase
set modeline
set modelines=10
set title
set titleold="Terminal"
set titlestring=%F

" Plugins
call plug#begin()
Plug 'vim-autoformat/vim-autoformat'
Plug 'tomtom/tcomment_vim'
Plug 'valloric/youcompleteme'
Plug 'neoclide/coc-snippets'
Plug 'https://github.com/907th/vim-auto-save'
Plug 'https://github.com/hhatto/autopep8/'
Plug 'tell-k/vim-autopep8'
Plug 'https://github.com/mhartington/oceanic-next'
Plug 'nvie/vim-flake8'
Plug 'ervandew/supertab'
Plug 'neoclide/coc-pairs'
Plug 'neoclide/coc-yank'
Plug 'pappasam/coc-jedi'
Plug 'neoclide/coc-highlight'
Plug 'neoclide/coc-prettier'
Plug 'frazrepo/vim-rainbow'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'nestorsalceda/vim-strip-trailing-whitespaces'
Plug 'cwfoo/vim-text-omnicomplete', { 'do': 'make' }
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'bryanmylee/vim-colorscheme-icons'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'darrikonn/vim-gofmt', { 'do': ':GoUpdateBinaries' }
Plug 'mhartington/oceanic-next'
Plug 'mhinz/vim-startify'
Plug 'dense-analysis/ale'
Plug 'bstevary/betty-in-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'github/copilot.vim'
Plug 'tpope/vim-repeat'
Plug 'lfilho/cosco.vim'
Plug 'Exafunction/codeium.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'MilesCranmer/tabnine-vim'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'madox2/vim-ai'
Plug 'loctvl842/monokai-pro.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'puremourning/vimspector'
if has('nvim')
	Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
	Plug 'Shougo/denite.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif
set encoding=UTF-8
call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
	set termguicolors
endif


let g:vim_bootstrap_langs = "c,go,html,javascript,python,bash"
let g:vim_bootstrap_editor = "nvim"				" nvim or vim
let g:vim_bootstrap_theme = "nightowl"
let g:vim_bootstrap_frams = ""
let g:TreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:airline_powerline_fonts = 1
let g:autopep8_disable_show_diff=1
let g:autopep8_diff_type='vertical'
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]
let g:auto_save_write_all_buffers = 1
let g:auto_save_silent = 0  " do not display the auto-save notification
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#virtualenv#enabled = 1

" Mardown Settings
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 1
let g:mkdp_browser = '/usr/bin/brave'
'
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }
    let g:mkdp_filetypes = ['markdown']
    let g:mkdp_theme = 'dark'

" Syntax highlight
" let python_highlight_all = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

if (has("termguicolors"))
	set termguicolors
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

au FileType c,cpp,objc,objcpp call rainbow#load()
let g:rainbow_active = 1
let g:rainbow_active = 1

let mapleader = 'M'
nmap <bslash> <M>
nmap , <M>

let g:rainbow_load_separately = [
			\ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
			\ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
			\ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
			\ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
			\ ]

" Personal mappings
nnoremap <C-s> <Esc>:wq<Enter><CR>
inoremap <silent> <C-s> <Esc>:wq<Enter><CR>
nnoremap <C-q> <Esc>:q!<Enter><CR>
nnoremap <C-right> <Esc>:bn<Enter><CR>
nnoremap <C-left> <Esc>:bp<Enter><CR>
nnoremap <silent> <C-i> <Esc>:PlugInstall<Enter><CR>
nnoremap <C-c> <Esc>:PlugClean<Enter><CR>
nnoremap <silent> <C-u> <Esc>:PlugUpdate<Enter><CR>
nnoremap <C-\> :source %<Enter><CR>
nnoremap <C-l> :bd <Enter><CR>
nnoremap <C-h> <Esc>:GitFiles<Enter><CR>
nnoremap <M-t> <Esc>:TagbarToggle<Enter><CR>
nnoremap <M-q> <Esc>:q!<Enter><CR>
nnoremap <M-a> <Esc>:AIChat <space>
nnoremap <C-f> :Telescope find_files<CR>
nnoremap <C-E> :NERDTreeToggle<CR>
nmap <C-t> :TagbarToggle<CR>
nmap <C-/> :TCommentBlock<CR>
nmap <C-p> :Autopep8<CR>
nmap <C-g> :GoFmt<CR>
nnoremap <C-]> <Esc>:MarkdownPreview<Enter><CR>

autocmd FileType python map <buffer> <C-c> :call flake8#Flake8()<CR>
autocmd FileType scss setl iskeyword+=@-@

" Airline Themes
" let g:airline_theme = 'catppuccin_mocha'
let g:move_key_moidfier = 'C'
let g:oceanic_next_terminal_italic = 1
let g:go_fmt_command = "gofmt"

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" let g:lightline = { 'colorscheme': 'iceberg' }
" let g:lightline = { 'colorscheme': 'nightowl' }

autocmd FileType python noremap <buffer> <> :call Autopep8(C-p)<CR>
hi Normal guibg=NONE ctermbg=NONE
hi CursorLineNr ctermfg=45 cterm=bold


let g:fzf_colors =
			\ { 'fg':      ['fg', 'Normal'],
			\ 'bg':      ['bg', 'Normal'],
			\ 'hl':      ['fg', 'Comment'],
			\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
			\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
			\ 'hl+':     ['fg', 'Statement'],
			\ 'info':    ['fg', 'PreProc'],
			\ 'border':  ['fg', 'Ignore'],
			\ 'prompt':  ['fg', 'Conditional'],
			\ 'pointer': ['fg', 'Exception'],
			\ 'marker':  ['fg', 'Keyword'],
			\ 'spinner': ['fg', 'Label'],
			\ 'header':  ['fg', 'Comment'] }


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:move_key_modifier = 'C'
let g:javascript_plugin_jsdoc = 1
let g:cosco_ignore_comment_lines = 1     " Default : 0


if has("gui_running")
	if has("gui_mac") || has("gui_macvim")
		set guifont=Menlo:h12
		set transparency=7
	endif
else
	let g:CSApprox_loaded = 1

	" IndentLine
	let g:indentLine_enabled = 1
	let g:indentLine_concealcursor = ''
	let g:indentLine_char = '┆'
	let g:indentLine_faster = 1


endif


augroup vimrc-sync-fromstart
	autocmd!
	autocmd BufEnter * :syntax sync maxlines=200
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
	autocmd!
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END


" vim-go
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
	let l:file = expand('%')
	if l:file =~# '^\f\+_test\.go$'
		call go#test#Test(0, 1)
	elseif l:file =~# '^\f\+\.go$'
		call go#cmd#Build(0)
	endif
endfunction

let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1
let g:completion_chain_complete_list = {
    \ 'default': [
    \    {'complete_items': ['lsp', 'snippet', 'tabnine', 'lua', 'codeium', 'copilot' ]},
    \    {'mode': '<c-p>'},
    \    {'mode': '<c-n>'}
    \]
\}
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
if !exists('g:airline_powerline_fonts')
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'
	let g:airline_left_sep          = '▶'
	let g:airline_left_alt_sep      = '»'
	let g:airline_right_sep         = '◀'
	let g:airline_right_alt_sep     = '«'
	let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
	let g:airline#extensions#readonly#symbol   = '⊘'
	let g:airline#extensions#linecolumn#prefix = '¶'
	let g:airline#extensions#paste#symbol      = 'ρ'
	let g:airline_symbols.linenr    = '␊'
	let g:airline_symbols.branch    = '⎇'
	let g:airline_symbols.paste     = 'ρ'
	let g:airline_symbols.paste     = 'Þ'
	let g:airline_symbols.paste     = '∥'
	let g:airline_symbols.whitespace = 'Ξ'
else
	let g:airline#extensions#tabline#left_sep = ''
	let g:airline#extensions#tabline#left_alt_sep = ''

	" powerline symbols
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
	let g:airline_symbols.branch = ''
	let g:airline_symbols.readonly = ''
	let g:airline_symbols.linenr = ''
endif

" Color Schemes
:colorscheme catppuccin_mocha
let g:airline_theme = 'catppuccin_mocha'
" let g:airline_theme = 'zenburn'
