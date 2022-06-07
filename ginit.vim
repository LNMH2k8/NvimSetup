"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Settings for neovim-qt
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable qt popup
GuiPopupmenu 0

" Enable line
GuiLinespace 1

" Disable qt tab line 
GuiTabline 0

" Set format of tab name 
set guitablabel=\[%N\]\ %t\ %M 
" Set key map to paste 
inoremap <silent> <S-Insert> <C-R>+
map <C-n> :NERDTreeToggle<CR> 
map <C-f> :FloatermNew <CR>
map <C-k> :FloatermKill <CR>
map <C-t> :tabnew <CR>
map <C-o> :Files <CR>
map gg

"Floaterm terminal in Neovim
let g:loaded_floaterm = 1
let g:floaterm_shell            = get(g:, 'floaterm_shell', &shell)
let g:floaterm_title            = get(g:, 'floaterm_title', '@Minh_Hải')
let g:floaterm_width            = get(g:, 'floaterm_width', 0.6)
let g:floaterm_height           = get(g:, 'floaterm_height', 0.6)
let g:floaterm_wintype          = get(g:, 'floaterm_wintype', 'float')
let g:floaterm_autoclose        = get(g:, 'floaterm_autoclose', 1)
let g:floaterm_autoinsert       = get(g:, 'floaterm_autoinsert', v:true)
let g:floaterm_autohide         = get(g:, 'floaterm_autohide', 1)
let g:floaterm_position         = get(g:, 'floaterm_position', 'topright')
let g:floaterm_borderchars      = get(g:, 'floaterm_borderchars', '─│─│┌┐┘└')
let g:floaterm_rootmarkers      = get(g:, 'floaterm_rootmarkers', ['.project', '.git', '.hg', '.svn', '.root'])
let g:floaterm_opener           = get(g:, 'floaterm_opener', 'split')

"Airline Theme 
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
