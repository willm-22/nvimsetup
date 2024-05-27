local colors = {
  bg       = '#1e2030',
  fg       = '#cad3f5',
  yellow   = '#eed49f',
  cyan     = '#8bd5ca',
  darkblue = '#8aadf4',
  green    = '#a6da95',
  orange   = '#ee99a0',
  violet   = '#c6a0f6',
  magenta  = '#f5bde6',
  blue     = '#b7bdf8',
  red      = '#ed8796',
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = {
        normal = { c = { fg = colors.blue, bg = colors.bg } },
        insert = { c = { fg = colors.green, bg = colors.bg } },
        visual = { c = { fg = colors.orange, bg = colors.bg } },
        inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
    component_separators = { left = '', right = ''},
    section_separators = { left = '|', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {'os.date()', 'diagnostics', {'filetype', icon_only = true, colored = false }},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
