-- dark2026.nvim
-- Colours extracted from VS Code's built-in "Dark 2026" theme (MIT).
-- UI colours come from 2026-dark.json; token colours from its TextMate scopes.
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "dark2026"

local set = vim.api.nvim_set_hl

-- UI（VS Code の colorCustomizations に対応する箇所）
set(0, "Normal", { fg = "#BBBEBF", bg = "#121314" })
set(0, "NormalFloat", { fg = "#BBBEBF", bg = "#202122" })
set(0, "FloatBorder", { fg = "#2A2B2C", bg = "#202122" })
set(0, "LineNr", { fg = "#858889" })
set(0, "CursorLineNr", { fg = "#BBBEBF" })
set(0, "CursorLine", { bg = "#242526" })
set(0, "CursorColumn", { bg = "#242526" })
set(0, "ColorColumn", { bg = "#242526" })
set(0, "Visual", { bg = "#245C73" })
set(0, "Search", { bg = "#1E4252" })
set(0, "IncSearch", { bg = "#245C73" })
set(0, "CurSearch", { bg = "#3994BC", fg = "#121314" })
set(0, "MatchParen", { bg = "#1F3E4C", bold = true })
set(0, "StatusLine", { fg = "#8C8C8C", bg = "#191A1B" })
set(0, "StatusLineNC", { fg = "#8C8C8C", bg = "#121314" })
set(0, "TabLine", { fg = "#8C8C8C", bg = "#191A1B" })
set(0, "TabLineSel", { fg = "#BFBFBF", bg = "#121314" })
set(0, "TabLineFill", { fg = "#8C8C8C", bg = "#191A1B" })
set(0, "WinSeparator", { fg = "#2A2B2C" })
set(0, "VertSplit", { fg = "#2A2B2C" })
set(0, "Pmenu", { fg = "#BFBFBF", bg = "#202122" })
set(0, "PmenuSel", { fg = "#EDEDED", bg = "#3E3F3F" })
set(0, "PmenuSbar", { bg = "#2A2B2C" })
set(0, "PmenuThumb", { bg = "#4B4C4D" })
set(0, "Folded", { fg = "#8C8C8C", bg = "#191A1B" })
set(0, "FoldColumn", { fg = "#8C8C8C", bg = "#121314" })
set(0, "SignColumn", { bg = "#121314" })
set(0, "NonText", { fg = "#373838" })
set(0, "Whitespace", { fg = "#373838" })
set(0, "SpecialKey", { fg = "#373838" })
set(0, "EndOfBuffer", { fg = "#121314" })
set(0, "Directory", { fg = "#48A0C7" })
set(0, "Title", { fg = "#BFBFBF", bold = true })
set(0, "ErrorMsg", { fg = "#F48771" })
set(0, "WarningMsg", { fg = "#E5BA7D" })
set(0, "MoreMsg", { fg = "#3A94BC" })
set(0, "Question", { fg = "#3A94BC" })
set(0, "QuickFixLine", { bg = "#242526" })
set(0, "Cursor", { fg = "#BBBEBF", bg = "#BBBEBF" })

-- 診断
set(0, "DiagnosticError", { fg = "#F48771" })
set(0, "DiagnosticWarn", { fg = "#E5BA7D" })
set(0, "DiagnosticInfo", { fg = "#3A94BC" })
set(0, "DiagnosticHint", { fg = "#8C8C8C" })
set(0, "DiagnosticUnnecessary", { fg = "#8C8C8C" })
set(0, "DiagnosticVirtualTextError", { fg = "#F48771", bg = "#2A1B1B" })
set(0, "DiagnosticVirtualTextWarn", { fg = "#E5BA7D", bg = "#2A2618" })
set(0, "DiagnosticVirtualTextInfo", { fg = "#3A94BC", bg = "#16242A" })
set(0, "DiagnosticVirtualTextHint", { fg = "#8C8C8C", bg = "#1B1C1D" })
set(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#F48771" })
set(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = "#E5BA7D" })
set(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = "#3A94BC" })
set(0, "DiagnosticUnderlineHint", { undercurl = true, sp = "#8C8C8C" })

