" ~/.config/nvim/init.vim
" Author: Maks Turtiainen (https://github.com/mjturt/)

" Asetuksia -----------------------------------

" Asetetaan väriteema
color gruvbox

" Hiirituki
set mouse=a

" Integroidaan vimin oma leikepöytä systeemin leikepöydän kanssas
set clipboard=unnamedplus

" Syntax hilighting päälle
syntax on
filetype plugin indent on

" Mene hakutulkseen sitä mukaan kun haetaan
set showmatch

" Highlightaa haun tulokset
set hlsearch

" Älykäs case-sensitivity
set ignorecase
set smartcase

" Sisennysasetuksia
set expandtab
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent
set smartindent

" Näppäinasetuksia ----------------------------

" Kopiointi Control-C:llä
vmap <C-c> y

" Triggeröi snippettiplugini
imap <C-o> <Plug>(neosnippet_expand_or_jump)
smap <C-o> <Plug>(neosnippet_expand_or_jump)
xmap <C-o> <Plug>(neosnippet_expand_target)

" Liiku bufferien välillä
map <S-h> :bprevious<CR>
map <S-l> :bnext<CR>

" Mäpätään leader-key
let mapleader="\<Space>"

" Korjaa sisennys koko tiedostossa
noremap <Leader>gg gg=G


" Pluginit -------------------------------------

call plug#begin('~/.config/nvim/plugins')

" Code completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Snippetit
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

" Lintteri
Plug 'neomake/neomake'

" Lisää tukea eri kielille
Plug 'sheerun/vim-polyglot'

" Koodin formatointi
Plug 'sbdchd/neoformat'

" Sublimesta tuttu multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Sulje sulkeet automaattisesti
Plug 'jiangmiao/auto-pairs'

" Todella kätevää kommentointia
Plug 'scrooloose/nerdcommenter'

" Editorconfig tuki
Plug 'editorconfig/editorconfig-vim'

" Greppaile vimistä
Plug 'wsdjeg/FlyGrep.vim'

" Osoitin samassa paikassa kun sulkiessa vimin
Plug 'farmergreg/vim-lastplace'

" Näytä hakutulosten määrä
Plug 'google/vim-searchindex'

" Visualisoi hexavärit
Plug 'lilydjwg/colorizer'

" Tagit (näyttää tiedostossa olevat funktiot listassa jne.)
Plug 'majutsushi/tagbar'
Plug 'ludovicchabant/vim-gutentags'

" Fuzzy finderi
Plug 'ctrlpvim/ctrlp.vim'

" IDEmäinen tiedostoselain
Plug 'scrooloose/nerdtree'

" Statuspaneeli
Plug 'vim-airline/vim-airline'

" GIT-integraatio
Plug 'lambdalisue/gina.vim'
Plug 'airblade/vim-gitgutter'

" Pari kivaa väriteemaa
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'

" Kielispesifejä plugineita (asenna mitä tarvitset)
Plug 'artur-shaik/vim-javacomplete2'
Plug 'StanAngeloff/php.vim'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'shawncplus/phpcomplete.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'moll/vim-node'
Plug 'epilande/vim-react-snippets'
" Sulje HTML tägit automaattisesti
Plug 'alvan/vim-closetag'

call plug#end()

" Pluginien asetuksia --------------------------------------

" Deoplete käyntiin
let g:deoplete#enable_at_startup = 1

" Lintteri tekemään automaattista tarkistusta
call neomake#configure#automake('nrwi', 500)

" Statuspaneeliin tabipalkki myös
let g:airline#extensions#tabline#enabled = 1

" Fuzzy finderin asetuksia
set wildignore+=vendor/*,docs/*,node_modules/*,components/*,build/*,dist/*,ttags
let g:ctrlp_map = '<leader><Tab>'
let g:ctrlp_cmd = 'CtrlP'
