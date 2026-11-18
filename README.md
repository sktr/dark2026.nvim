# vscode2026dark.nvim

A Neovim colourscheme generated from the colours of VS Code's built-in **Dark 2026** theme (`2026-dark.json`).

Not affiliated with Microsoft. UI colours are taken from the theme's `colors` map; syntax colours are mapped from its TextMate scopes to Neovim Treesitter captures.

## Install

```lua
vim.pack.add({ { src = "https://github.com/sktr/vscode2026dark.nvim" } })
vim.cmd("colorscheme vscode2026dark")
```

## Notes

- Requires a true-colour terminal (`termguicolors`).
- Syntax coverage targets C, Lua, Markdown, shell and Vim script; other languages fall back to the Neovim defaults.
- Diagnostics use VS Code's `errorForeground` / warning / info colours.

## License

MIT. VS Code and its default themes are MIT licensed by Microsoft; see `LICENSE`.
