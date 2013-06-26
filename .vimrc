" This .vimrc file was created by Vroom-0.29
set nocompatible
syntax on

map <SPACE> :n<CR>:<CR>gg
map <BACKSPACE> :N<CR>:<CR>gg
map R :!vroom -run %<CR>
map RR :!vroom -run %<CR>
map AA :call RunNow()<CR>:<CR>
map VV :!vroom -vroom<CR>
map QQ :q!<CR>
map OO :!open <cWORD><CR><CR>
map EE :e <cWORD><CR>
map !! G:!open <cWORD><CR><CR>
map ?? :e .help<CR>
set laststatus=2
set statusline=%-20f\ JavaScript\ on\ Vim

" Overrides from /Users/othree/.vroom/vimrc


" Values from slides.vroom config section. (under 'vimrc')
set nowrap
hi def link slideLink VisualNOS
hi def link slideStar Label
hi def link slideTitle Title
hi def link slideVimPlugin Identifier
hi def link slideVimTag SpecialKey
hi def link slideVimCommand SpecialKey
hi def link slideCommand SpecialKey
autocmd BufRead \d\+\l\= syntax match slideLink   "http[^ ]\+"
autocmd BufRead \d\+\l\= syntax match slideStar   "^\s*\zs\*"
autocmd BufRead \d\+\l\= syntax match slideTitle  " \{15,}\zs.*"
autocmd BufRead \d\+\l\= syntax match slideVimPlugin   "\<[A-Za-z-0-9]\+\.vim\>"
autocmd BufRead \d\+\l\= syntax match slideVimPlugin   "\<vim-[a-z-0-9]\+\>"
autocmd BufRead \d\+\l\= syntax match slideVimTag      "<.*>"
autocmd BufRead \d\+\l\= syntax match slideVimCommand  " :[a-z-]\+\>"
autocmd BufRead \d\+\l\= syntax match slideCommand  "`.*`"

