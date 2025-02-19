require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "clangd",
    -- "cmake",
    "ts_ls",
    "html",
    "tailwindcss",
    "zls",
    "astro",
    "gopls",
    "templ",
    --"htmx",
    "cssls",
  }
})

local on_attach = function(_, _)

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, {})

end

vim.filetype.add({ extension = { templ = "templ" } })

require("lspconfig").lua_ls.setup({ on_attach = on_attach })
require("lspconfig").clangd.setup({ on_attach = on_attach })
require("lspconfig").cmake.setup({ on_attach = on_attach })
require("lspconfig").ts_ls.setup({ on_attach = on_attach })
require("lspconfig").html.setup({ on_attach = on_attach, filetypes = { "html", "templ" }})
require("lspconfig").tailwindcss.setup({ on_attach = on_attach })
require("lspconfig").zls.setup({ on_attach = on_attach })
require("lspconfig").astro.setup({ on_attach = on_attach })
require("lspconfig").gopls.setup({ on_attach = on_attach })
require("lspconfig").templ.setup({ on_attach = on_attach })
--require("lspconfig").htmx.setup({ on_attach = on_attach, filetypes = { "html", "templ" }})
require("lspconfig").cssls.setup({ on_attach = on_attach })
require("lspconfig").dartls.setup({
  cmd = { "dart", "language-server", "--protocol=lsp" },
  filetypes = { "dart" },
  init_options = {
    closingLabels = true,
    flutterOutline = true,
    onlyAnalyzeProjectsWithOpenFiles = true,
    outline = true,
    suggestFromUnimportedLibraries = true,
  },
  settings = {
    dart = {
      completeFunctionCalls = true,
      showTodos = true,
    },
  },
  on_attach = on_attach
})


local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.confirm({ select = true }),
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    --['<C-y>'] = cmp.mapping.complete(),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})

