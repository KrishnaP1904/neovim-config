 -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  -- 
  local langserver = {
      'html',
      'cssls',
      'ts_ls',
      'pylsp',
      'lua_ls',
      'pyre',
      'eslint'
  }

  for _, server in ipairs(langserver) do
      require'lspconfig'[server].setup{
          capabilities = capabilities
      }
  end

--[[
require('lspconfig').html.setup {
    capabilities = capabilities
  }
require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

require'lspconfig'.ts_ls.setup{
    capabilities = capabilities
}

require'lspconfig'.pylsp.setup {
    capabilities = capabilities
}

require'lspconfig'.lua_ls.setup{
    capabilities = capabilities
}

require'lspconfig'.pyre.setup{
    capabilities = capabilities
}
--]]

require'lspconfig'.volar.setup{
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
}

local lspconfig = require('lspconfig')
local capabilitie = vim.lsp.protocol.make_client_capabilities()
capabilitie.textDocument.completion.completionItem.snippetSupport = true

lspconfig.emmet_ls.setup({
    -- on_attach = on_attach,
    capabilities = capabilitie,
    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})
