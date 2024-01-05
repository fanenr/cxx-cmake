function(func)
    set(ENV{name} "fanenr")
    message("name: $ENV{name}")
endfunction()

set(ENV{name} "arthur")
message("name: $ENV{name}")
func()
message("name: $ENV{CMAKE_TOOLCHAIN_FILE}")
