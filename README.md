# dark2026.nvim

A Neovim colourscheme generated from the colours of VS Code's built-in **Dark 2026** theme (`2026-dark.json`).

Not affiliated with Microsoft. UI colours are taken from the theme's `colors` map; syntax colours are mapped from its TextMate scopes to Neovim Treesitter captures.

## Install

```lua
vim.pack.add({ { src = "https://github.com/sktr/dark2026.nvim" } })
vim.cmd("colorscheme dark2026")
```

## Notes

- Requires a true-colour terminal (`termguicolors`).
- Syntax coverage targets C, Lua, Markdown, shell and Vim script; other languages fall back to the Neovim defaults.
- Diagnostics use VS Code's `errorForeground` / warning / info colours.

## License

This project is MIT licensed (see `LICENSE`).

Colour values are derived from Visual Studio Code's default themes, which are
MIT licensed, Copyright (c) Microsoft Corporation. The full notice is in
`NOTICE.txt`. "Visual Studio Code" is a trademark of Microsoft Corporation;
this project is not affiliated with or endorsed by Microsoft.
