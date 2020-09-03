call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-css', 'coc-emmet', 'coc-eslint', 'coc-highlight', 'coc-html', 'coc-json', 'coc-pairs', 'coc-prettier', 'coc-snippets', 'coc-tsserver', 'coc-yank', 'coc-lists']
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'idanarye/vim-merginal'
Plug 'junegunn/gv.vim'
" Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'kristijanhusak/defx-icons'
" Plug 'kristijanhusak/defx-git'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdcommenter'
" Plug 'lilydjwg/fcitx.vim'
Plug 'rhysd/git-messenger.vim'
Plug 'liuchengxu/vista.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'wellle/visual-split.vim'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'yuttie/comfortable-motion.vim'
Plug 'rhysd/conflict-marker.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'rbong/vim-flog'
Plug 'junkblocker/git-time-lapse'
Plug 'terryma/vim-multiple-cursors'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tomasiser/vim-code-dark'
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-surround'
"Plug 'jistr/vim-nerdtree-tabs'
" Plug 'jistr/vim-nerdtree-tabs'
Plug 'vuciv/vim-bujo'
Plug 'mhinz/vim-signify'
Plug 'dhruvasagar/vim-zoom'
call plug#end()

set termguicolors

let g:mapleader = "\\"
let g:maplocalleader = ","
let g:git_messenger_no_default_mappings = v:true
let g:git_messenger_always_into_popup = v:true

autocmd! User vim-which-key call which_key#register('<Leader>', 'g:which_key_map')

nnoremap <silent> <leader> :WhichKey '\'<CR>
nnoremap <silent> <localleader> :WhichKey ','<CR>

nnoremap <localleader><localleader> :noh<CR>
nnoremap <localleader>1 :Rg<CR>
nnoremap <localleader>3 :%s ///gc<Left><Left><Left><Left>
nnoremap <localleader>v :vsplit<CR>

nnoremap <Space>q :q<CR>
nnoremap <Space>f /
nnoremap <Space>e :Vista!!<CR>
nnoremap <Space>j :
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <silent> <Space>w :NERDTreeToggle<CR><C-w>=
nnoremap <Space>t :Buffers<CR>
nnoremap <Space>h :History<CR>
nnoremap <silent> <Space>s :GFiles <cr>
nnoremap <Space><Space><Space> :NERDTreeFind<CR><C-w>=
nnoremap <silent> <leader>gg :G<CR>
nnoremap <silent> <leader>gd :Gvdiff<CR>
" nnoremap <silent> <leader>gp :G pull<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gll :Flog<CR>
nnoremap <silent> <leader>gl; :GV!<CR>
nnoremap zx zA
nnoremap <Space>m zM
nnoremap <localleader>2 :cw<CR>
nnoremap <silent> <leader>gm :MerginalToggle<CR>
nnoremap - $
vnoremap - $
nnoremap <leader>gss :Git stash save ""<Left>
nnoremap <silent> <leader>gsl :Git stash list<CR>
nnoremap <leader>gsa :Git stash apply stash@{}<Left>
nnoremap <leader>gr :Git reset --hard
nnoremap <leader>ww :set wrap<CR>
nnoremap <leader>wn :set nowrap<CR>
nnoremap <leader>dg :diffget<Space>//
nnoremap <leader>du :diffupdate<CR>
nnoremap <Space><Space>; :vertical<Space>resize<space>+100<CR>:vertical<Space>resize<space>+100<CR>
nnoremap <Space>x :resize<space>+100<CR>
nnoremap <Space>n :resize<space>-100<CR>
nmap <Leader>gn <Plug>(git-messenger)

set shiftwidth=2
set softtabstop=2
set nu
set autoindent
set expandtab

" set foldmethod=syntax "syntax highlighting items specify folds
" set foldcolumn=1 "defines 1 col at window left, to indicate folding
" let javaScript_fold=1 "activate folding by JS syntax
" set foldlevelstart=99 "start file with all folds opened

" autocmd FileType json syntax match Comment +\/\/.\+$+
" autocmd CursorHold * silent call CocActionAsync('highlight')

set termguicolors
" colorscheme Benokai
" colorscheme gruvbox
" colorscheme codedark
colorscheme vim-material

set mouse=a

