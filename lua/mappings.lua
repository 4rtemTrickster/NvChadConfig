require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>G",  ":CMakeGenerate <CR>", { desc = "CMake Configure and generate" })
map("n", "<leader>B",  ":CMakeBuild <CR>", { desc = "CMake Build" })
map("n", "<leader>R",  ":CMakeRun <CR>", { desc = "CMake Run" })
map("n", "<leader>K",  ":CMakeSelectKit <CR>", { desc = "CMake Select kit" })
map("n", "<leader>S",  ":CMakeSettings <CR>", { desc = "CMake Project settings" })
map("n", "<leader>cd", ":CMakeDebug <CR>", { desc = "CMake Debug. Wanna add args?`:CMakeTargetSettings`" })
map("n", "<leader>ce", ":CMakeCloseExecutor <CR>", { desc = "CMake Close executor" })
map("n", "<leader>cr", ":CMakeCloseRunner <CR>", { desc = "CMake Close runner" })
map("n", "<leader>oe", ":CMakeOpenExecutor <CR>", { desc = "CMake Open executor" })
map("n", "<leader>or", ":CMakeOpenRunner <CR>", { desc = "CMake Open runner" })
map("n", "<leader>se", ":CMakeStopExecutor <CR>", { desc = "CMake Stop current cmake executor's process" })
map("n", "<leader>sr", ":CMakeStopRunner <CR>", { desc = "CMake Stop current cmake runner's process" })
map("n", "<leader>cc", ":CMakeClean <CR>", { desc = "CMake Clean" })
map("n", "<leader>qb", ":CMakeQuickBuild <CR>", { desc = "CMake Quick build" })
map("n", "<leader>qr", ":CMakeQuickRun <CR>", { desc = "CMake Quick run" })
map("n", "<leader>ci", ":CMakeInstall <CR>", { desc = "CMake Install" })
map("n", "<leader>cl", ":CMakeLaunchArgs <CR>", { desc = "CMake Launch args" })
map("n", "<leader>sp", ":CMakeSelectBuildPreset <CR>", { desc = "CMake Select build preset" })
map("n", "<leader>st", ":CMakeSelectBuildTarget <CR>", { desc = "CMake Select build target" })
map("n", "<leader>sT", ":CMakeSelectBuildType <CR>", { desc = "CMake Select build variant" })
map("n", "<leader>sc", ":CMakeSelectConfigurePreset <CR>", { desc = "CMake Select configure preset" })
map("n", "<leader>sl", ":CMakeSelectLaunchTarget <CR>", { desc = "CMake Select launch target" })
map("n", "<leader>tf", ":CMakeShowTargetFiles <CR>", { desc = "CMake Show target file" })
map("n", "<leader>ts", ":CMakeTargetSettings <CR>", { desc = "CMake Target settings" })
map("n", "<leader>sb", ":CMakeSelectBuildDir <CR>", { desc = "CMake Select build dir" })
map("n", "<leader>sw", ":CMakeSelectCwd <CR>", { desc = "CMake Select cwd" })
