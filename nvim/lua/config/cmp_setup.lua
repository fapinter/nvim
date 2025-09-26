-- Arquivo: lua/config/cmp_setup.lua

local cmp = require('cmp')
local luasnip = require('luasnip')
-- ... outras requires ...

return function()
    -- Esta é a função que é chamada em lua/plugins/cmp.lua
    
    -- Obtém as capacidades para o LSP
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    
    -- ***** ATENÇÃO! *****
    -- Essa linha não deve estar aqui. A configuração real do LSP deve ser 
    -- feita em 'lua/config/lsp/init.lua' (veja a seção 3).
    -- require('lspconfig').setup({ capabilities = capabilities })
    
    cmp.setup({
        -- ... todo o seu setup de mappings, sources e formatting aqui ...
        
        -- Exemplo:
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },
        -- ...
    })
    
end
