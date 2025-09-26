return {
  'lewis6991/gitsigns.nvim',
  tag = 'release', -- É uma boa prática fixar a tag para estabilidade
  event = { 'BufReadPre', 'BufNewFile' }, -- Carrega o plugin quando um buffer é aberto

  config = function()
    require('gitsigns').setup({
      -- Desabilitar a exibição na barra lateral por padrão (opcional)
      signs = {
        add          = { text = 'a' },
        change       = { text = 'c' },
        delete       = { text = 'd' }, -- Você pode usar qualquer ícone/texto aqui
        topdelete    = { text = 'td' },
        changedelete = { text = 'cd' },
      },
      current_line_blame = true, -- Mostrar "git blame" na linha atual

      -- Funções de mapeamento de teclas
      on_attach = function(bufnr)
        local gs = require('gitsigns')

        local function map(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end

        -- [Navegação] Pular para a próxima/anterior alteração
        map('n', ']g', function()
          if vim.wo.diff then return ']c' end
          gs.next_hunk()
        end, { desc = 'Próximo bloco (hunk) de alteração' })

        map('n', '[g', function()
          if vim.wo.diff then return '[c' end
          gs.prev_hunk()
        end, { desc = 'Bloco (hunk) de alteração anterior' })

        -- [Ações] Adicionar e reverter (staging/resetting)
        map({ 'n', 'v' }, '<leader>gs', ':Gitsigns stage_hunk<CR>', 'Adicionar Hunk')
        map({ 'n', 'v' }, '<leader>gr', ':Gitsigns reset_hunk<CR>', 'Reverter Hunk')

        -- [Opções Visuais]
        map('n', '<leader>gb', gs.toggle_current_line_blame, 'Alternar Blame da Linha')
        map('n', '<leader>gp', gs.preview_hunk, 'Pré-visualizar Hunk')
      end,
    })
  end
}
