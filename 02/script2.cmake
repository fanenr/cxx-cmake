function(outer)
    set(var "outer" PARENT_SCOPE)
    # unset(var2)
    message("in outer,  var : ${var}")
    message("in outer,  var2: ${var2}")
endfunction()

function(inner)
    set(var "inner")
    set(var "inner2" PARENT_SCOPE)
    outer()
    message("in inner,  var : ${var}")
endfunction()

set(var "global")
set(var2 "value")

inner()
message("in global, var  : ${var}")