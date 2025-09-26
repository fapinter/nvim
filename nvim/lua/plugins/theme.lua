return {
  -- ... outros plugins ...

  -- Tema (One Dark)
  {
    'navarasu/onedark.nvim',
    lazy = false,      -- É crucial que o tema não seja carregado tardiamente (lazy-loaded)
    priority = 1000,   -- Prioridade alta para carregar antes de tudo
    config = function()
      require('onedark').setup({
        -- 1. Opções Principais
        style = 'darker', -- Escolha entre 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
        
        -- 2. Estilos de Código (Opcional)
        code_style = {
          comments = 'italic', -- Deixa os comentários em itálico
          keywords = 'none',   -- Remove estilos extras das palavras-chave
          functions = 'none',
          variables = 'none',
        },

        -- 3. Configuração de Plugins (Opcional, mas recomendado)
        plugins = {
          -- Garante que o Lualine (se você usa) use o tema onedark
          lualine = {
            style = 'darker',
          },
          -- Adicione outros plugins que você usa (ex: telescope, cmp, nvim-tree)
        },
      })
      
      -- Ativa o tema!
      require('onedark').load() 
      
      -- ALTERNATIVA: Se preferir o comando Vim tradicional:
      -- vim.cmd.colorscheme 'onedark' 
    end,
  },

  -- ... continue com o restante dos seus plugins
}
