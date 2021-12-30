" For Telescope live_grep:
" MacOS: brew install ripgrep
" Manjaro: $ pacman -S ripgrep
" DOcs: $ pacman -S ripgrep
set nowrap						" don't display long lines on multiple lines
set nu 							" Line numbers
set rnu 


"Telescope Settings
nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap <C-g> <cmd>Telescope live_grep<cr>

:lua require'nvim-tree'.setup()
" nvim Tree settings

let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
nnoremap <C-b> :NvimTreeToggle<CR>
set termguicolors 
highlight NvimTreeFolderIcon guibg=blue
" =====================================================================================
"    vim-rainbowbrackets
" =====================================================================================
let g:rainbowbrackets_colors =
	\ [
	\   'ctermfg=87	guifg=#5fffff',
	\   'ctermfg=5		guifg=#ff69ff',
	\   'ctermfg=226	guifg=#ffff00',
	\   'ctermfg=112	guifg=#87d700'
	\ ]
let g:rainbowbrackets_enable_round_brackets = 1
let g:rainbowbrackets_enable_curly_brackets = 1
let g:rainbowbrackets_enable_square_brackets = 1
let g:rainbowbrackets_enable_angle_brackets = 0

" =====================================================================================
"    vim-polyglot
" =====================================================================================
let g:go_fold_enable = ['import']
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 2

"coc auto completion
let g:coq_settings = { 'auto_start': 'shut-up' }
" =====================================================================================
"    FTerm
" =====================================================================================
lua <<EOF
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map('n', '<C-d>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
map('t', '<C-d>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
EOF

" LSP Setup
" for rust: brew install rust-analyzer
" Python: npm i -g pyright
lua << EOF
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.pyright.setup{}

EOF










