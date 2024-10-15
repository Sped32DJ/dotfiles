-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

--- If no prettier config file is found, the formatter will not be used
vim.g.lazyvim_prettier_needs_config = false

-- vimtex
vim.g.vimtex_view_method = "zathura"
vim.g.latex_view_general_viewer = "zathura"

vim.g.vimtex_autocomplete_enabled = 1 -- Enable autocomplete
vim.g.vimtex_compiler_method = "latexmk" -- Use latexmk as the compiler
vim.g.vimtex_compiler_latexmk = {
  build_dir = "", -- Leave empty for default
  callback = 1, -- Callback for successful compilation
  executable = "latexmk", -- Use latexmk
  options = {
    "-pdf", -- Compile to PDF
    "-pdflatex=lualatex", -- Use lualatex (optional)
  },
}

vim.cmd([[
augroup VimtexAutoCompile
    autocmd!
    autocmd BufWritePost *.tex silent! VimtexCompile
augroup END
]])
