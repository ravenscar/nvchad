local M = {}

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
      "Close all buffers"
    },
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
    }
  },
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
  },
}

return M
