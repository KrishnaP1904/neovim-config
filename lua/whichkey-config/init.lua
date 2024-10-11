local wk = require("which-key")
local mapping ={    
    {"<leader>q",":q<CR>",desc = "Quit"},
    {"<leader>w",":wq<CR>",desc = "Save"},
    {"<leader>x",":bdelete<CR>",desc = "Close"},
    {"<leader>E",":e ~/.config/nvim/init.lua",desc = "Edit Config"},
    {"<leader>f",":Telescope find_files<CR>",desc = "Telescope Find Files"},
    { "<leader>l", group = "LSP" }, -- group
   { "<leader>li", ":LspInfo<cr>", desc = "Connected Language Servers", mode = "n" },
  { "<leader>lk", "<cmd>lua vim.lsp.buf.signature_help()<cr>", desc = "Signature Help", mode = "n" },
  { "<leader>lK", "<cmd>Lspsaga hover_doc<cr>", desc = "Hover Commands", mode = "n" },
  { "<leader>lw", "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", desc = "Add Workspace Folder", mode = "n" },
  { "<leader>lW", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", desc = "Remove Workspace Folder", mode = "n" },
  { "<leader>ll", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>", desc = "List Workspace Folders", mode = "n" },
  { "<leader>lt", "<cmd>lua vim.lsp.buf.type_definition()<cr>", desc = "Type Definition", mode = "n" },
  { "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Go To Definition", mode = "n" },
  { "<leader>lD", "<cmd>lua vim.lsp.buf.declaration()<cr>", desc = "Go To Declaration", mode = "n" },
  { "<leader>lr", "<cmd>lua vim.lsp.buf.references()<cr>", desc = "References", mode = "n" },
  { "<leader>lR", "<cmd>Lspsaga rename<cr>", desc = "Rename", mode = "n" },
  { "<leader>la", "<cmd>Lspsaga code_action<cr>", desc = "Code Action", mode = "n" },
  { "<leader>le", "<cmd>Lspsaga show_line_diagnostics<cr>", desc = "Show Line Diagnostics", mode = "n" },
  { "<leader>ln", "<cmd>Lspsaga diagnostic_jump_next<cr>", desc = "Go To Next Diagnostic", mode = "n" },
  { "<leader>lN", "<cmd>Lspsaga diagnostic_jump_prev<cr>", desc = "Go To Previous Diagnostic", mode = "n" },
}

wk.add(mapping)

