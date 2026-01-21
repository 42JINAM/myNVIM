return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.keymap = opts.keymap or {}
    -- 기존 preset은 그대로 두고, Tab 관련만 꺼 주기
    -- opts.keymap["<Tab>"] = false      -- Tab으로 completion 이동/선택 안 함
    -- opts.keymap["<S-Tab>"] = false    -- Shift+Tab도 비활성화
  end,
}
