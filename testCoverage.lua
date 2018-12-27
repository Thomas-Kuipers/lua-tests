function lines_from(file)
  lines = {}
  for line in io.lines(file) do 
    lines[#lines + 1] = line
  end
  return lines
end

local lines = lines_from('./luacov.report.out')
local lastLine = lines[#lines]
local match = string.match(lastLine, '%d+.%d+')
local coverage = tonumber(match)
local minimumCoverage = 100

if coverage < minimumCoverage then 
	error('Unit test code coverage is too low: ' .. coverage .. '%. The minimum coverage is ' .. minimumCoverage .. '%.') 
end