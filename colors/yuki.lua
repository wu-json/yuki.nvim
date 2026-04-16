local colors = {
	-- PATCH_OPEN
Normal = {fg = "#F0F2F4", bg = "NONE"},
DiagnosticFloatingHint = {fg = "#7EB3CE"},
DiagnosticFloatingInfo = {fg = "#7EB3CE"},
DiagnosticFloatingOk = {fg = "#B6C7D8"},
DiagnosticHint = {fg = "#7EB3CE"},
DiagnosticInfo = {fg = "#7EB3CE"},
DiagnosticOk = {fg = "#B6C7D8"},
DiagnosticSignHint = {fg = "#7EB3CE"},
DiagnosticSignInfo = {fg = "#7EB3CE"},
DiagnosticSignOk = {fg = "#B6C7D8"},
DiagnosticVirtualTextHint = {fg = "#7EB3CE"},
DiagnosticVirtualTextInfo = {fg = "#7EB3CE"},
DiagnosticVirtualTextOk = {fg = "#B6C7D8"},
Directory = {fg = "#7EB3CE"},
FloatBorder = {fg = "#737D8C"},
Function = {fg = "#7EB3CE"},
Identifier = {fg = "#7EB3CE"},
Keyword = {fg = "#9199A1", bold = true},
ModeMsg = {fg = "#B6C7D8"},
MoreMsg = {fg = "#7EB3CE"},
MsgArea = {fg = "#F0F2F4", bg = "NONE"},
NeoTreeGitIgnored = {fg = "#9199A1"},
NeoTreeGitModified = {fg = "#B6C7D8"},
NeoTreeGitStaged = {fg = "#B6C7D8"},
NormalFloat = {bg = "NONE"},
Question = {fg = "#7EB3CE"},
QuickFixLine = {fg = "#7EB3CE"},
Special = {fg = "#7EB3CE"},
StatusLine = {fg = "#9199A1", bg = "NONE"},
StatusLineNC = {fg = "#737D8C", bg = "NONE"},
StorageClass = {fg = "#9199A1", bold = true},
String = {fg = "#B6C7D8"},
TabLine = {fg = "#F0F2F4", bg = "NONE"},
TabLineFill = {bg = "NONE"},
TabLineSel = {fg = "#7EB3CE", bg = "NONE", bold = true},
Winseparator = {fg = "#181D25"},
["@field"] = {fg = "#9199A1"},
["@function"] = {fg = "#7EB3CE"},
["@function.macro"] = {fg = "#7EB3CE"},
["@keyword"] = {fg = "#9199A1"},
["@property"] = {fg = "#9199A1"},
["@storageclass"] = {fg = "#9199A1", bold = true},
["@string"] = {fg = "#B6C7D8"},
	-- PATCH_CLOSE
}

vim.cmd("highlight clear")
vim.cmd("set t_Co=256")
vim.cmd("let g:colors_name='yuki'")

for group, attrs in pairs(colors) do
	vim.api.nvim_set_hl(0, group, attrs)
end
