return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  lazy = true,
  config = function()
    require('nvim-treesitter.configs').setup {
      textobjects = {
        swap = {
          enable = true,
          swap_next = {
            ['<leader>a'] = '@parameter.inner', -- swap parameters/argument with next
          },
          swap_previous = {
            ['<leader>A'] = '@parameter.inner', -- swap parameters/argument with prev
          },
        },
      },
    }
  end,
}
