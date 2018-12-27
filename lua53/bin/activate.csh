which deactivate-lua >&/dev/null && deactivate-lua

alias deactivate-lua 'if ( -x '\''/Users/thomas/Work/Projects/lua-tests/lua53/bin/lua'\'' ) then; setenv PATH `'\''/Users/thomas/Work/Projects/lua-tests/lua53/bin/lua'\'' '\''/Users/thomas/Work/Projects/lua-tests/lua53/bin/get_deactivated_path.lua'\''`; rehash; endif; unalias deactivate-lua'

setenv PATH '/Users/thomas/Work/Projects/lua-tests/lua53/bin':"$PATH"
rehash
