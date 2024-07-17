local options = require("plugins.configs.telescope")

options.defaults.file_ignore_patterns = {
  "node_modules",
  "package%-lock.json",
  "pnpm%-lock.yaml",
  "yarn.lock",
}

return options
