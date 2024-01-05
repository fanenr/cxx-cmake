# set(ENV{var} 1)
set(var 1 CACHE INTERNAL "nothing")
message("var: ${var}")
message("var: $CACHE{var}")
