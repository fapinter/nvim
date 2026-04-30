return {
  -- Instala e gerencia os language servers, formatters, etc.
  
	{
	  'neovim/nvim-lspconfig',
	  dependencies = {
	  
		-- Integração com o nvim-lspconfig
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
	  },
	  config = function()
	    -- Configuração do Mason
	    require('mason').setup()

	    -- Configuração da ponte entre Mason e LSP
	    require('mason-lspconfig').setup({
	      -- Lista de LSPs para instalar automaticamente
	      ensure_installed = {
		'lua_ls',
		'html',
		'cssls',
		'jsonls',
		'ts_ls',
		'angularls',
		'rust_analyzer',
		'pyright',
	      },
	      automatic_installation = true, -- Instala os LSPs automaticamente
	    })
	  end,
	},
}
