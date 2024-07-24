return {
  "CRAG666/code_runner.nvim",

  keys = {
    {
      "<leader>rc",
      function()
        require("code_runner").run_code()
      end,
      desc = "Run Code."
    },
  },

  opts = {
    mode = "float",
    float = {
      border = "single",
    },
    filetype = {
      -- python = "python -u '$dir/$fileName'"
      -- python = "python -u"
    },
  },
}
