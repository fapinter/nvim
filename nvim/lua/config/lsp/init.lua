-- Arquivo: lua/config/lsp/init.lua (ou onde você configura suas LSPs)

-- 1. Obtém as capacidades do CMP
local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- 2. Configuração global para LSPs (se você usa o mason-lspconfig)
local lspconfig = require('lspconfig')

lspconfig.setup({
    -- Esta linha injeta as capacidades do CMP em TODOS os servidores LSP!
    capabilities = cmp_capabilities,
})

-- 3. Configurações específicas de servidores (Exemplo: Lua Language Server)
lspconfig.lua_ls.setup({
    -- O 'capabilities = cmp_capabilities' já está incluso na chamada acima.
    settings = {
        Lua = {
            -- ... configurações do Lua LSP ...
        }
    }
})

-- ... adicione outros servidores LSP aqui ...
