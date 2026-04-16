vim.opt.background = "dark"
vim.g.colors_name = "yuki_lush"

package.loaded["lush_theme.yuki"] = nil

require("lush")(require("lush_theme.yuki"))
