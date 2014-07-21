if exists("b:did_mario_ftplugin")
    finish
endif
let b:did_mario_ftplugin = 1

map <buffer> Q :source %<CR>
