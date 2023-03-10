 " ____________________________________________________
" /\                                                   \
" \_| oooooo   oooooo     oooo  o8o                    |
 "  |  `888.    `888.     .8'   `'                     |
 "  |   `888.   .8888.   .8'   oooo  ooo. .oo.  .oo.   |
 "  |    `888  .8'`888. .8'    `888  `888P"Y88bP"Y88b  |
 "  |     `888.8'  `888.8'      888   888   888   888  |
 "  |      `888'    `888'       888   888   888   888  |
 "  |       `8'      `8'       o888o o888o o888o o888o |
 "  |                                                  |
 "  |                                                  |
 "  |                                                  |
 "  |   _______________________________________________|_
 "   \_/_________________________________________________/
" ┌─────────────────────────┐
" │ Use a light gray cursor │
" └─────────────────────────┘
" if &term =~ "xterm\\|rxvt"
"   " use an orange cursor in insert mode
"   let &t_SI = "\<Esc>]12;gray\x7"
"   " use a red cursor otherwise
"   let &t_EI = "\<Esc>]12;gray\x7"
"   silent !echo -ne "\033]12;gray\007"
"   " reset cursor when vim exits
"   autocmd VimLeave * silent !echo -ne "\033]112\007"
"   " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
" endif
" ┌──────────────────────────────┐
" │ fix bullshit coc.nvim problem│
" └──────────────────────────────┘
" inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

inoremap <silent><expr> <tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ checkbackspace() ? "\<tab>" :
      \ coc#refresh()
inoremap <expr><s-tab> coc#pum#visible() ? coc#pum#prev(1) : "\<c-h>"
" ┌───────────────┐
" │Encoding & Font│
" └───────────────┘
set encoding=utf-8

ab tea ☕
ab ptr ▶
ab cube ▄
ab cube2 ■
ab ok ✓
ab star ★

call plug#begin()
Plug 'https://github.com/lambdasonly/VimwikiGraph', { 'for': 'vimwiki', 'do': './install.sh' }
Plug 'https://github.com/jez/vim-superman.git'
" Plug 'kovetskiy/sxhkd-vim'
Plug 'azabiong/vim-highlighter'
" Plug 'solyarisoftware/Highlight.vim'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'https://github.com/chikamichi/mediawiki.vim.git'
" EMOJI
Plug 'terroo/vim-simple-emoji'
" STATUSLINE
Plug 'itchyny/lightline.vim'
"COLORS
Plug 'base16-project/base16-vim'
Plug 'https://github.com/tjammer/blayu.vim.git'
Plug 'https://github.com/morhetz/gruvbox.git'
"======================
Plug 'junegunn/goyo.vim'
Plug 'https://github.com/tpope/vim-commentary.git'
" ENHANCES F
Plug 'https://github.com/rhysd/clever-f.vim.git'
" GIVES COUNTS TO F
" LEADER w TO TRIGGER WORD MOTION
" <lEADER>F{CHAR} TO MOVE TO {CHAR}
" MAP  <lEADER>F <pLUG>(EASYMOTION-BD-F)
nmap <Leader>F <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
" nmap s <Plug>(easymotion-overwin-f2)
" Move to line
" map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
" map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>W <Plug>(easymotion-overwin-w)
Plug 'https://github.com/easymotion/vim-easymotion.git'
"To exchange two words, place your cursor on the first word and type cxiw. Then move to the second word and type cxiw again. Note: the {motion} used in the first and second use of cx don't have to be the same.
Plug 'https://github.com/tommcdo/vim-exchange.git'
" EASIER SHELL COMMANDS FROM VIM SHELL
Plug 'https://github.com/tpope/vim-eunuch.git'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'https://github.com/ackyshake/VimCompletesMe.git'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/ap/vim-css-color.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/godlygeek/tabular.git'
Plug 'mhinz/vim-startify'
Plug 'voldikss/vim-floaterm'
" Plug 'https://github.com/Yggdroot/indentLine.git' 
" RANGE AND SUBSTITUTE PREVIEW 
Plug 'https://github.com/markonm/traces.vim.git'
Plug 'vimwiki/vimwiki'
Plug 'https://github.com/rstacruz/sparkup.git'
Plug 'https://github.com/vim-scripts/loremipsum.git'
Plug 'https://github.com/907th/vim-auto-save.git'
Plug 'https://github.com/Valloric/MatchTagAlways.git'
" SYNTAX CHECK
" Plug 'https://github.com/vim-syntastic/syntastic.git'
" MARKDOWN
Plug 'SidOfc/mkdx'
Plug 'preservim/vim-markdown'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/markdown-preview.vim'
Plug 'https://github.com/preservim/tagbar.git'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
call plug#end()

