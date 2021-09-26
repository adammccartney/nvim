if !exists('g:loaded_lspsaga') | finish | endif

lua << EOF
local saga = require 'lspsaga'

saga.init_lsp_saga {
    error_sign = '',
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
    border_style = "round",
    }
EOF

nnoremap J <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap K <Cmd>Lspsaga hover_doc<CR>
inoremap <C-s> <Cmd>Lspsaga signature_help<CR>
nnoremap gh <Cmd>Lspsaga lsp_finder<CR>
