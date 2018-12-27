local lfs = require "lfs"

-- Makes sure all files in scripts/ are loaded so they show up in the coverage report

function requireFilesInDir (path)
    for file in lfs.dir(path) do
        if file ~= "." and file ~= ".." then
            require ("../scripts/" .. file:gsub(".lua", ""))
        end
    end
end

requireFilesInDir ("./scripts")