local cmp = require('cmp')
local luasnip = require('luasnip')

return function()
    -- Obtém as capacidades para o LSP
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    cmp.setup({
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },
    })
end
