require('core')

vim.api.nvim_create_autocmd('BufWritePre', {
  group = vim.api.nvim_create_augroup('FormatOnSave', { clear = true }),
  pattern = { '*.go', '*.lua', '.ts', '.tsx' },
  callback = function(opts)
    require('keymap.utils').format_buffer(opts.buf)
  end,
})