command! -nargs=0 Prettier :CocCommand prettier.formatFile
nmap <C-]> <Plug>(coc-definition)
nmap <Space>] <Plug>(coc-references)
nmap <Leader>p :Prettier<CR>
vmap <Leader>p <Plug>(coc-format-selected)

" let g:NERDTreeWinSize=60
let NERDTreeShowHidden=1
" let NERDTreeShowBookmarks=1
let NERDTreeMouseMode=3
" let g:defx_icons_column_length = 2
" let g:defx_mark_column_length = 2
" let g:defx_mark_column_length = 2
" call defx#custom#option('_', {
  " \ 'winwidth': 60,
  " \ 'split': 'vertical',
  " \ 'direction': 'topleft',
  " \ 'show_ignored_files': 1,
  " \ 'buffer_name': '_',
  " \ 'toggle': 1,
  " \ 'resume': 1,
  " \ 'columns': 'mark:git:indent:icon:icons:filename:type',
  " \ })

" call defx#custom#column('icon', {
  " \ 'directory_icon': '▸',
  " \ 'opened_icon': '▾',
  " \ 'root_icon': ' ',
  " \ })

" call defx#custom#column('filename', {
  " \ 'min_width': 49,
  " \ 'max_width': 49,
  " \ })

" call defx#custom#column('mark', {
  " \ 'readonly_icon': '✗',
  " \ 'selected_icon': '✓',
  " \ })

" call defx#custom#column('git', 'indicators', {
  " \ 'Modified'  : '✹',
  " \ 'Staged'    : '✚',
  " \ 'Untracked' : '✭',
  " \ 'Renamed'   : '➜',
  " \ 'Unmerged'  : '═',
  " \ 'Ignored'   : '☒',
  " \ 'Deleted'   : '✖',
  " \ 'Unknown'   : '?'
  " \ })

" autocmd FileType defx call s:defx_mappings()
" function! s:defx_mappings() abort
  " nnoremap <silent><buffer><expr> <CR>    <SID>defx_toggle_tree()
  " nnoremap <silent><buffer><expr> o       <SID>defx_toggle_tree()
  " nnoremap <silent><buffer><expr> mc      defx#do_action('copy')
  " nnoremap <silent><buffer><expr> mm      defx#do_action('rename')
  " nnoremap <silent><buffer><expr> mp      defx#do_action('paste')
  " nnoremap <silent><buffer><expr> ma      defx#do_action('new_file')
  " nnoremap <silent><buffer><expr> md      defx#do_action('remove')
  " nnoremap <silent><buffer><expr> mo      defx#do_action('execute_system')
  " nnoremap <silent><buffer><expr> pr      defx#do_action('print')
  " nnoremap <silent><buffer><expr> u       defx#do_action('cd', ['..'])
  " nnoremap <silent><buffer><expr> C       defx#do_action('cd', [defx#get_candidate().action__path])
  " nnoremap <silent><buffer><expr> s       defx#do_action('open', ['vsplit'])
  " nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
  " nnoremap <silent><buffer><expr> *       defx#do_action('toggle_select_all')
  " nnoremap <silent><buffer><expr> r       defx#do_action('redraw')
  " nnoremap <silent><buffer><expr> j       line('.') == line('$') ? 'gg' : 'j'
  " nnoremap <silent><buffer><expr> k       line('.') == 1 ? 'G' : 'k'
  " nnoremap <silent><buffer><expr> cd      defx#do_action('change_vim_cwd')
" endfunction

" function! s:defx_toggle_tree() abort
  " " Open current file, or toggle directory expand/collapse
  " if defx#is_directory()
    " return defx#do_action('open_or_close_tree')
  " endif
    " return defx#do_action('multi', ['drop'])
    " " return defx#do_action('multi')
" endfunction

let g:ctrlsf_ackprg='ack'
let g:ctrlsf_case_sensitive='no'
let g:ctrlsf_auto_close = {
  \ "normal" : 0,
  \ "compact": 0,
  \ }

let g:ctrlsf_mapping = {
  \ "next": "J",
  \ "prev": "K",
  \ }

let g:ctrlsf_populate_qflist = 1
let g:ctrlsf_search_mode = 'async'
let g:ctrlsf_position = 'top'

set ignorecase

syntax on

" set foldmethod=syntax "syntax highlighting items specify folds
" set foldcolumn=1
" let javaScript_fold=1
" set foldlevelstart=99 "start file with all folds opened

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" hi Directory guifg=orange
let g:NERDSpaceDelims = 1

