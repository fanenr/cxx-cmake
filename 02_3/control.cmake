set(var "1")
set(gvar "a")


if (var GREATER 0)
    unset(gvar)
    set(var2 "b")
    message("true")
endif()

message("var2: ${var2}")