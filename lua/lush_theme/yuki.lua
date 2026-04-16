local lush = require("lush")
local hsl = lush.hsl

local palette = {
	frost = hsl(210, 30, 78),
	ice = hsl(200, 45, 65),
	snow = hsl(220, 15, 95),
	midnight = hsl(0, 0, 10),
	slate = hsl(215, 10, 50),
	mist = hsl(210, 8, 60),
}

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		Directory({ fg = palette.ice }),
		ModeMsg({ fg = palette.frost }),
		MoreMsg({ fg = palette.ice }),
		Normal({ fg = palette.snow, bg = "NONE" }),
		NormalFloat({ bg = "NONE" }),
		FloatBorder({ fg = palette.slate }),
		Question({ fg = palette.ice }),
		QuickFixLine({ fg = palette.ice }),
		StatusLine({ bg = palette.midnight }),
		TabLine({ fg = palette.snow, bg = "NONE" }),
		TabLineFill({ bg = "NONE" }),
		TabLineSel({ fg = palette.ice, bg = "NONE", gui = "bold" }),
		Winseparator({ fg = palette.midnight }),

		String({ fg = palette.frost }),
		Identifier({ fg = palette.ice }),
		Function({ fg = palette.ice }),
		Keyword({ fg = palette.mist, gui = "bold" }),
		StorageClass({ fg = palette.mist, gui = "bold" }),
		Special({ fg = palette.ice }),

		NeoTreeGitModified({ fg = palette.frost }),
		NeoTreeGitIgnored({ fg = palette.mist }),
		NeoTreeGitStaged({ fg = palette.frost }),

		DiagnosticInfo({ fg = palette.ice }),
		DiagnosticHint({ fg = palette.ice }),
		DiagnosticOk({ fg = palette.frost }),
		DiagnosticVirtualTextInfo({ fg = palette.ice }),
		DiagnosticVirtualTextHint({ fg = palette.ice }),
		DiagnosticVirtualTextOk({ fg = palette.frost }),
		DiagnosticFloatingInfo({ fg = palette.ice }),
		DiagnosticFloatingHint({ fg = palette.ice }),
		DiagnosticFloatingOk({ fg = palette.frost }),
		DiagnosticSignInfo({ fg = palette.ice }),
		DiagnosticSignHint({ fg = palette.ice }),
		DiagnosticSignOk({ fg = palette.frost }),

		sym("@string")({ fg = palette.frost }),
		sym("@function")({ fg = palette.ice }),
		sym("@function.macro")({ fg = palette.ice }),
		sym("@field")({ fg = palette.mist }),
		sym("@property")({ fg = palette.mist }),
		sym("@keyword")({ fg = palette.mist }),
		sym("@storageclass")({ fg = palette.mist, gui = "bold" }),
	}
end)

return theme

-- vi:nowrap
