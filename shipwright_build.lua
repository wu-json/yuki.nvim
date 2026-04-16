local lushwright = require("shipwright.transform.lush")

run(require("lush_theme.yuki"), lushwright.to_lua, { patchwrite, "colors/yuki.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE" })
