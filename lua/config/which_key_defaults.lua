return {
  mode = { "n", "v" },
  [";"] = { ":Alpha<CR>", "Dashboard" },
  w = { ":w!<CR>", "Save" },
  q = { ":confirm q<CR>", "Quit" },
  c = { ":bd<CR>", "Close Buffer" },
  h = { ":nohlsearch<CR>", "No Highlight" },
  p = { "<cmd>Telescope treesitter<CR>", "List Symbols" },
  f = { "<cmd>lua require('config.utils').telescope_git_or_file()<CR>", "Find Files" },
  r = {
    name = "Replace",
    r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
    w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
    f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
  },
  b = {
    name = "Buffers",
    j = { "<cmd>BufferLinePick<cr>", "Jump" },
    f = { "<cmd>Telescope buffers previewer=false<cr>", "Find" },
    b = { "<cmd>BufferLineCyclePrev<cr>", "Previous" },
    n = { "<cmd>BufferLineCycleNext<cr>", "Next" },
    W = { "<cmd>noautocmd w<cr>", "Save without formatting (noautocmd)" },
    e = {
      "<cmd>BufferLinePickClose<cr>",
      "Pick which buffer to close",
    },
    h = { "<cmd>BufferLineCloseLeft<cr>", "Close all to the left" },
    l = {
      "<cmd>BufferLineCloseRight<cr>",
      "Close all to the right",
    },
    D = {
      "<cmd>BufferLineSortByDirectory<cr>",
      "Sort by directory",
    },
    L = {
      "<cmd>BufferLineSortByExtension<cr>",
      "Sort by language",
    },
    p = { "<cmd>BufferLineTogglePin<CR>", "Toggle pin" },
    P = { "<cmd>BufferLineGroupClose ungrouped<CR>", "Delete non-pinned buffers" },
  },
  G = {
    name = "+Git",
    k = { "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", "Prev Hunk" },
    l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
    p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
    r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
    R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
    j = { "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", "Next Hunk" },
    s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
    u = {
      "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
      "Undo Stage Hunk",
    },
    o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
    b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
    c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
    C = {
      "<cmd>Telescope git_bcommits<cr>",
      "Checkout commit(for current file)",
    },
    d = {
      "<cmd>Gitsigns diffthis HEAD<cr>",
      "Git Diff",
    },
  },
  l = {
    name = "+LSP",
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
    A = { "<cmd>lua vim.lsp.buf.range_code_action()<cr>", "Range Code Actions" },
    d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Definition" },
    D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Declaration" },
    i = { "<cmd>lua vim.lsp.buf.implementation()<cr>", "Implementation" },
    o = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type Definition" },
    R = { "<cmd>Telescope lsp_references<cr>", "References" },
    s = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Display Signature Information" },
    r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename all references" },
    f = { "<cmd>lua vim.lsp.buf.format()<cr>", "Format" },
    K = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover" },
    l = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document Diagnostics (Trouble)" },
    L = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace Diagnostics (Trouble)" },
    w = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
    t = { [[ <Esc><Cmd>lua require('telescope').extensions.refactoring.refactors()<CR>]], "Refactor" },

    -- j = { "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", "Previous Diagnostic" },
    -- k = { "<cmd>lua vim.lsp.diagnostic.goto_next()<cr>", "Next Diagnostic" },
    -- e = { "<cmd>Telescope quickfix<cr>", "Telescope Quickfix" },
  },
  s = {
    name = "+Search",
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
    H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
    M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    R = { "<cmd>Telescope registers<cr>", "Registers" },
    t = { "<cmd>Telescope live_grep<cr>", "Text" },
    k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
    C = { "<cmd>Telescope commands<cr>", "Commands" },
    l = { "<cmd>Telescope resume<cr>", "Resume last search" },
    c = { "<cmd>Telescope git_commits<cr>", "Git commits" },
    B = { "<cmd>Telescope git_branches<cr>", "Git branches" },
    s = { "<cmd>Telescope git_status<cr>", "Git status" },
    S = { "<cmd>Telescope git_stash<cr>", "Git stash" },
    z = { "<cmd>Telescope zoxide list<cr>", "Zoxide" },
    e = { "<cmd>Telescope frecency<cr>", "Frecency" },
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    d = {
      name = "+DAP",
      c = { "<cmd>Telescope dap commands<cr>", "Dap Commands" },
      b = { "<cmd>Telescope dap list_breakpoints<cr>", "Dap Breakpoints" },
      g = { "<cmd>Telescope dap configurations<cr>", "Dap Configurations" },
      v = { "<cmd>Telescope dap variables<cr>", "Dap Variables" },
      f = { "<cmd>Telescope dap frames<cr>", "Dap Frames" },
    }
  },
  T = {
    name = "+Todo",
    t = { "<cmd>TodoTelescope<cr>", "Todo" },
    T = { "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", "Todo/Fix/Fixme" },
    x = { "<cmd>TodoTrouble<cr>", "Todo (Trouble)" },
    X = { "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr><cr>", "Todo/Fix/Fixme (Trouble)" },
  },
  d = {
    name = "Debug",
    b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Breakpoint" },
    c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
    i = { "<cmd>lua require'dap'.step_into()<cr>", "Into" },
    o = { "<cmd>lua require'dap'.step_over()<cr>", "Over" },
    O = { "<cmd>lua require'dap'.step_out()<cr>", "Out" },
    r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Repl" },
    l = { "<cmd>lua require'dap'.run_last()<cr>", "Last" },
    u = { "<cmd>lua require'dapui'.toggle()<cr>", "UI" },
    x = { "<cmd>lua require'dap'.terminate()<cr>", "Exit" },
  },
  t = {
    name = "+Tests"
  },
  -- z = {
  --   name = "Folding",
  --   R = { "<cmd>lua require'ufo'.openAllFolds<cr>", "Open all folds" },
  --   M = { "<cmd>lua require'ufo'.closeAllFolds<cr>", "Close all folds" },
  --   -- r = { "<cmd>lua require'ufo'.openFoldsExceptKinds<cr>", "Open fold except kinds" },
  --   -- m = { "<cmd>lua require'ufo'.closeFoldsWith<cr>", "Close fold with" },
  -- },
  ['\\'] = {
    name = "+Terminal",
    h = { "<cmd>ToggleTerm direction=horizontal<cr>", "Horizontal" },
    v = { "<cmd>ToggleTerm direction=vertical size=100 <cr>", "Vertical" },
    f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
  }
}
