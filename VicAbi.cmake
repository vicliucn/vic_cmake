# 获取abi

macro(vic_get_abi variable_name)
    if(WIN32)
        set(${variable_name} "ms")
    elseif(CYGWIN)
        set(${variable_name} "ms")
    elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "arm.*")
        set(${variable_name} "aapcs")
    elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "mips.*")
        set(${variable_name} "o32")
    #elseif(AIX)
        #set(${variable_name} "sysv") # TODO:待完成
    elseif(APPLE)
        set(${variable_name} "sysv")
    elseif(UNIX)
        set(${variable_name} "sysv")
    else()
        #string(TOLOWER ${CMAKE_INTERNAL_PLATFORM_ABI} ${variable_name}) # TODO:待完成
    endif()
endmacro()
