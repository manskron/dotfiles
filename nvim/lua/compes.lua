vim.o.completeopt = "menuone,noselect"

require("compe").setup({
  enabled = true,
  autocomplete = true,
  debug = false,
  min_length = 1,
  preselect = "always", -- changed to "enable" to prevent auto select
  throttle_time = 80,
  source_timeout = 200,
  incomplete_delay = 400,
  max_abbr_width = 100,
  max_kind_width = 100,
  max_menu_width = 100,
  documentation = {
    border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
  },

  source = {
    path = true,
    buffer = true,
    calc = true,
    nvim_lsp = true,
    nvim_lua = false,
    vsnip = false,
    luasnip = true,
    treesitter = false,
    emoji = true,
    spell = true,
  },
})

local function complete()
  if vim.fn.pumvisible() == 1 then
    return vim.fn["compe#confirm"]({ keys = "<cr>", select = true })
  else
    return require("nvim-autopairs").autopairs_cr()
  end
end

vim.cmd([[autocmd User CompeConfirmDone silent! lua vim.lsp.buf.signature_help()]])
