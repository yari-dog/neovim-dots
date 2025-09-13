vim.pack.add({
    { src = "https://github.com/saghen/blink.cmp", version = "v1.6.0" },
})

require("blink.cmp").setup({
    {
        keymap = { preset = 'default' },
        appearance = {
            nerd_font_variant = 'mono'
        },
        completion = { documentation = { auto_show = false } },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        fuzzy = { implementation = "rust_prefered" }
    },
    opts_extend = { "sources.default" }
})

