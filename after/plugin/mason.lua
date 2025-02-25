require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "cobol_ls", "bashls", "html", "powershell_es", "pylsp", "cssmodules_ls" }
}
