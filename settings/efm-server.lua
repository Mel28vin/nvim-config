-- python
-- local flake8 = {
--     LintCommand = "flake8 --ignore=E501 --stdin-display-name ${INPUT} -",
--     lintStdin = true,
--     lintFormats = {"%f:%l:%c: %m"}
-- }
-- local isort = {formatCommand = "isort --quiet -", formatStdin = true}
-- local yapf = {formatCommand = "yapf --quiet", formatStdin = true}

-- local python_arguments = {}

-- TODO replace with path argument
local flake8 = {
    LintCommand = "flake8 --ignore=E501 --stdin-display-name ${INPUT} -",
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"}
}

local isort = {formatCommand = "isort --quiet -", formatStdin = true}

local yapf = {formatCommand = "yapf --quiet", formatStdin = true}
-- local black = {formatCommand = "black --quiet --stdin-filename ", formatStdin = true}

-- if O.python.linter == 'flake8' then table.insert(python_arguments, flake8) end

-- if O.python.isort then table.insert(python_arguments, isort) end

-- if O.python.formatter == 'yapf' then
--     table.insert(python_arguments, yapf)
-- elseif O.python.formatter == 'black' then
    -- table.insert(python_arguments, black)
-- end


require "lspconfig".efm.setup {
    init_options = {documentFormatting = true, codeAction = false},
    filetypes = {'python'},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            python = {isort, yapf}
        }
    }
}
