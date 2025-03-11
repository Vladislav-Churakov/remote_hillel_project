set(OPT_WARNINGS "")  

if(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    list(APPEND OPT_WARNINGS -Wno-deprecated-builtins)
elseif(CMAKE_CXX_COMPILER_ID MATCHES "GNU")
    list(APPEND OPT_WARNINGS -Wall -Wextra -Werror)
elseif(CMAKE_CXX_COMPILER_ID MATCHES "MSVC")
    list(APPEND OPT_WARNINGS /W0 /WX-)
endif()