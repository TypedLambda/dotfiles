if $SHELL =~ 'bin/fish'
    " set shell=/bin/sh
endif
" if exists("$TMUX")
set mouse=a
" endif

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

" Plug 'altercation/vim-colors-solarized'   " color theme
Plug 'icymind/NeoSolarized'   " color theme
Plug 'sheerun/vim-polyglot'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}               " complition engine
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

Plug 'arakashic/chromatica.nvim', {'do': ':UpdateRemotePlugins'}  " clang syntax highlite
" Plug 'ervandew/supertab'
Plug 'Shougo/neco-syntax'                 " sytax  completion
Plug 'Shougo/neoinclude.vim'              " include completion
Plug 'Shougo/neco-vim'                    " vimL completion
Plug 'Shougo/neopairs.vim'                " close complietion pairs
Plug 'jiangmiao/auto-pairs'
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
let g:sleuth_automatic = 1
Plug 'neomake/neomake'                    " async make
Plug 'kassio/neoterm'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
" Plug 'zchee/deoplete-clang'               " clang completion
Plug 'tweekmonster/deoplete-clang2'               " clang completion
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
Plug 'timonv/vim-cargo'
" Plug 'mattreduce/vim-mix'
Plug 'tomlion/vim-solidity'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'Shougo/echodoc.vim'" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'avdgaag/vim-phoenix'
Plug 'tpope/vim-projectionist'
Plug 'ludovicchabant/vim-gutentags'
" Plug 'CoatiSoftware/vim-sourcetrail'
Plug 'Shougo/neoinclude.vim'
Plug 'skuro/plantuml-mode'
" Plug 'let-def/vimbufsync'
" Plug 'lilred/coquille'
Plug 'jvoorhis/coq.vim'
" Plug 'vim-scripts/CoqIDE'
Plug 'vimoutliner/vimoutliner'
" skip loading the nvim man functions. use vim-man
Plug 'vim-utils/vim-man'
let g:loaded_man = 1
" Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
" Plug 'junegunn/fzf'
Plug 'Shougo/denite.nvim'
Plug 'Shougo/echodoc.vim'

" neoterm
Plug 'kassio/neoterm'
Plug 'chrisbra/Colorizer'
Plug 'zchee/deoplete-jedi'  
" Plug 'LucHermitte/lh-vim-lib'
" Plug 'LucHermitte/VimFold4C'            " C / C++ folding 
Plug 'rhysd/vim-clang-format'
Plug 'lervag/vimtex'
" bug workaround. 
let g:deoplete#num_processes=1

call plug#end()
syntax on
filetype plugin indent on

let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termtrans = 1
set background=dark
colorscheme NeoSolarized
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
let g:airline_powerline_fonts=1
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

nmap <silent><cr> :nohls<cr>

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
nnoremap <leader>m  :Man
" retype man to Man, but only on the start of the normal commandline
cnoreabbrev <expr> man (getcmdtype() == ':' && getcmdline() =~ '^man$')? 'Man' : 'man'

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
        autocmd BufWritePost * Neomake

        autocmd BufReadPost /etc/rc.conf setfiletype sh
        " Maps Coquille commands to CoqIDE default key bindings
        " autocmd FileType coq call coquille#CoqideMapping()
        " Maps Coquille commands to <F2> (Undo), <F3> (Next), <F4> (ToCursor)
        " au FileType coq call coquille#FNMapping()
        autocmd BufRead,BufNewFile *.v set filetype=coq
        autocmd BufRead,BufNewFile,BufEnter *wpa_supplicant.conf 
            \ syntax match String /\v(psk|password|passwd)\s*\=\zs.*/ conceal cchar=X | 
            \ setl conceallevel=2 concealcursor=nc

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
elseif has("unix")
  let s:uname = system("uname -s")
  if s:uname =~ "Linux"
    let s:llvmdir = "/usr/lib/llvm-3.8/"
    let g:deoplete#sources#clang#libclang_path = s:llvmdir."lib/libclang.so"
    let g:chromatica#libclang_path=s:llvmdir."lib/libclang.so"
    let g:deoplete#sources#clang#clang_header  = s:llvmdir."include"
  endif
  if s:uname =~ "FreeBSD"
    let s:llvmdir = glob("/usr/local/llvm*/",1,1)[0]
    let g:deoplete#sources#clang#libclang_path = s:llvmdir."lib/libclang.so"
    let g:chromatica#libclang_path=s:llvmdir."lib/libclang.so"
    let g:deoplete#sources#clang#clang_header  = s:llvmdir."include"
  endif
