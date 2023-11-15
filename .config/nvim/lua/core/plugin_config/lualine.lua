require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        pathe = 1,
      }
    }
  }
}
