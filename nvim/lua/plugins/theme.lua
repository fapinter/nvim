return {
  {
    'navarasu/onedark.nvim',
    lazy = false,      -- É crucial que o tema não seja carregado tardiamente (lazy-loaded)
    priority = 1000,   -- Prioridade alta para carregar antes de tudo
    config = function()
      require('onedark').setup({
        style = 'darker', -- Escolha entre 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
        
        code_style = {
          comments = 'italic', -- Deixa os comentários em itálico
          keywords = 'none',   -- Remove estilos extras das palavras-chave
          functions = 'none',
          variables = 'none',
        },
        plugins = {
          lualine = {
            style = 'darker',
          },
        },
      })
      require('onedark').load() 
    end,
  },
}