endif
let g:chromatica#enable_at_startup=1
let g:chromatica#responsive_mode=1
let g:deoplete#sources#rust#racer_binary=$HOME."/cargo/bin/racer"
let g:deoplete#sources#rust#rust_source_path=$HOME.'/Source/rust/src'
let g:deoplete#sources#rust#show_duplicates=1
let g:deoplete#sources#rust#documentation_max_height=20
let g:deoplete#sources#elixir=['alchemist']
" let g:deoplete#sources#rust#disable_keymap=1
" nmap <buffer> gd <plug>DeopleteRustGoToDefinitionDefault
" nmap <buffer> K  <plug>DeopleteRustShowDocumentation

imap <expr><TAB>
	 \ neosnippet#expandable_or_jumpable() ?
	 \    "\<Plug>(neosnippet_expand_or_jump)" :
         \ 	  pumvisible() ? "\<C-n>" : "\<TAB>"

" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"

" " deoplete + neosnippet + autopairs changes
" let g:AutoPairsMapCR=0
" let g:deoplete#auto_complete_start_length = 2
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_smart_case = 1

" function! s:neosnippet_deoplete_cr()
"   if pumvisible()
"       call deoplete#close_popup()
"       if neosnippet#expandable_or_jumpable()
"           return "\<Plug>(neosnippet_expand_or_jump)"
"       end
"   else
"       return "\<CR>\<Plug>AutoPairsReturn"
"   endif
" endfunction

" imap <expr><TAB> pumvisible()?"\<C-n>":(neosnippet#expandable_or_jumpable()?"\<Plug>(neosnippet_expand_or_jump)":"\<TAB>")
" imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
" " imap <expr><CR> pumvisible() ?(deoplete#close_popup()) : "\<CR>\<Plug>AutoPairsReturn"
" imap <expr><CR> <SID>neosnippet_deoplete_cr()
let g:neomake_elixir_enabled_makers = ['mix', 'credo']

let g:startify_fortune_use_unicode = 1
let g:vo_modules_load = ':newhoist'

let g:gutentags_cache_dir = '~/.cache/gutentags_cache'
if executable("exctags")
    let g:gutentags_ctags_executable="exctags"
    let g:tagbar_ctags_bin = "exctags"
end
" disable tags generation for mac Homebrew, and FreeBSD source and portstree
let g:gutentags_exclude_project_root = ["/usr/local","/usr/ports","/usr/src"]
let g:gutentags_project_root = ["Makefile","Cargo.toml","mix.exs"]

if executable("lpr-cups")
    let &printexpr = substitute(&printexpr,"'lpr'","'lpr-cups'","")
end

let g:polyglot_disabled = ['latex']  
let g:python3_host_prog="python3.6"


function! s:add_erlang_include_path_to_deoplete()
    if executable("erl")
        if ! exists("g:deoplete#sources#clang#flags")
            let g:deoplete#sources#clang#flags=[]
        endif
        let l:erlang_path = '-I ' . system("erl -eval 'io:format(\"~s\", [lists:concat([code:root_dir(), \"/erts-\", erlang:system_info(version), \"/include\"])])' -s init stop -noshell")
        call filter(g:deoplete#sources#clang#flags,'v:val != "'.l:erlang_path.'"')
        call insert(g:deoplete#sources#clang#flags,l:erlang_path)
        echom "added ".l:erlang_path
        " echom g:deoplete#sources#clang#flags
    else
        echom "erl: command not found"
    endif
endfunction
command! ErlangDeopleteInclude call s:add_erlang_include_path_to_deoplete()
command! FreeBSDStyle call FreeBSD_Style()
