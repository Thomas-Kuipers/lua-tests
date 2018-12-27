local lfs = require "lfs"

for file in lfs.dir('./scripts') do
	if file ~= "." and file ~= ".." then
		local spec = file:gsub('.lua', '_spec.lua')
		local f = io.open('./spec/' .. spec, 'r')

		if f == nil then 
			error('No spec file found for ' .. file .. '. It should be located at spec/' .. spec)
		end
	end
end