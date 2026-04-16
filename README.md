# yuki.nvim

A Neovim lua theme built with [Lush](https://github.com/rktjmp/lush.nvim). Yuki (雪) means snow — a cold, minimal colorscheme.

> [!NOTE]
> For the best visual experience, I would recommend setting your terminal theme to complement this palette. This theme intentionally does not define background colors and inherits the transparency and color of your terminal theme.

# Installation

## lazy.nvim
```lua
{ "wu-json/yuki.nvim" },
{
  "LazyVim/LazyVim",
  opts = { colorscheme = "yuki" },
}
```

## vim-plug
```vim
Plug 'wu-json/yuki.nvim'
```

## packer.nvim
```lua
use 'wu-json/yuki.nvim'
```

## Manual Installation
```bash
git clone https://github.com/wu-json/yuki.nvim.git ~/.config/nvim/pack/colors/start/yuki.nvim
```

Then add to your vim config:
```vim
colorscheme yuki
```

# Development

`yuki.nvim` is built with [Lush](https://github.com/rktjmp/lush.nvim) and uses [Shipwright](https://github.com/rktjmp/shipwright.nvim) as the build-system to output the color scheme. In development, you can point to the lush theme to get live feedback on color adjustments via `yuki_lush`.

To build the final color scheme, run `:Shipwright`.

```bash
nvim -c "Shipwright" -c "quit"
```