" ┌──────┐
" │Cursor│
" └──────┘
" if &term!='xterm'
"     let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"     let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" endif
" set mouse=a
set guicursor+=a:blinkon0
set guifont=Fira\ Code\ 12
" ┌─────────┐
" │Clipboard│
" └─────────┘
" set clipboard=unnamedplus 
set clipboard=unnamedplus,unnamed
" ┌────────────┐
" │Usual Things│
" └────────────┘
nnoremap ; :

"For folds to be saved on exit
" augroup remember_folds
"  autocmd!
" autocmd BufWinLeave * mkview
"  autocmd BufWinEnter * silent! loadview
" augroup END

  if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  endif

"undo history
if has('persistent_undo')
    " Save all undo files in a single location (less messy, more risky)...
    set undodir=$HOME/.vimhis

    " Save a lot of back-history...
    set undolevels=5000

    " Actually switch on persistent undo
    set undofile

endif

set emoji
set autochdir
set hidden
set ma
set listchars=tab:>~,nbsp:_,trail:.
set list
set conceallevel=0
set concealcursor=n
set so=6
set nocompatible
set modifiable
set autoread
set cmdheight=1 
set foldenable
set foldmethod=marker
set path+=**
set noswapfile
set autoindent
set ic
set incsearch
set smartcase
set lazyredraw
set noerrorbells
set novisualbell
set t_vb=
set noeb vb t_vb=
syntax on
set relativenumber
set expandtab
set shiftwidth=4
set tabstop=4
filetype plugin indent on
set hlsearch
noremap <silent><esc> <esc>:noh<CR><esc>
set termbidi
set autowrite
set autowriteall
set laststatus=2
set noshowmode
set colorcolumn=80
" set cursorline
"set noshowmatch
"for backspace not working in Gvim or in Windows
"set backspace=2
"set cursorline
" ┌─────┐
" │Theme│
" └─────┘
set background=dark
" Inspect $TERM instad of t_Co
 if &term =~ '256color'
   " Enable true (24-bit) colors instead of (8-bit) 256 colors.
   if has('termguicolors')
     let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
     let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
     set termguicolors
   endif
" colorscheme lunaperche
 colorscheme base16-horizon-dark 
    " colorscheme base16-spaceduck
 endif

if has('gui_running')
    set mouse=a
endif
" if has('gui_running')
"     " GUI colors
"     colorscheme base16-horizon-dark
" else
"     " Non-GUI (terminal) colors
"     colorscheme base16-horizon-dark

" endif

let g:pencil_higher_contrast_ui = 0   " 0=low (def), 1=high
"Indentline follow theme change to 1 if colors are fucked
let g:indentLine_setColors = 1

" ┌───────────────────────────────────┐
" │Woland Netrw (FileManager) Settings│
" └───────────────────────────────────┘
"Uncomment all to use netrw instead of nerdtree 
"naturally you must delete the lines about nerdtree
"line to uncomment are marked with 2 

autocmd filetype netrw call Netrw_mappings()
function! Netrw_mappings()
  noremap <buffer>% :call CreateInPreview()<cr>
endfunction
function! CreateInPreview()
  let l:filename = input("please enter filename: ")
  execute 'pedit ' . b:netrw_curdir.'/'.l:filename
endfunction
function! CreateInPreview()
  let l:filename = input("please enter filename: ")
  execute 'silent !touch ' . b:netrw_curdir.'/'.l:filename 
  redraw!
endf
let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Vexplore
    endif
endfunction

" augroup projectdrawer
"   autocmd!
"   autocmd vimenter * :Vexplore | wincmd p
" augroup end
"close if only remaining buffer
autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif
"Start with dotfiles hidden
let ghregex='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_list_hide=ghregex
"Usual things 
let g:netrw_special_syntax = 3
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15
let g:netrw_keepdir=0

