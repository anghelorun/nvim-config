set title   " Muestra nombre de archivo en la ventana del terminal
set number  " Numeros de linea
set mouse=a " Uso del raton

set nowrap  " No divide la linea si es muy larga

set cursorline      " Resalta linea actual
set colorcolumn=80  " Muestra la columna limite

" Indentacion a dos espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab	" Insertar espacios en lugar de <TABS>s

set hidden  " Permitir cambiar de buffers sin tener que guardarlos

set termguicolors " Activa true colors en la terminal
set background=dark " light
colorscheme elflord

syntax enable

" Codificacion estandar
set encoding=utf-8
set fileencoding=utf-8

" Directorio de plugins
call plug#begin('~/local/share/nvim/plugged')

" Aqui van los plugins a instalar
" Para instalar
" source %
" PlugInstall
" PlugUpgrade
"
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iCyMind/NeoSolarized'
Plug 'Yggdroot/indentLine'
Plug 'bling/vim-bufferline'
Plug 'yegappan/taglist'
Plug 'nvie/vim-flake8'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-surround'

call plug#end()

" A partir de aqui agregar configuraciones y mappings
let g:airline#extensions#tabline#enable = 1       " Mostrar buffers abiertos
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar solo el nombre del fichero
let g:airline_section_c = '%t'
let g:airline#extensions#tabline#formater = 'unique_tail'
" let g:airline#extensions#tabline#show_tabs = 0
" let g:airline_powerline_fonts = 1

set noshowmode " No mostrar el modo actual (ya lo muestra la barra de estado)

" No mostrar en estos buffers/archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']


let g:bufferline_modified = '+'

" Configuracion para NeoSolarized
set termguicolors
set background=dark
colorscheme NeoSolarized

map <F2> :NERDTreeToggle<CR>
map <F3> :Tlist<CR>
map <M-/> :bp<CR>
map <M-.> :bn<CR>
