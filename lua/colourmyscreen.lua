function ColorMyPencils(color)
  color = color or 'rose-pine-moon'
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

return {

  {
    'vague2k/vague.nvim',
    lazy = false,
    opts = {
      transparent = true,
      style = {
        keywords = 'bold',
        keyword_return = 'bold',
        keywords_loop = 'bold',
      },
    },
    config = function()
      ColorMyPencils 'vague'
    end,
  },

  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        styles = {
          italic = false,
          bold = true,
          transparency = true,
        },
      }
    end,
  },
}