" ┌────────────────────────┐
" │for lightline status bar│
" └────────────────────────┘
" function! WordCount()
"     let currentmode = mode()
"     if !exists("g:lastmode_wc")
"         let g:lastmode_wc = currentmode
"     endif
"     " if we modify file, open a new buffer, be in visual ever, or switch modes
"     " since last run, we recompute.
"     if &modified || !exists("b:wordcount") || currentmode =~? '\c.*v' || currentmode != g:lastmode_wc
"         let g:lastmode_wc = currentmode
"         let l:old_position = getpos('.')
"         let l:old_status = v:statusmsg
"         execute "silent normal g\<c-g>"
"         if v:statusmsg == "--No lines in buffer--"
"             let b:wordcount = 0
"         else
"             let s:split_wc = split(v:statusmsg)
"             if index(s:split_wc, "Selected") < 0
"                 let b:wordcount = str2nr(s:split_wc[11])
"             else
"                 let b:wordcount = str2nr(s:split_wc[5])
"             endif
"             let v:statusmsg = l:old_status
"         endif
"         call setpos('.', l:old_position)
"         return b:wordcount
"     else
"         return b:wordcount
"     endif
" endfunction

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \ 'right': [ [ 'lineinfo' ], [ 'percent', 'wordcount' ], [ 'filetype' ] ],
      \ 'left': [ [ 'mode' ], [ 'readonly', 'absolutepath', 'modified' ] ],
      \ },
      \ 'component_function': {
      \ 'wordcount': 'WordCount',
      \ },
      \ 'component': {
      \ 'charvaluehex': '0x%B',
      \ 'lineinfo': '%l\%L',
      \ }
      \ }

let g:lightline.separator={ 'left': "\ue0b0", 'right': "\ue0b2" }
let g:lightline.subseparator={ 'left': "\ue0b1", 'right': "\ue0b3" }
" ┌──────────────────────┐
" │Settings for syntastic│
" └──────────────────────┘
let g:syntastic_always_populate_loc_list = 1
"0 off
"automatically.
"1 the error window will be automatically opened when errors are
"detected, and closed when none are detected.
"2 the error window will be automatically closed when no errors are
"detected, but not opened automatically.
"3 the error window will be automatically opened when errors are
"detected, but not closed automatically.
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"Colors have been tested with gruvbox, modify to your liking
"Error sign on the right
highlight SyntasticErrorSign ctermfg=red ctermbg=yellow
"Error line highlight
highlight SyntasticErrorLine ctermbg=black

let g:syntastic_auto_jump = 3
"0 off
"1 the cursor will always jump to the first issue detected,
"regardless of type.
"2 the cursor will jump to the first issue detected, but only if
"this issue is an error. 
"3 the cursor will jump to the first error detected, if any. If
"all issues detected are warnings, the cursor won't jump. 
" ┌───────────┐
" │Spell Check│
" └───────────┘
map <F6> :setlocal spell! spelllang=en_us<cr>
"set spell spelllang=en_us
hi SpellBad ctermfg=red guifg=red

function! Fixspell()
    normal! 1z=
endfunction 
" nnoremap <leader>z :call Fixspell()<CR>
nmap <leader>z :normal 1z=
nmap <leader>l :normal! 1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w<Cr>
ru macros/justify.vim 
"---------------------------------------
set wildmode=longest,list,full
" ┌────────────────┐
" │Custom Mappings │
" └────────────────┘
"LEADER"
"leader key is space
let mapleader =" "
" set timeoutlen=300
nnoremap <C-m> :exe 'normal! '.(virtcol('$')/2).'\|'<cr>

" nmap <leader>f :.!toilet -w 200 -f small<Cr>
" nmap <leader>F :.!toilet -w 200 -f standard<Cr>
nmap <leader>\ :.!toilet -w 200 -f term -F border<Cr>
"Good fonts with figlet
".!figlet -w 200 -f ascii___ future emboss

map <leader>p :PresentingStart<Cr>
nnoremap <leader>n :NERDTree <Cr>
" nnoremap <leader>e :call ToggleNetrw()<Cr>
nmap <leader>e <Cmd>CocCommand explorer<CR>

nnoremap <leader>v :FloatermNew vifm <Cr>
" nnoremap <leader>r :FloatermNew ranger <Cr>
nnoremap <leader>T :tabnew file <Cr>
nnoremap <leader>mk :mkview <Cr>
map <F2> :Bracey <Cr>
map <F3> :BraceyReload <Cr>
map <F4> :BraceyStop <Cr>
nnoremap <leader>d :g/^\(.*\)$\n\1/d<Cr>
nnoremap <leader>m :MRU<Cr>
nnoremap <leader>i :Startify <CR> 
"adding empty line above and below cursor
nnoremap <leader>S :normal! O<esc>jo<esc><Cr>
map <leader>[ :call append(line('.')-1, '')<CR>
map <leader>] :call append(line('.'), '')<CR>
"Quick save and source 
nmap <nowait><leader>w :w!<cr>
nnoremap <leader>op :source %<Cr>

