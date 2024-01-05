# single-line comment

#[[
    multi-line comment
#]]

#[==[
    multi-line comment

    # single-line comment
    
    #[[
        nested comment
    #]]
#]==]

message(hello world)
message(hello " world")
message([[hello world]])

set(name "Arthur")
set(age  19)

unset(name)
unset(age)


set(var_name "text")
set(outer "var")
set(inner "name")

message(${${outer}_${inner}})