local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
--
-- Remove whitespace on save
autocmd('BufWritePre', { pattern = '', command = ':%s/\\s\\+$//e' })

-- Enable spell checking for Git commit messages
autocmd('BufEnter', {
  desc = 'Enable spell checking on Git commit messages',
  group = augroup('git_spell', { clear = true }),
  callback = function(opts)
    if vim.bo[opts.buf].filetype == 'gitcommit' then
      vim.cmd 'set spell'
    end
  end,
})
