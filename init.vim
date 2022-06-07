set mouse=a					" Enable mouse
set tabstop=4				" 
set shiftwidth=4			" 
set cursorline
set cursorline
set listchars=tab:\¦\		" Tab charactor 
set list
set foldmethod=indent		" 
set foldlevelstart=99		"  
set number					" Show line number
set ignorecase				" Enable case-sensitive 


" Disable backup
set nobackup
set nowb
set noswapfile
set hidden

syntax on

" Enable copying from vim to clipboard
if has('win32')
	set clipboard=unnamed  
else
	set clipboard=unnamedplus
endif

" Auto reload content changed outside
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
		\ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == ''
			\ | checktime 
		\ | endif
autocmd FileChangedShellPost *
		\ echohl WarningMsg 
		\ | echo "File changed on disk. Buffer reloaded."
		\ | echohl None


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key mappings


" Search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
"=====================================================================================
call plug#begin('~/Appdata/Local/nvim/plugged')
	Plug 'jiangmiao/auto-pairs'					"Auto Pair. For example if you input ' then ouput is ''
	Plug 'vim-syntastic/syntastic'				"Check Error
	Plug 'Pocco81/AutoSave.nvim'				"Auto Save
	Plug 'ryanoasis/vim-devicons' 				"Icon for NERDTree
	Plug 'vim-airline/vim-airline'				"Status Bar
	Plug 'vim-airline/vim-airline-themes'		"Status Bar
	Plug 'voldikss/vim-floaterm'				"Vim Terminal
	Plug 'preservim/nerdtree'					"File Explorer
	Plug 'projekt0n/github-nvim-theme'			"Theme
	Plug 'jackguo380/vim-lsp-cxx-highlight'		"Hightlight code for C++
	Plug 'neoclide/coc.nvim', {'branch': 'release'}		"Code Intelligent
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'tribela/vim-transparent'
call plug#end()
colorscheme github_*
"======================================================================================
" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Example config in VimScript
" NOTE: Configuration needs to be set BEFORE loading the color scheme with `colorscheme` command
let g:github_function_style = "italic"
let g:github_sidebars = ["qf", "vista_kind", "terminal", "packer"]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:github_colors = {
  \ 'hint': 'orange',
  \ 'error': '#FFFFFF'
\ }

" Load the colorscheme
colorscheme github_dimmed

"===Auto===Save==================================================
lua << EOF
local autosave = require("autosave")

autosave.setup(
    {
        enabled = true,
        execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
        events = {"InsertLeave", "TextChanged"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)

