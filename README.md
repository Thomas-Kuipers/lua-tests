# Installation
1. hererocks lua53 -l5.3 -rlatest
2. source lua53/bin/activate
3. luarocks install busted
4. luarocks install luacov
5. luarocks install luafilesystem

# Running your tests
`busted`

# Viewing test coverage report
`busted --coverage && luacov && cat luacov.report.out`