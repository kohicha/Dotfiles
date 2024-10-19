return {  
  --CATPPUCCIN 
  {
    'nvim-tree/nvim-web-devicons'
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  },
  {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
  {
    "wuelnerdotexe/vim-astro"
  },
  {
    "zbirenbaum/copilot-cmp",
    config = function ()
      require("copilot_cmp").setup()
    end,
    dependencies = {
      "zbirenbaum/copilot.lua",
      cmd = "Copilot",
      config = function()     
      require("copilot").setup({
          suggestion = { enabled = false },
          panel = { enabled = false },
        })
      end,
    }
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            background = {
                light = "latte",
                dark = "mocha",
            },
            color_overrides = {
                latte = {
                    rosewater = "#c14a4a",
                    flamingo = "#c14a4a",
                    red = "#c14a4a",
                    maroon = "#c14a4a",
                    pink = "#945e80",
                    mauve = "#945e80",
                    peach = "#c35e0a",
                    yellow = "#b47109",
                    green = "#6c782e",
                    teal = "#4c7a5d",
                    sky = "#4c7a5d",
                    sapphire = "#4c7a5d",
                    blue = "#45707a",
                    lavender = "#45707a",
                    text = "#654735",
                    subtext1 = "#73503c",
                    subtext0 = "#805942",
                    overlay2 = "#8c6249",
                    overlay1 = "#8c856d",
                    overlay0 = "#a69d81",
                    surface2 = "#bfb695",
                    surface1 = "#d1c7a3",
                    surface0 = "#e3dec3",
                    base = "#f9f5d7",
                    mantle = "#f0ebce",
                    crust = "#e8e3c8",
                },
                mocha = {
                    rosewater = "#ea6962",
                    flamingo = "#ea6962",
                    red = "#ea6962",
                    maroon = "#ea6962",
                    pink = "#d3869b",
                    mauve = "#d3869b",
                    peach = "#e78a4e",
                    yellow = "#d8a657",
                    green = "#a9b665",
                    teal = "#89b482",
                    sky = "#89b482",
                    sapphire = "#89b482",
                    blue = "#7daea3",
                    lavender = "#7daea3",
                    text = "#ebdbb2",
                    subtext1 = "#d5c4a1",
                    subtext0 = "#bdae93",
                    overlay2 = "#a89984",
                    overlay1 = "#928374",
                    overlay0 = "#595959",
                    surface2 = "#4d4d4d",
                    surface1 = "#404040",
                    surface0 = "#292929",
                    base = "#1d2021",
                    mantle = "#191b1c",
                    crust = "#141617",
                },
            },
            transparent_background = true,
            show_end_of_buffer = false,
            integration_default = false,
            integrations = {
                barbecue = { dim_dirname = true, bold_basename = true, dim_context = false, alt_background = false },
                cmp = true,
                gitsigns = true,
                hop = true,
                illuminate = { enabled = true },
                native_lsp = { enabled = true, inlay_hints = { background = true } },
                neogit = true,
                neotree = true,
                semantic_tokens = true,
                treesitter = true,
                treesitter_context = true,
                vimwiki = true,
                which_key = true,
            },
            highlight_overrides = {
                all = function(colors)
                    return {
                        CmpItemMenu = { fg = colors.surface2 },
                        CursorLineNr = { fg = colors.text },
                        FloatBorder = { bg = colors.base, fg = colors.surface0 },
                        GitSignsChange = { fg = colors.peach },
                        LineNr = { fg = colors.overlay0 },
                        LspInfoBorder = { link = "FloatBorder" },
                        NeoTreeDirectoryIcon = { fg = colors.subtext1 },
                        NeoTreeDirectoryName = { fg = colors.subtext1 },
                        NeoTreeFloatBorder = { link = "TelescopeResultsBorder" },
                        NeoTreeGitConflict = { fg = colors.red },
                        NeoTreeGitDeleted = { fg = colors.red },
                        NeoTreeGitIgnored = { fg = colors.overlay0 },
                        NeoTreeGitModified = { fg = colors.peach },
                        NeoTreeGitStaged = { fg = colors.green },
                        NeoTreeGitUnstaged = { fg = colors.red },
                        NeoTreeGitUntracked = { fg = colors.green },
                        NeoTreeIndent = { fg = colors.surface1 },
                        NeoTreeNormal = { bg = colors.mantle },
                        NeoTreeNormalNC = { bg = colors.mantle },
                        NeoTreeRootName = { fg = colors.subtext1, style = { "bold" } },
                        NeoTreeTabActive = { fg = colors.text, bg = colors.mantle },
                        NeoTreeTabInactive = { fg = colors.surface2, bg = colors.crust },
                        NeoTreeTabSeparatorActive = { fg = colors.mantle, bg = colors.mantle },
                        NeoTreeTabSeparatorInactive = { fg = colors.crust, bg = colors.crust },
                        NeoTreeWinSeparator = { fg = colors.base, bg = colors.base },
                        NormalFloat = { bg = colors.base },
                        Pmenu = { bg = colors.mantle, fg = "" },
                        PmenuSel = { bg = colors.surface0, fg = "" },
                        TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
                        TelescopePreviewNormal = { bg = colors.crust },
                        TelescopePreviewTitle = { fg = colors.crust, bg = colors.crust },
                        TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
                        TelescopePromptCounter = { fg = colors.mauve, style = { "bold" } },
                        TelescopePromptNormal = { bg = colors.surface0 },
                        TelescopePromptPrefix = { bg = colors.surface0 },
                        TelescopePromptTitle = { fg = colors.surface0, bg = colors.surface0 },
                        TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
                        TelescopeResultsNormal = { bg = colors.mantle },
                        TelescopeResultsTitle = { fg = colors.mantle, bg = colors.mantle },
                        TelescopeSelection = { bg = colors.surface0 },
                        VertSplit = { bg = colors.base, fg = colors.surface0 },
                        WhichKeyFloat = { bg = colors.mantle },
                        YankHighlight = { bg = colors.surface2 },
                        FidgetTask = { fg = colors.subtext2 },
                        FidgetTitle = { fg = colors.peach },

                        IblIndent = { fg = colors.surface0 },
                        IblScope = { fg = colors.overlay0 },

                        Boolean = { fg = colors.mauve },
                        Number = { fg = colors.mauve },
                        Float = { fg = colors.mauve },

                        PreProc = { fg = colors.mauve },
                        PreCondit = { fg = colors.mauve },
                        Include = { fg = colors.mauve },
                        Define = { fg = colors.mauve },
                        Conditional = { fg = colors.red },
                        Repeat = { fg = colors.red },
                        Keyword = { fg = colors.red },
                        Typedef = { fg = colors.red },
                        Exception = { fg = colors.red },
                        Statement = { fg = colors.red },

                        Error = { fg = colors.red },
                        StorageClass = { fg = colors.peach },
                        Tag = { fg = colors.peach },
                        Label = { fg = colors.peach },
                        Structure = { fg = colors.peach },
                        Operator = { fg = colors.peach },
                        Title = { fg = colors.peach },
                        Special = { fg = colors.yellow },
                        SpecialChar = { fg = colors.yellow },
                        Type = { fg = colors.yellow, style = { "bold" } },
                        Function = { fg = colors.green, style = { "bold" } },
                        Delimiter = { fg = colors.subtext2 },
                        Ignore = { fg = colors.subtext2 },
                        Macro = { fg = colors.teal },

                        TSAnnotation = { fg = colors.mauve },
                        TSAttribute = { fg = colors.mauve },
                        TSBoolean = { fg = colors.mauve },
                        TSCharacter = { fg = colors.teal },
                        TSCharacterSpecial = { link = "SpecialChar" },
                        TSComment = { link = "Comment" },
                        TSConditional = { fg = colors.red },
                        TSConstBuiltin = { fg = colors.mauve },
                        TSConstMacro = { fg = colors.mauve },
                        TSConstant = { fg = colors.text },
                        TSConstructor = { fg = colors.green },
                        TSDebug = { link = "Debug" },
                        TSDefine = { link = "Define" },
                        TSEnvironment = { link = "Macro" },
                        TSEnvironmentName = { link = "Type" },
                        TSError = { link = "Error" },
                        TSException = { fg = colors.red },
                        TSField = { fg = colors.blue },
                        TSFloat = { fg = colors.mauve },
                        TSFuncBuiltin = { fg = colors.green },
                        TSFuncMacro = { fg = colors.green },
                        TSFunction = { fg = colors.green },
                        TSFunctionCall = { fg = colors.green },
                        TSInclude = { fg = colors.red },
                        TSKeyword = { fg = colors.red },
                        TSKeywordFunction = { fg = colors.red },
                        TSKeywordOperator = { fg = colors.peach },
                        TSKeywordReturn = { fg = colors.red },
                        TSLabel = { fg = colors.peach },
                        TSLiteral = { link = "String" },
                        TSMath = { fg = colors.blue },
                        TSMethod = { fg = colors.green },
                        TSMethodCall = { fg = colors.green },
                        TSNamespace = { fg = colors.yellow },
                        TSNone = { fg = colors.text },
                        TSNumber = { fg = colors.mauve },
                        TSOperator = { fg = colors.peach },
                        TSParameter = { fg = colors.text },
                        TSParameterReference = { fg = colors.text },
                        TSPreProc = { link = "PreProc" },
                        TSProperty = { fg = colors.blue },
                        TSPunctBracket = { fg = colors.text },
                        TSPunctDelimiter = { link = "Delimiter" },
                        TSPunctSpecial = { fg = colors.blue },
                        TSRepeat = { fg = colors.red },
                        TSStorageClass = { fg = colors.peach },
                        TSStorageClassLifetime = { fg = colors.peach },
                        TSStrike = { fg = colors.subtext2 },
                        TSString = { fg = colors.teal },
                        TSStringEscape = { fg = colors.green },
                        TSStringRegex = { fg = colors.green },
                        TSStringSpecial = { link = "SpecialChar" },
                        TSSymbol = { fg = colors.text },
                        TSTag = { fg = colors.peach },
                        TSTagAttribute = { fg = colors.green },
                        TSTagDelimiter = { fg = colors.green },
                        TSText = { fg = colors.green },
                        TSTextReference = { link = "Constant" },
                        TSTitle = { link = "Title" },
                        TSTodo = { link = "Todo" },
                        TSType = { fg = colors.yellow, style = { "bold" } },
                        TSTypeBuiltin = { fg = colors.yellow, style = { "bold" } },
                        TSTypeDefinition = { fg = colors.yellow, style = { "bold" } },
                        TSTypeQualifier = { fg = colors.peach, style = { "bold" } },
                        TSURI = { fg = colors.blue },
                        TSVariable = { fg = colors.text },
                        TSVariableBuiltin = { fg = colors.mauve },

                        ["@annotation"] = { link = "TSAnnotation" },
                        ["@attribute"] = { link = "TSAttribute" },
                        ["@boolean"] = { link = "TSBoolean" },
                        ["@character"] = { link = "TSCharacter" },
                        ["@character.special"] = { link = "TSCharacterSpecial" },
                        ["@comment"] = { link = "TSComment" },
                        ["@conceal"] = { link = "Grey" },
                        ["@conditional"] = { link = "TSConditional" },
                        ["@constant"] = { link = "TSConstant" },
                        ["@constant.builtin"] = { link = "TSConstBuiltin" },
                        ["@constant.macro"] = { link = "TSConstMacro" },
                        ["@constructor"] = { link = "TSConstructor" },
                        ["@debug"] = { link = "TSDebug" },
                        ["@define"] = { link = "TSDefine" },
                        ["@error"] = { link = "TSError" },
                        ["@exception"] = { link = "TSException" },
                        ["@field"] = { link = "TSField" },
                        ["@float"] = { link = "TSFloat" },
                        ["@function"] = { link = "TSFunction" },
                        ["@function.builtin"] = { link = "TSFuncBuiltin" },
                        ["@function.call"] = { link = "TSFunctionCall" },
                        ["@function.macro"] = { link = "TSFuncMacro" },
                        ["@include"] = { link = "TSInclude" },
                        ["@keyword"] = { link = "TSKeyword" },
                        ["@keyword.function"] = { link = "TSKeywordFunction" },
                        ["@keyword.operator"] = { link = "TSKeywordOperator" },
                        ["@keyword.return"] = { link = "TSKeywordReturn" },
                        ["@label"] = { link = "TSLabel" },
                        ["@math"] = { link = "TSMath" },
                        ["@method"] = { link = "TSMethod" },
                        ["@method.call"] = { link = "TSMethodCall" },
                        ["@namespace"] = { link = "TSNamespace" },
                        ["@none"] = { link = "TSNone" },
                        ["@number"] = { link = "TSNumber" },
                        ["@operator"] = { link = "TSOperator" },
                        ["@parameter"] = { link = "TSParameter" },
                        ["@parameter.reference"] = { link = "TSParameterReference" },
                        ["@preproc"] = { link = "TSPreProc" },
                        ["@property"] = { link = "TSProperty" },
                        ["@punctuation.bracket"] = { link = "TSPunctBracket" },
                        ["@punctuation.delimiter"] = { link = "TSPunctDelimiter" },
                        ["@punctuation.special"] = { link = "TSPunctSpecial" },
                        ["@repeat"] = { link = "TSRepeat" },
                        ["@storageclass"] = { link = "TSStorageClass" },
                        ["@storageclass.lifetime"] = { link = "TSStorageClassLifetime" },
                        ["@strike"] = { link = "TSStrike" },
                        ["@string"] = { link = "TSString" },
                        ["@string.escape"] = { link = "TSStringEscape" },
                        ["@string.regex"] = { link = "TSStringRegex" },
                        ["@string.special"] = { link = "TSStringSpecial" },
                        ["@symbol"] = { link = "TSSymbol" },
                        ["@tag"] = { link = "TSTag" },
                        ["@tag.attribute"] = { link = "TSTagAttribute" },
                        ["@tag.delimiter"] = { link = "TSTagDelimiter" },
                        ["@text"] = { link = "TSText" },
                        ["@text.danger"] = { link = "TSDanger" },
                        ["@text.diff.add"] = { link = "diffAdded" },
                        ["@text.diff.delete"] = { link = "diffRemoved" },
                        ["@text.emphasis"] = { link = "TSEmphasis" },
                        ["@text.environment"] = { link = "TSEnvironment" },
                        ["@text.environment.name"] = { link = "TSEnvironmentName" },
                        ["@text.literal"] = { link = "TSLiteral" },
                        ["@text.math"] = { link = "TSMath" },
                        ["@text.note"] = { link = "TSNote" },
                        ["@text.reference"] = { link = "TSTextReference" },
                        ["@text.strike"] = { link = "TSStrike" },
                        ["@text.strong"] = { link = "TSStrong" },
                        ["@text.title"] = { link = "TSTitle" },
                        ["@text.todo"] = { link = "TSTodo" },
                        ["@text.todo.checked"] = { link = "Green" },
                        ["@text.todo.unchecked"] = { link = "Ignore" },
                        ["@text.underline"] = { link = "TSUnderline" },
                        ["@text.uri"] = { link = "TSURI" },
                        ["@text.warning"] = { link = "TSWarning" },
                        ["@todo"] = { link = "TSTodo" },
                        ["@type"] = { link = "TSType" },
                        ["@type.builtin"] = { link = "TSTypeBuiltin" },
                        ["@type.definition"] = { link = "TSTypeDefinition" },
                        ["@type.qualifier"] = { link = "TSTypeQualifier" },
                        ["@uri"] = { link = "TSURI" },
                        ["@variable"] = { link = "TSVariable" },
                        ["@variable.builtin"] = { link = "TSVariableBuiltin" },

                        ["@lsp.type.class"] = { link = "TSType" },
                        ["@lsp.type.comment"] = { link = "TSComment" },
                        ["@lsp.type.decorator"] = { link = "TSFunction" },
                        ["@lsp.type.enum"] = { link = "TSType" },
                        ["@lsp.type.enumMember"] = { link = "TSProperty" },
                        ["@lsp.type.events"] = { link = "TSLabel" },
                        ["@lsp.type.function"] = { link = "TSFunction" },
                        ["@lsp.type.interface"] = { link = "TSType" },
                        ["@lsp.type.keyword"] = { link = "TSKeyword" },
                        ["@lsp.type.macro"] = { link = "TSConstMacro" },
                        ["@lsp.type.method"] = { link = "TSMethod" },
                        ["@lsp.type.modifier"] = { link = "TSTypeQualifier" },
                        ["@lsp.type.namespace"] = { link = "TSNamespace" },
                        ["@lsp.type.number"] = { link = "TSNumber" },
                        ["@lsp.type.operator"] = { link = "TSOperator" },
                        ["@lsp.type.parameter"] = { link = "TSParameter" },
                        ["@lsp.type.property"] = { link = "TSProperty" },
                        ["@lsp.type.regexp"] = { link = "TSStringRegex" },
                        ["@lsp.type.string"] = { link = "TSString" },
                        ["@lsp.type.struct"] = { link = "TSType" },
                        ["@lsp.type.type"] = { link = "TSType" },
                        ["@lsp.type.typeParameter"] = { link = "TSTypeDefinition" },
                        ["@lsp.type.variable"] = { link = "TSVariable" },
                    }
                end,
                latte = function(colors)
                    return {
                        IblIndent = { fg = colors.mantle },
                        IblScope = { fg = colors.surface1 },

                        LineNr = { fg = colors.surface1 },
                    }
                end,
            },
        })

        vim.api.nvim_command("colorscheme catppuccin")
    end,
  },
  
  --TELESCOPE

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      builtin = require("telescope.builtin")
      vim.keymap.set('n','<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown{
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  },
  {
    "yamatsum/nvim-cursorline",
    config = function()
require('nvim-cursorline').setup {
  cursorline = {
    enable = true,
    timeout = 1000,
    number = false,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
}
    end
  },
  --TREESITTER
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  
  --NEOTREE
  
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim"
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  { 
    "nvim-lualine/lualine.nvim",
      config = function()
        require('lualine').setup({
          options = {
            theme = 'gruvbox-material'      
      }
    })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "tsserver", "tailwindcss", "jsonls", "html", "cssls"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
     config = function() 
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gD', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  },
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim"
    },
    config = function()
      local null_ls = require("null-ls")
      
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier,
          null_ls.builtins.formatting.stylua,
          require("none-ls.diagnostics.eslint_d")
        }
      })
    end
  },
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- For luasnip users.
          { name = "copilot"},
        }, {
          { name = "buffer" },
        }),
      })
    end,
  },
}
