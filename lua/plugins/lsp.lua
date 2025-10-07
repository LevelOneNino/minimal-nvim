return {
  {
    'williamboman/mason.nvim',
    lazy = false,
    opts = {},
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',
    },
    event = 'InsertEnter',
    config = function()
      require('luasnip.loaders.from_vscode').lazy_load()
      require('luasnip.loaders.from_vscode').lazy_load({ paths = vim.fn.stdpath("config") .. "/snippets" })
      local cmp = require('cmp')
      cmp.setup({
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'buffer' },
          { name = 'luasnip' },
          { name = 'render-markdown' },
        }),
        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.confirm(),
          ['<C-u>'] = cmp.mapping.scroll_docs(-4),
          ['<C-d>'] = cmp.mapping.scroll_docs(4),
        }),
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
      })
      cmp.setup.cmdline({ '/', '?' }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' }
        }
      })
      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' },
          { name = 'cmdline' }
        }),
        matching = { disallow_symbol_nonprefix_matching = false }
      })
    end
  },
  {
    'neovim/nvim-lspconfig',
    cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'jose-elias-alvarez/nvim-lsp-ts-utils',
    },
    config = function()
      local lsp_defaults = require('lspconfig').util.default_config
      lsp_defaults.capabilities = vim.tbl_deep_extend(
        'force',
        lsp_defaults.capabilities,
        require('cmp_nvim_lsp').default_capabilities()
      )
      vim.api.nvim_create_autocmd('LspAttach', {
        desc = 'LSP actions',
        callback = function(event)
          local opts = { buffer = event.buf }
          vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
          vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
          vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
          vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
          vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
          vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
          vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
          vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
          vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
          vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
        end,
      })
      require('mason-lspconfig').setup({
        ensure_installed = {
          -- "ts_ls",
          -- "pylsp",
          "lua_ls",
          -- "emmet_language_server",
          -- "cssls",
          -- "html",
        },
        handlers = {
          function(server_name)
            require('lspconfig')[server_name].setup({})
          end,
          ts_ls = function()
            require('lspconfig').ts_ls.setup({
              on_attach = function(client, bufnr)
                client.server_capabilities.semanticTokensProvider = nil
                require("nvim-lsp-ts-utils").setup({
                  filter_out_diagnostics_by_code = { 80001 },
                })
                require("nvim-lsp-ts-utils").setup_client(client)
              end,
              settings = {
                implementationsCodeLens = {
                  enabled = false
                }
              }
            })
          end,
          html = function()
            require('lspconfig').html.setup({
              settings = {
                html = {
                  format = {
                    indentInnerHtml = true,
                    maxPreserveNewLines = true,
                  }
                }
              }
            })
          end,
          lua_ls = function()
            require('lspconfig').lua_ls.setup({
              root_dir = vim.fn.getcwd()
            })
          end,
          pylsp = function()
            require("lspconfig").pylsp.setup({
              settings = {
                pylsp = {
                  plugins = {
                    pycodestyle = {
                      ignore = { "E265" },
                      maxLineLength = 111
                    },
                    autopep8 = {
                      enabled = false
                    },
                    yapf = {
                      enabled = true,
                    },
                  }
                }
              }
            })
          end
        }
      })
    end
  }
}
