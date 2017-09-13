# 获取二进制格式

macro(vic_get_binary_format variable_name)
    if(WIN32)
        set(${variable_name} "pe")
    elseif(CYGWIN)
        set(${variable_name} "pe")
    #elseif(AIX)
        #set(${variable_name} "xcoff") # TODO: 待完成
    elseif(APPLE)
        set(${variable_name} "mach-o")
    elseif(UNIX)
        set(${variable_name} "elf")
    else()
        string(TOLOWER ${CMAKE_INTERNAL_PLATFORM_ABI} ${variable_name})
    endif()
endmacro()
