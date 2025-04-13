require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-f>", "<C-f>zz")
map("n", "<C-b>", "<C-b>zz")


-- CMake releated stuff
map("n", "<leader>G",  ":CMakeGenerate <CR>",              { desc = "CMake Configure and generate"                       })
map("n", "<leader>B",  ":CMakeBuild <CR>",                 { desc = "CMake Build"                                        })
map("n", "<leader>R",  ":CMakeRun <CR>",                   { desc = "CMake Run"                                          })
map("n", "<leader>K",  ":CMakeSelectKit <CR>",             { desc = "CMake Select kit"                                   })
map("n", "<leader>S",  ":CMakeSettings <CR>",              { desc = "CMake Project settings"                             })
map("n", "<leader>cd", ":CMakeDebug <CR>",                 { desc = "CMake Debug. Wanna add args?`:CMakeTargetSettings`" })
map("n", "<leader>ce", ":CMakeCloseExecutor <CR>",         { desc = "CMake Close executor"                               })
map("n", "<leader>cr", ":CMakeCloseRunner <CR>",           { desc = "CMake Close runner"                                 })
map("n", "<leader>oe", ":CMakeOpenExecutor <CR>",          { desc = "CMake Open executor"                                })
map("n", "<leader>or", ":CMakeOpenRunner <CR>",            { desc = "CMake Open runner"                                  })
map("n", "<leader>se", ":CMakeStopExecutor <CR>",          { desc = "CMake Stop current cmake executor's process"        })
map("n", "<leader>sr", ":CMakeStopRunner <CR>",            { desc = "CMake Stop current cmake runner's process"          })
map("n", "<leader>cc", ":CMakeClean <CR>",                 { desc = "CMake Clean"                                        })
map("n", "<leader>qb", ":CMakeQuickBuild <CR>",            { desc = "CMake Quick build"                                  })
map("n", "<leader>qr", ":CMakeQuickRun <CR>",              { desc = "CMake Quick run"                                    })
map("n", "<leader>ci", ":CMakeInstall <CR>",               { desc = "CMake Install"                                      })
map("n", "<leader>cl", ":CMakeLaunchArgs <CR>",            { desc = "CMake Launch args"                                  })
map("n", "<leader>sp", ":CMakeSelectBuildPreset <CR>",     { desc = "CMake Select build preset"                          })
map("n", "<leader>st", ":CMakeSelectBuildTarget <CR>",     { desc = "CMake Select build target"                          })
map("n", "<leader>sT", ":CMakeSelectBuildType <CR>",       { desc = "CMake Select build variant"                         })
map("n", "<leader>sc", ":CMakeSelectConfigurePreset <CR>", { desc = "CMake Select configure preset"                      })
map("n", "<leader>sl", ":CMakeSelectLaunchTarget <CR>",    { desc = "CMake Select launch target"                         })
map("n", "<leader>tf", ":CMakeShowTargetFiles <CR>",       { desc = "CMake Show target file"                             })
map("n", "<leader>ts", ":CMakeTargetSettings <CR>",        { desc = "CMake Target settings"                              })
map("n", "<leader>sb", ":CMakeSelectBuildDir <CR>",        { desc = "CMake Select build dir"                             })
map("n", "<leader>sw", ":CMakeSelectCwd <CR>",             { desc = "CMake Select cwd"                                   })


-- DAP releated stuff
map(
    "n",
    "<leader>dr",
    function()
        require("dap").restart()
    end,
    { desc = "dap Restart session" }
)

map(
    "n",
    "<leader>rb",
    function()
        require("dap").clear_breakboints()
    end,
    { desc = "dap Remove all breakpoints" }
)

map(
    "n",
    "<leader>dt",
    function()
        require("dap").terminate()
    end,
    { desc = "dap Terminate session" }
)

map(
    "n",
    "<leader>tu",
    function()
        require("dap").up()
    end,
    { desc = "dap Go up in current stacktrace without stepping" }
)

map(
    "n",
    "<leader>td",
    function()
        require("dap").down()
    end,
    { desc = "dap Go down in current stacktrace without stepping" }
)

map(
    "n",
    "<leader>rc",
    function()
        require("dap").reverse_continue()
    end,
    { desc = "dap Reverse continue. Debugger & debug adapter have to support it" }
)

map(
    "n",
    "<F5>",
    function()
        require("dap").continue()
    end,
    { desc = "dap Continue" }
)

map(
    "n",
    "<F10>",
    function()
        require("dap").step_over()
    end,
    { desc = "dap Step over" }
)

map(
    "n",
    "<F11>",
    function()
    require("dap").step_into()
        end,
    { desc = "dap Step into by statement" }
)

map(
    "n",
    "<F12>",
    function()
        require("dap").step_out()
    end,
    { desc = "dap Step out" }
)

map(
    "n",
    "<leader>b",
    function()
        require("dap").toggle_breakpoint()
    end,
    { desc = "dap Toggle breakpoint" }
)

map(
    "n",
    "<leader>sb",
    function()
        require("dap").set_breakpoint()
    end,
    { desc = "dap Set breakpoint" }
)

map(
    "n",
    "<leader>lp",
    function()
        require("dap").set_breakpoint(nil, nil, vim.fn.input "Log point message: ")
    end,
    { desc = "dap Set breakpoint with log point" }
)

map(
    "n",
    "<leader>do",
    function()
        require("dap").repl.open()
    end,
    { desc = "dap Repl open?" }
)

map(
    "n",
    "<leader>dl",
    function()
        require("dap").run_last()
    end,
    { desc = "dap Run last?" }
)


-- DAP UI releated stuff
map(
    "n",
    "<leader>do",
    function()
        require("dapui").open()
    end,
    { desc = "dapui Open" }
)

map(
    "n",
    "<leader>dc",
    function()
        require("dapui").close()
    end,
    { desc = "dapui Close" }
)

map(
    "n",
    "<leader>de",
    function()
        require("dapui").eval()
    end,
    { desc = "dapui Show hover window with evaluating expression" }
)

map(
    { "n", "v" },
    "<leader>dh",
    function()
        require("dap.ui.widgets").hover()
    end,
    { desc = "dapui hover?" }
)

map(
    { "n", "v" },
    "<leader>dp",
    function()
        require("dap.ui.widgets").preview()
    end,
    { desc = "dapui preview?" }
)

map(
    "n",
    "<leader>df",
    function()
        local widgets = require "dap.ui.widgets"
        widgets.centered_float(widgets.frames)
    end,
    { desc = "dapui widgets frame float ?" }
)

map(
    "n",
    "<leader>ds",
    function()
        local widgets = require "dap.ui.widgets"
        widgets.centered_float(widgets.scopes)
    end,
    { desc = "dapui widgets scopes float ?" }
)


-- LSP stuff
map(
    "n",
    "K",
    function ()
        vim.lsp.buf.hover()
    end,
    { desc = "LSP hover" }
)
