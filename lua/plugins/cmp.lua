return {
  -- Motor de Autocompletar
    'hrsh7th/nvim-cmp',
    dependencies = {
      -- Fontes do CMP
      'hrsh7th/cmp-nvim-lsp',   -- LSP (principal)
      'hrsh7th/cmp-buffer',     -- Palavras no buffer atual
      'hrsh7th/cmp-path',       -- Caminhos de arquivo
      'hrsh7th/cmp-cmdline',    -- Autocompletar na linha de comando

      -- Motor de Snippets (Substitua se usar outro, ex: vsnip)
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip', -- Integração de LuaSnip com CMP

      'onsails/lspkind.nvim',
    },
    -- Configuração do CMP (detalhes na próxima seção)
    config = function()
    	local cmp = require("cmp")

	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body)
			end,
		},
		mapping = cmp.mapping.preset.insert({
			['<C-b>'] = cmp.mapping.scroll_docs(-4),
			['<C-f>'] = cmp.mapping.scroll_docs(4),
			['<C-Space>'] = cmp.mapping.complete(),
			['<C-e>'] = cmp.mapping.abort(),
			['<CR>'] = cmp.mapping.confirm({ select = true }),
		}),

		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
		},
		{
			
			{ name = "buffer" },
			{ name = "path" },
		}),
		
	})
    end,
}
