# macro(mac arg)
# set(arg "new")
# message("arg: ${arg}")
# endmacro()

# set(arg "old")
# mac(${arg})
# message("arg: ${arg}")

# macro(mac arg)

# endmacro()

# mac("123")
# message("${arg}")

function(fn arg)
    if(arg EQUAL 1)
        set(arg 2)
    endif()

    message("arg: ${arg}")
    return()
endfunction()

fn(1)