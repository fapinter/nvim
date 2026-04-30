return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6', -- Versão recomendada para estabilidade
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    -- Pega a função de setup do Telescope
    local telescope = require('telescope')
    local actions = require('telescope.actions')
    local builtin = require('telescope.builtin')

    -- Configuração do Telescope
    telescope.setup({
      defaults = {
        -- Mapeamentos de teclado globais
        mappings = {
          i = { -- Modo de inserção
            ['<C-j>'] = actions.move_selection_next,
            ['<C-k>'] = actions.move_selection_previous,
          },
        },
      },
			pickers = {
				find_files = {
					disable_devicons = false,
				},
			},
    })

    -- Mapeamentos de teclado para comandos do Telescope
    local map = vim.keymap.set

    -- Comando para encontrar arquivos
    map('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
    -- Comando para procurar texto em todos os arquivos
    map('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep' })
    -- Comando para alternar entre buffers abertos
    map('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })
    -- Comando para procurar comandos do Neovim
    map('n', '<leader>fh', builtin.help_tags, { desc = 'Help tags' })

    -- Se quiser, você pode adicionar um atalho para a lista de atalhos do Telescope
    map('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
  end
}