" let g:airline_theme='qwq'
let g:airline_theme = 'codedark'

" let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'coc'
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
  \  "function": "\uf794",
  \  "variable": "\uf71b",
  \ }
let g:vista_sidebar_width = 50
let g:vista_fzf_preview = ['right:50%']

" command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, fzf#wrap('ag',
" \ {'options': ["--preview 'coderay $(cut -d: -f1 <<< {}) | sed -n $(cut -d: -f2 <<< {}),\\$p | head -".&lines."' ", '--delimiter : --nth 4..']}))

" command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'cat {}']}, <bang>0)

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'cat {}']}, <bang>0)

" command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)

" {'options': '--delimiter : --nth 4..'}

set hidden

" hi Normal guibg=none

nnoremap <silent> <leader>gps :te<CR>igit push<CR>
nnoremap <silent> <leader>yps :te<CR>igps<CR>exit<CR>
nnoremap <silent> <leader>gp :te<CR>igpl<CR>exit<CR>

set cursorline

nnoremap <silent> <leader>hf :GitGutterFold<CR>
nnoremap <silent> <leader>hl :GitGutterLineHighlightsToggle<CR>

" disable the default highlight group
let g:conflict_marker_highlight_group = ''

" Include text after begin and end markers
let g:conflict_marker_begin = '^<<<<<<< .*$'
let g:conflict_marker_end   = '^>>>>>>> .*$'

highlight ConflictMarkerBegin guibg=#2f7366
highlight ConflictMarkerOurs guibg=#2e5049
highlight ConflictMarkerTheirs guibg=#344f69
highlight ConflictMarkerEnd guibg=#2f628e

let g:fugitive_pty = 0

nnoremap <silent> <F2> :AirlineToggle<CR>:hi Normal guibg=none<CR>:te<CR>
nnoremap <silent> <F3> :AirlineToggle<CR>:hi Normal guibg=#282828<CR>

" set relativenumber

nnoremap <C-p> :!code %:p<CR><CR>

" Open NERDTree in the directory of the current file (or /home if no file is open)
" nmap <silent> <Space><Space><Space> :call NERDTreeToggleInCurDir()<cr>
" function! NERDTreeToggleInCurDir()
  " " If NERDTree is open in the current buffer
  " if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
    " exe ":NERDTreeClose"
  " else
    " exe ":NERDTreeFind"
  " endif
" endfunction

" let g:nerdtree_tabs_autofind=1
" let g:nerdtree_tabs_open_on_console_startup=1

let g:airline#extensions#tabline#fnamemod = ':.'
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0

nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>

let $FZF_DEFAULT_OPTS='--layout=reverse'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }

function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = &lines - 3
  let width = float2nr(&columns - (&columns * 2 / 10))
  let col = float2nr((&columns - width) / 2)

  let opts = {
        \ 'relative': 'editor',
        \ 'row': 1,
        \ 'col': col,
        \ 'width': width,
        \ 'height': height
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction

let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 1  " Feel free to increase/decrease this value.
nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 4)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -4)<CR>

noremap <C-c> "+y
noremap <C-v> "+p
noremap <C-x> "+d

set diffopt+=context:99999

nnoremap <Leader><Leader>j <C-W>J
nnoremap <Leader><Leader>k <C-W>K
nnoremap <Leader><Leader>h <C-W>H
nnoremap <Leader><Leader>l <C-W>L

map <Space><Space>w <Plug>(easymotion-w)
map <Space><Space>b <Plug>(easymotion-b)
map <Space><Space>j <Plug>(easymotion-j)
map <Space><Space>k <Plug>(easymotion-k)
map f <Plug>(easymotion-lineforward)
map F <Plug>(easymotion-linebackward)
map <Space><Space>h <Plug>(easymotion-linebackward)
map <Space><Space>l <Plug>(easymotion-lineforward)

set scrolloff=4

let g:gitgutter_signs = 0

let g:signify_sign_add               = '➕'
" let g:signify_sign_delete            = '➖'
" let g:signify_sign_delete_first_line = '➖'
let g:signify_sign_change            = '❕'

nnoremap <silent> <Space>o :CocList outline<CR>

set statusline+=%{zoom#statusline()}
let g:zoom#statustext = 'zoomed'

nmap <Space>z <Plug>(zoom-toggle)

