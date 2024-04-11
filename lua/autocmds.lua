local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
--
-- Remove whitespace on save
autocmd('BufWritePre', { pattern = '', command = ':%s/\\s\\+$//e' })

-- Enable spell checking for Git commit messages
autocmd('FileType', {
  desc = 'Enable spell checking on Git commit messages',
  pattern = 'gitcommit',
  group = augroup('git_spell', { clear = true }),
  callback = function(opts)
    vim.cmd 'set spell'
  end,
})
