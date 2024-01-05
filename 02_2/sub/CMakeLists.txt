set(cvar "b" CACHE STRING "a cache variable modified" FORCE)
# set(cvar "b" CACHE INTERNAL "a cache variable modified")
message("in sub, cvar: $CACHE{cvar}")