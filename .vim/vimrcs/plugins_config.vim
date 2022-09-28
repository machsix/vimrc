"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>
map <silent> <F9> :NERDTreeToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-s>'
let g:multi_cursor_select_all_word_key = '<A-s>'
let g:multi_cursor_start_key           = 'g<C-s>'
let g:multi_cursor_select_all_key      = 'g<A-s>'
let g:multi_cursor_next_key            = '<C-s>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'go': ['go', 'golint', 'errcheck'],
\   'python': ['flake8','autopep8','pyflakes','pylint'],
\   'javascript': ['eslint'],
\   'fortran': ['gcc'],
\   'matlab': ['mlint'],
\   'cpp': ['clangd', 'cc', 'ccls']
\   }

let g:ale_fixers = {
\   'cpp' :['clang-format'],
\   'python' :['autopep8', 'black']
\   }

let g:ale_fortran_gcc_use_free_form = 1
let g:ale_python_flake8_options="--ignore=E501,E303,E226,E225"
let g:ale_python_pylint_options="--disable=C0301,C0103,C0411"
let b:ale_warn_about_trailing_whitespace = 0
autocmd VimEnter * ALELint
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>
"let g:ale_matlab_mlint_executable="/opt/matlab/current/bin/glnxa64/mlint"
nmap <silent> <leader>a <Plug>(ale_next_wrap)
nmap <silent> <F4> <Plug>(ale_fix)

" Only run linting when saving the file
"let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

highlight link ALEErrorSign todo

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERD Commenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Deoplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Better whitespace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
nnoremap <F6> :ToggleWhitespace<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cpp enhanced highlighting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => autozimu/LanguageClient-neovim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:LanguageClient_serverCommands = {
  \ 'cpp': ['clangd'],
  \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => rhysd/vim-clang-format
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clang_format#detect_style_file = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => dracula
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:dracula_italic = 0

