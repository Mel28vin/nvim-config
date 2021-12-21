function hi(group, opts)
	local c = "highlight " .. group
	for k, v in pairs(opts) do
		c = c .. " " .. k .. "=" .. v
	end
	vim.cmd(c)
end
function create_augroup(name, autocmds)
    cmd = vim.cmd
    cmd('augroup ' .. name)
    cmd('autocmd!')
    for _, autocmd in ipairs(autocmds) do
        cmd('autocmd ' .. table.concat(autocmd, ' '))
    end
    cmd('augroup END')
end
function HighlightNone()
    hi("Normal", {ctermbg = "NONE", guibg = "NONE"})
end
create_augroup("HighlightNone", {
    {"ColorScheme", "*", "lua HighlightNone()"}
})
