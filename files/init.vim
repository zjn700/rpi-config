" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'
"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/rainbow_parentheses.vim'
"Plug 'junegunn/fzf.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdcommenter'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'junegunn/seoul256.vim'
call plug#end()

" Config
" Fuzzy find
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" coc-prettier
"command! -nargs=0 Prettier :CocCommand prettier.formatFile

"vmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
highlight Pmenu ctermbg=lightyellow  guibg=gray

" Tabs
filetype plugin indent on

" set search to default to case insensitive, but change if upper case is in
" search term
set ignorecase
set smartcase
set scrolloff=3
" show existing tab with 4 spaces width:
set tabstop=2
" when indenting with '>', use 4 spaces width:
set shiftwidth=2
" On pressing tab, insert 4 spaces:
set expandtab
" show line numbers:
set number
" add extra line for error mesages on the cmd line:
set cmdheight=2
" show tab line even if only one tab is open:
set showtabline=2
" show all items after tabbing on cmd line:
set wildmenu
" set wildmode=list:longest,full
let g:seoul256_background = 234
colo seoul256


let g:mkdp_auto_start = 1
" let g:mkdp_port = '9909'
let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog  = '/usr/bin/python3'


" turn on rainbow_parentheses globally:
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" airline configuration:
let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='luna'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='sol'

let mapleader = ","
map <leader>rc :tabnew ~/.vimrc
map <leader>rs :source ~/.vimrc
map <leader>tn :tabnew

" Enable dictionary auto-completion in Markdown files and Git Commit Messages
" autocmd FileType markdown setlocal complete+=kspell
" autocmd FileType gitcommit setlocal complete+=kspell
" autocmd BufRead,BufNewFile *.md setlocal spell

augroup markdownSpell
    autocmd!
    autocmd FileType markdown setlocal spell
    autocmd FileType gitcommit setlocal complete+=kspell
    autocmd BufRead,BufNewFile *.md setlocal spell
    autocmd BufRead,BufNewFile *.txt setlocal spell
augroup END


iabbrev ,,, ```

" coc configuration
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
