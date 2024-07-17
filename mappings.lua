local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  }
}

M.disabled = {
  n = {
      ["<leader>h"] = "",
      ["<leader>v"] = "",
      ["<leader>fh"] = "",
  }
}

M.abc = {
  n = {
    ["<leader>fr"] = {"<cmd> Telescope resume <CR>", "Telescope resume"},
    ["<C-d>"] = {"<C-d>zz", opts = { remap = false }},
    ["<C-u>"] = {"<C-u>zz", opts = { remap = false }},
    ["n"] = {"nzzzv", opts = { remap = false }},
    ["N"] = {"Nzzzv", opts = { remap = false }},
    ["<leader>hc"] = {
      function ()
        require("nvchad.tabufline").closeAllBufs()
      end,
      "Close all buffers"
    },
    ["<leader>hx"] = {
      function ()
        require("nvchad.tabufline").closeAllBufs()
        vim.cmd(':q')
        vim.cmd(':q')
      end,
      "Close all buffers and exit"
    },
    ["<leader>hf"] = {
      "<cmd> NvimTreeCollapse <CR>",
      "Collapse NvimTree"
    },
    ["<leader>h"] = { "<cmd>cnext<CR>zz", "Forward qflist" },
    ["<leader>;"] = { "<cmd>cprev<CR>zz", "Backward qflist" },
    ["<leader>k"] = { "<cmd>lnext<CR>zz", "Forward location list" },
    ["<leader>j"] = { "<cmd>lprev<CR>zz", "Backward location list" },
  },
  c = {
    ["<C-h>"] = {"<left>", opts = { remap = false }},
    ["<C-j>"] = {"<down>", opts = { remap = false }},
    ["<C-k>"] = {"<up>", opts = { remap = false }},
    ["<C-l>"] = {"<right>", opts = { remap = false }},
  },
  i = {
    ["<C-h>"] = {"<left>", opts = { remap = false }},
    ["<C-j>"] = {"<down>", opts = { remap = false }},
    ["<C-k>"] = {"<up>", opts = { remap = false }},
    ["<C-l>"] = {"<right>", opts = { remap = false }},
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

M.telescope = {
  n = {
    ["<leader>fh"] = { "<CMD>Telescope harpoon marks<CR>", "Find harpooned" },
    ["<leader>f?"] = { "<CMD>Telescope help_tags<CR>", "Find help" },
  }
}

M.harpoon = {
  n = {
    ["<leader>ha"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "Harpoon file",
    },
    ["<leader>hb"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "Harpoon menu",
    },
    ["<leader>1"] = {
      function()
        require("harpoon.ui").nav_file(1)
      end,
      "harpoon 1",
    },
    ["<leader>2"] = {
      function()
        require("harpoon.ui").nav_file(2)
      end,
      "harpoon 2",
    },
    ["<leader>3"] = {
      function()
        require("harpoon.ui").nav_file(3)
      end,
      "harpoon 3",
    },
    ["<leader>4"] = {
      function()
        require("harpoon.ui").nav_file(4)
      end,
      "harpoon 4",
    },
    ["<leader>5"] = {
      function()
        require("harpoon.ui").nav_file(5)
      end,
      "harpoon 5",
    },
    ["<leader>6"] = {
      function()
        require("harpoon.ui").nav_file(6)
      end,
      "harpoon 6",
    },
    ["<leader>7"] = {
      function()
        require("harpoon.ui").nav_file(7)
      end,
      "harpoon 7",
    },
    ["<leader>8"] = {
      function()
        require("harpoon.ui").nav_file(8)
      end,
      "harpoon 8",
    },
    ["<leader>9"] = {
      function()
        require("harpoon.ui").nav_file(9)
      end,
      "harpoon 9",
    },
  },
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}
return M
