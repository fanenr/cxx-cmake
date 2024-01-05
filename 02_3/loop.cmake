# set(start 0)
# set(end 10)

# while(start LESS end)
#     math(EXPR rlt "${start} % 2")

#     if(rlt EQUAL 0)
#         message("no.${start}")
#     endif()

#     math(EXPR start "${start} + 1")
# endwhile()

# set(ml "a;b;c;d;e")
# set(i 0)
# list(LENGTH ml len)
# while (i LESS len)
#     list(GET ml ${i} elem)
#     message("at ${i}: ${elem}")
#     math(EXPR i "${i} + 1")
# endwhile()


# set(l1 "a;b;c;d;e")
# set(l2 "1;2;3;4")

# foreach(v IN LISTS l1 l2)
#     message("v: ${v}")
# endforeach()

# foreach(v RANGE 1 10 2)
#     message("no.${v}")
# endforeach()

set(ls "a;b;c;d")
foreach(v IN LISTS ls)
    message("v: ${v}")
    set(a ${v})
endforeach()

message("a: ${a}")