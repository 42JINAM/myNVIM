return {
  "mfussenegger/nvim-lint",
  event = { "BufWritePost", "BufReadPost" },
  config = function()
    local lint = require("lint")
    
    lint.linters_by_ft = {
      c = { "cppcheck" },
      cpp = { "cppcheck"}
    }
    
    -- 저장시 자동 검사
    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
