local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node

return {
    s("pytemplate", {
        t({
            "#!/usr/bin/env python3",
            "# -*- coding:utf-8 -*-",
            ""
        }),
        f(function()
            return "# Path: " .. vim.fn.fnamemodify(vim.fn.expand("%:p"), ":.")
        end, {}),
        t({
            "",
            '"""',
            "Module docstring",
            '"""',
            "",
            "",
            "",
        }),
        f(function()
            return "# End of " .. vim.fn.fnamemodify(vim.fn.expand("%:p"), ":.")
        end, {}),
    }),
}
