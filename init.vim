" Linting with ALE
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_linter_aliases = {'vue': ['vue', 'javascript'], 'stylus':['stylus','css']}
let g:ale_linters = {'vue': ['eslint','vls']}
let g:ale_fixers = {
\	'*': ['remove_trailing_lines','trim_whitespace'],
\	'vue': ['eslint'],
\	'javascript': ['eslint'],
\   'stylus': ['stylelint'],
\   'css': ['stylelint'],
\   'java': ['google_java_format', 'uncrustify'],
\   'python': ['flake8', 'pylint']
\}

" Javascript Stuff
"let g:used_javascript_libs = "vue"

" Snippets with Ultisnip
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsSnippetsDir = "~/.config/oni/plugins/vim-snippets/UltiSnips"

""" start
" https://chauncey.io/ultisnips-youcompleteme-now-if-i-can-just-get-you-two-to-cooperate/
" YCM + UltiSnip + SuperTab
"
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<tab>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<A-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"
""" end

" Vim Settings
set shiftwidth=0
set tabstop=2
set softtabstop=8

set number
