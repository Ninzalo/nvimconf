local config = function()
  local mason = require 'mason'

  mason.setup {
    ui = {
      icons = {
        package_installed = '✓',
        package_pending = '➜',
        package_uninstalled = '✗',
      },
    },
  }
end

return {
  'williamboman/mason.nvim',
  lazy = false,
  cmd = 'Mason',
  event = 'BufReadPre',
  config = config,
}
