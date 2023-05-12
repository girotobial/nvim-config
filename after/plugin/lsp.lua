local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	"tsserver",
	"eslint",
	"rust_analyzer",
    "svelte",
    "sqlls"
})

lsp.format_on_save({
    servers = {
        ['rust_analyzer'] = {"rust"},
        ['svelte'] = {"svelte"},
        ['tsserver'] = {"typescript"},
        ['sqlls'] = {"sql"}
    }
})

lsp.setup()