nnoremap <leader>u :normal! kmmjdd{p'm<Cr> 
" nnoremap j jzz
" nnoremap k kzz
"--------------------------
vnoremap <leader>k :m .-2<CR>
vnoremap <leader>j :m .+1<CR>
nmap <leader>k :m .-2<CR>
nmap <leader>j :m .+1<CR>
"--------------------------------------
inoremap <nowait> jj <esc>
nnoremap bs i#!/bin/bash<ESC>0
nnoremap be i#!/usr/bin/env bash<ESC>0
nnoremap cn iconsole.log<ESC>0
nmap br i<br><ESC>0
" ┌──────────────────────────────────────┐
" │Keybindings for sane buffer navigation│
" └──────────────────────────────────────┘
set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <C-LEFT> <C-w>h
map <C-DOWN> <C-w>j
map <C-UP> <C-w>k
map <C-RIGHT> <C-w>l

map <leader>R <C-w>R  "rotate window up/left
map <leader>r <C-w>r  "rotate window down/right
"
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l

inoremap <A-b> <C-o>b
inoremap <A-w> <C-o>w

" use shift and vim keys to rotate splits
" map <s-H> <C-w>H
" map <s-J> <C-w>J
" map <s-K> <C-w>K
" map <s-L> <C-w>L

" map <s-q> :set keymap= <Cr>
" map <s-p> :set keymap=persian <Cr>

" map <leader>f :set keymap=persian<cr>
" map <ESC><ESC> :set keymap=<cr>

"shift arrows to resize splits
map <s-LEFT> :vertical resize +5 <Cr>
map <s-RIGHT> :vertical resize -5 <Cr>
map <s-UP> :resize +5 <Cr>
map <s-DOWN> :resize -5 <Cr>
"Alt arrows to go to next/previous tab
nnoremap <M-Left> :tabprevious<CR>
nnoremap <M-Right> :tabnext<CR>
nnoremap <M-h> :tabprevious<CR>
nnoremap <M-l> :tabnext<CR>
"Keybindings for tab navigation with leader and number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
nnoremap <leader>x :tabclose<Cr>
map <leader>tm :tabmove<Cr>
"others
map <nowait><leader>c :Colors<Cr>
map <leader>b :Buffers<Cr>
map <leader>s :Files<Cr>
" map <leader>W :Windows<Cr>
map <leader>H :History<Cr>
map <leader>Hc :History:<Cr>
map <leader>M :Maps<Cr>
map <leader>t :FloatermToggle<Cr>
" map <leader>h :WhichKey! g:dict<Cr>
nmap <leader>h :Chmod +x <Cr>

" ┌────────────────────────┐
" │Commands and filemanager│
" └────────────────────────┘
:command Ra !ranger
:command Vi !vifm
:command Na tabnew file
" ┌───────────┐
" │HTML Indent│
" └───────────┘
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_attribute = 1
let g:html_indent_inctags = "html,body,head,tbody"
"A skeleton can be pre-defined for any file with a fomat
"Below setting force vim to paste a basic html skeleton whenever
"vim is used to make a .html file. The skeleton.xml file must exist 
"in the path specified below
augroup Xml
    au BufNewFile *.html 0r ~/.vim/skeleton.xml
augroup end
" ┌────────────────────┐
" │MARKDOWN LIVE SERVER│
" └────────────────────┘
" for normal mode
nmap <silent> <F8> <Plug>MarkdownPreview
" for insert mode
imap <silent> <F8> <Plug>MarkdownPreview
" for normal mode
nmap <silent> <F9> <Plug>StopMarkdownPreview
" for insert mode
imap <silent> <F9> <Plug>StopMarkdownPreview
" ┌─────────────────────────────┐
" │OPTIONS FOR THE STARTIFY MENU│
" └─────────────────────────────┘

        " \ startify#pad(split(system('jp2a --size=50x20 /home/woland/Pictures/vim.png' ), '\n'))

        " \ startify#pad(split(system('artem --size 50 /home/woland/Pictures/vim.png' ), '\n'))



let g:startify_custom_header =
        \ startify#pad(split(system('figlet -f roman "Vim" | boxes -d parchment' ), '\n'))
       " \ startify#pad(split(system('cowsay -f daemon wim' ), '\n'))
  let g:startify_custom_footer =
           \ ['', "Once you get in, There is no getting out  ", '']
"Bookmarks. Syntax is clear.add yours
let g:startify_bookmarks = [ {'I': '~/.config/i3/config'},{'L': '~/lorem.html'},{'B': '~/.bashrc'},{'V': '~/.vimrc'}]
    let g:startify_lists = [
          \ { 'type': 'bookmarks' , 'header': ['   Bookmarks']      } ,
          \ { 'type': 'files'     , 'header': ['   Recent'   ]      } ,
          \ { 'type': 'sessions'  , 'header': ['   Sessions' ]      } ,
          \ { 'type': 'commands'  , 'header': ['   Commands' ]      } ,
          \ ]

hi StartifyBracket ctermfg=240
hi StartifyFile    ctermfg=147
hi StartifyFooter  ctermfg=240
hi StartifyHeader  ctermfg=114
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240

" ┌──────────────┐
" │FLOATERMTOGGLE│
" └──────────────┘
let g:floaterm_autohide = 0
let g:floaterm_autoclose = 2
let g:floaterm_height = 30
let g:floaterm_width  = 120
" ┌────────┐
" │SNIPPETS│
" └────────┘
"Use END key to trigger the snippets, default was TAB but that conflicts with
"the Completion trigger see :h keycodes to change this to sth else 
"use Ctrl j and k to move visually within the snippet that was just triggered
"Ctrl PGDN lists the available snippets
let g:UltiSnipsExpandTrigger='<C-j>'
let g:UltiSnipsListSnippets='<c-PageDown>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

let g:copypath_copy_to_unnamed_register = 1

let g:clever_f_across_no_line=0
let g:clever_f_ignore_case=1
" let g:clever_f_highlight_timeout_ms=500
let g:clever_f_mark_char_color='StatuslineTermNC'
let g:scratch_autohide=1
let g:scratch_persistence_file='/home/woland/.vim/scratch.txt'
" let g:SignatureMarkTextHL = "StatuslineTerm"
let g:SignatureEnabledAtStartup=0

"Table mode
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'
" ┌──────┐
" │Tagbar│
" └──────┘
let g:tagbar_type_vimwiki = {
          \   'ctagstype':'vimwiki'
          \ , 'kinds':['h:header']
          \ , 'sro':'&&&'
          \ , 'kind2scope':{'h':'header'}
          \ , 'sort':0
          \ , 'ctagsbin':'/home/woland/vwtags.py'
          \ , 'ctagsargs': 'default'
          \ }

let g:vimwiki_global_ext = 0
let g:vimwiki_root_dir = '/home/woland/vimwiki/'

" autocmd WinEnter,FileType html,wiki colorscheme lunaperche
" autocmd WinEnter,FileType *,html,css        colorscheme base16-tokyo-night-dark
" autocmd BufEnter * if match(@%,'/home/woland/vimwiki/')>=0 | colorscheme base16-tokyo-night-dark | else | colorscheme base16-horizon-dark | endif

"if exists("g:loaded_restore_view")
"    finish
"endif
"let g:loaded_restore_view = 1
"
"if !exists("g:skipview_files")
"    let g:skipview_files = []
"endif
"
"function! MakeViewCheck()
"    if &l:diff | return 0 | endif
"    if &buftype != '' | return 0 | endif
"    if expand('%') =~ '\[.*\]' | return 0 | endif
"    if empty(glob(expand('%:p'))) | return 0 | endif
"    if &modifiable == 0 | return 0 | endif
"    if len($TEMP) && expand('%:p:h') == $TEMP | return 0 | endif
"    if len($TMP) && expand('%:p:h') == $TMP | return 0 | endif
"
"    let file_name = expand('%:p')
"    for ifiles in g:skipview_files
"        if file_name =~ ifiles
"            return 0
"        endif
"    endfor
"
"    return 1
"endfunction
"
"augroup AutoView
"    autocmd!
"    " Autosave & Load Views.
"    autocmd BufWritePre,BufWinLeave ?* if MakeViewCheck() | silent! mkview | endif
"    autocmd BufWinEnter ?* if MakeViewCheck() | silent! loadview | endif
"augroup END

" autocmd InsertLeave * write
