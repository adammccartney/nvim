if !exists('g:lspconfig')
    finish
endif

lua << EOF

local nvim_lsp = require('lspconfig')
local protocol require'vim.lsp.protocol'
require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}

EOF

