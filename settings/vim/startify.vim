"Startify
nnoremap <C-s> :Startify<CR>
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0

let g:startify_custom_header = [
           \ '      _  ___   ________  ___   __  _________     ___  ___',
           \ '     / |/ / | / /  _/  |/  /  /  |/  / __/ /    |_  |( _ )',
           \ '    /    /| |/ // // /|_/ /  / /|_/ / _// /__  / __// _  |',
           \ '   /_/|_/ |___/___/_/  /_/  /_/  /_/___/____/ /____/\___/ ',
           \ '                                                      ',
           \]


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']    },
          \ { 'type': 'sessions',  'header': ['   Sessions'] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']},
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ ]
let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'p': '~/Coding/Python'},
            \ { 'u': '~/Coding/Python/Useful'},
            \ { 'c': '~/Coding/CP'},
            \ ]
