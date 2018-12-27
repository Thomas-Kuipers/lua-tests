if functions -q deactivate-lua
    deactivate-lua
end

function deactivate-lua
    if test -x '/Users/thomas/Work/Projects/lua-tests/lua53/bin/lua'
        eval ('/Users/thomas/Work/Projects/lua-tests/lua53/bin/lua' '/Users/thomas/Work/Projects/lua-tests/lua53/bin/get_deactivated_path.lua' --fish)
    end

    functions -e deactivate-lua
end

set -gx PATH '/Users/thomas/Work/Projects/lua-tests/lua53/bin' $PATH
