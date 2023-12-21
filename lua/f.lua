local M = {}

function fish_run(opt)
    local args = opt.args
    local output = vim.fn.system({ 'fish', '-i', '-c', args })
    output = output:sub(1, -2)
    print(output)
end

function M.setup(opt)
    opt = opt or {}
    vim.api.nvim_create_user_command('F', fish_run, {
        desc = 'Call fish shell functions/commands',
        nargs = '+',
    })
end

return M
