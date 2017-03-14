if $SHELL =~ 'bin/fish'
    " set shell=/bin/sh
endif
if exists("$TMUX")
    set mouse=a
endif

let mapleader = "\<Space>"
let maplocalleader = "\\"
silent filetype off
if has("win32")
    let s:vimpath=expand('~/config/nvim/')
else
    let s:vimpath=expand('~/.config/nvim/')
endif


let g:plugin_dir="~/.local/share/nvim/plugged"
call plug#begin(g:plugin_dir)

Plug 'altercation/vim-colors-solarized'   " color theme
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}               " complition engine
Plug 'arakashic/chromatica.nvim', {'do': ':UpdateRemotePlugins'}  " clang syntax highlite
" Plug 'ervandew/supertab'
Plug 'Shougo/neco-syntax'                 " sytax  completion
Plug 'Shougo/neoinclude.vim'              " include completion
Plug 'Shougo/neco-vim'                    " vimL completion
Plug 'Shougo/neopairs.vim'                " close complietion pairs
Plug 'tpope/vim-surround'
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-eunuch'                   " :Remove etc
Plug 'tpope/vim-tbone'
Plug 'tpope/git-bump'
Plug 'tpope/vim-sleuth'                   " guess file indention settings
Plug 'neomake/neomake'                    " async make
Plug 'kassio/neoterm'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'zchee/deoplete-clang'               " clang completion
Plug 'tmux-plugins/vim-tmux-focus-events' " tmux focus event fix
Plug 'roxma/vim-tmux-clipboard'           " tmux clipboard usage
Plug 'godlygeek/tabular'
Plug 'mhinz/vim-startify'
Plug 'haya14busa/incsearch.vim'
Plug 'kana/vim-operator-user'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-fold'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/vim-operator-flashy'
Plug 'dag/vim-fish'
Plug 'sjl/gundo.vim'
Plug 'kien/ctrlp.vim'
Plug 'ivalkeen/vim-ctrlp-tjump'
Plug 'tmux-plugins/vim-tmux'
Plug 'lybrown/vim-pasm'
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-easy-align'            " alignment as with tabularise, but as a normal mode command 'ga'
Plug 'rust-lang/rust.vim'
Plug 'sebastianmarkow/deoplete-rust'
" Plug 'mattreduce/vim-mix'
Plug 'tomlion/vim-solidity'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'avdgaag/vim-phoenix'
Plug 'tpope/vim-projectionist'


call plug#end()
syntax on
filetype plugin indent on

runtime Man.vim

let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized
hi! clear SignCoLumn
hi! link SignColumn LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange
hi! link GitGutterAdd DiffAdd
hi! link GitGutterChange DiffChange
hi! link GitGutterDelete DiffDelete
hi! link GitGutterChangeDelete DiffChange
hi! link TagbarSignature Type
hi! Search gui=underline

set nocompatible
set hidden
set wildmenu
set wildmode=longest:full,full
set scrolloff=2
set sidescrolloff=5
set autoread
set virtualedit=block
set expandtab
set tabstop=8
set shiftwidth=4
set softtabstop=4
set foldcolumn=4
set smartcase
set ignorecase
set completeopt=longest,menuone,preview


if version >= 704
    set softtabstop=-1
endif

if exists('+undofile')
    " set undofile
endif
if &encoding ==# 'latin1' && has('gui_running')
    set encoding=utf-8
endif
if &t_Co == 8 && $TERM !~# '^linux'
    set t_Co=16
endif
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
if &termencoding ==# 'utf-8' || &encoding ==# 'utf-8'
    let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u00b7"
endif
let g:snips_author = 'Arne Ehrlich'
let g:airline_enable_tagbar=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let javaScript_fold=1    " JavaScript
let perl_fold=1          " Perl
let php_folding=1        " PHP
let ruby_fold=1          " Ruby
let sh_fold_enabled=1    " sh
let xml_syntax_folding=1 " XML
let g:netrw_liststyle=3

if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
    runtime! macros/matchit.vim
endif


nmap     Y  y$
nnoremap &  :&&<CR>
xnoremap &  :&&<CR>
nmap     S  :%s/\v/g<LEFT><LEFT>
vmap     S  :s/\v/g<LEFT><LEFT>
cnoremap %% <C-R>=expand('%:h').'/'<cr>

nmap <silent><leader>p <Plug>yankstack_substitute_older_paste
nmap <silent><leader>P <Plug>yankstack_substitute_newer_paste

map      <leader>n          :Explore<cr>
nnoremap <silent><leader>s  :setlocal spell!<CR>
nnoremap <silent><leader>\| :TagbarToggle<cr>
nnoremap <silent><leader>ev :edit     $MYVIMRC<cr>
nnoremap <silent><leader>eg :edit     $MYGVIMRC<cr>
nnoremap <silent><leader>S  :Startify<cr>
nnoremap <silent><leader>E  :Ex<cr>
nnoremap <silent><leader>T  :execute  "tabnew\|Startify"<cr>
nnoremap <silent><leader>D  :bd<cr>
nnoremap <silent>Q          :bn<cr>
nnoremap <A-+>              :silent!  let &guifont = substitute(&guifont,':h\zs\d\+','\=eval(submatch(0)+1)','')<CR>
nnoremap <A-->              :silent!  let &guifont = substitute(&guifont,':h\zs\d\+','\=eval(submatch(0)-1)','')<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

augroup vimrc
        autocmd!
        autocmd BufWritePost $MYVIMRC source $MYVIMRC
        autocmd FileType make setl ts=8 sts=8 sw=8 noexpandtab
        autocmd BufReadPost fugitive://* setl bufhidden=delete
                autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$")
                    \| exe "normal! g`\""
                    \| endif
        autocmd User fugitive
                    \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$'
                    \|   nnoremap <buffer> .. :edit %:h<CR>
                    \| endif
augroup END

let g:ctrlp_tjump_only_silent = 1
nnoremap <c-]> :CtrlPtjump<cr>
vnoremap <c-]> :CtrlPtjumpVisual<cr>

let g:deoplete#enable_at_startup = 1

map  /  <Plug>(incsearch-forward)
map  ?  <Plug>(incsearch-backward)
map  g/ <Plug>(incsearch-stay)
map  y  <Plug>(operator-flashy)
nmap Y  <Plug>(operator-flashy)$

if has("mac") 
let s:llvmdir = glob("/usr/local/Cellar/llvm/*/",1,1)[0]
let g:deoplete#sources#clang#libclang_path = s:llvmdir."lib/libclang.dylib"
let g:chromatica#libclang_path=s:llvmdir."lib/libclang.dylib"
let g:deoplete#sources#clang#clang_header  = s:llvmdir."lib/clang"
end

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsEnableSnipMate = 0
" .local/share/nvim/plugged/vim-snippets/UltiSnips
let g:UltiSnipsSnippetDirectories = [ s:vimpath . "/ulti-snippets" ,g:plugin_dir . '/vim-snippets/Ultisnips', g:plugin_dir . '/vim-phoenix/ultisnips',         g:plugin_dir . '/vim-fish/UltiSnips'] 