-- Git
set(0, "Added", { fg = "#73C991" })
set(0, "Changed", { fg = "#E5BA7D" })
set(0, "Removed", { fg = "#F48771" })
set(0, "GitSignsAdd", { fg = "#73C991" })
set(0, "GitSignsChange", { fg = "#E5BA7D" })
set(0, "GitSignsDelete", { fg = "#F48771" })

-- 検索ハイライトの差分
set(0, "diffAdded", { fg = "#73C991" })
set(0, "diffChanged", { fg = "#E5BA7D" })
set(0, "diffRemoved", { fg = "#F48771" })

-- Treesitter（TextMate スコープ → キャプチャ）
local ts = {
  ["@comment"] = "#8B949E",
  ["@comment.documentation"] = "#8B949E",
  ["@keyword"] = "#FF7B72",
  ["@keyword.conditional"] = "#C586C0",
  ["@keyword.repeat"] = "#C586C0",
  ["@keyword.return"] = "#C586C0",
  ["@keyword.exception"] = "#C586C0",
  ["@keyword.function"] = "#FF7B72",
  ["@keyword.import"] = "#FF7B72",
  ["@keyword.operator"] = "#D4D4D4",
  ["@keyword.storage"] = "#569CD6",
  ["@keyword.modifier"] = "#569CD6",
  ["@storageclass"] = "#569CD6",
  ["@type"] = "#4EC9B0",
  ["@type.builtin"] = "#FF7B72",
  ["@type.qualifier"] = "#569CD6",
  ["@type.definition"] = "#4EC9B0",
  ["@function"] = "#D2A8FF",
  ["@function.builtin"] = "#DCDCAA",
  ["@function.call"] = "#DCDCAA",
  ["@function.macro"] = "#569CD6",
  ["@constant"] = "#79C0FF",
  ["@constant.builtin"] = "#569CD6",
  ["@constant.macro"] = "#569CD6",
  ["@number"] = "#B5CEA8",
  ["@boolean"] = "#569CD6",
  ["@string"] = "#A5D6FF",
  ["@string.escape"] = "#D7BA7D",
  ["@string.regexp"] = "#A5D6FF",
  ["@string.special"] = "#7EE787",
  ["@preproc"] = "#569CD6",
  ["@include"] = "#569CD6",
  ["@define"] = "#569CD6",
  ["@variable"] = "#C9D1D9",
  ["@variable.parameter"] = "#C9D1D9",
  ["@variable.member"] = "#9CDCFE",
  ["@variable.builtin"] = "#569CD6",
  ["@property"] = "#9CDCFE",
  ["@field"] = "#9CDCFE",
  ["@operator"] = "#D4D4D4",
  ["@punctuation"] = "#BBBEBF",
  ["@punctuation.bracket"] = "#BBBEBF",
  ["@punctuation.delimiter"] = "#BBBEBF",
  ["@label"] = "#C8C8C8",
  ["@tag"] = "#7EE787",
  ["@tag.attribute"] = "#9CDCFE",
  ["@tag.delimiter"] = "#BBBEBF",
  ["@markup.heading"] = "#79C0FF",
  ["@markup.heading.1"] = "#79C0FF",
  ["@markup.heading.2"] = "#79C0FF",
  ["@markup.heading.3"] = "#79C0FF",
  ["@markup.bold"] = "#C9D1D9",
  ["@markup.italic"] = "#C9D1D9",
  ["@markup.link"] = "#48A0C7",
  ["@markup.link.url"] = "#48A0C7",
  ["@markup.raw"] = "#A5D6FF",
  ["@markup.list"] = "#79C0FF",
  ["@markup.quote"] = "#7EE787",
  ["@markup.strikethrough"] = "#8C8C8C",
  ["@diff.plus"] = "#7EE787",
  ["@diff.minus"] = "#FFA198",
  ["@diff.delta"] = "#FFA657",
  ["@error"] = "#F48771",
}

for group, fg in pairs(ts) do
  set(0, group, { fg = fg })
end

set(0, "@markup.heading", { fg = "#79C0FF", bold = true })
set(0, "@markup.bold", { fg = "#C9D1D9", bold = true })
set(0, "@markup.italic", { fg = "#C9D1D9", italic = true })
set(0, "@markup.strikethrough", { fg = "#8C8C8C", strikethrough = true })
