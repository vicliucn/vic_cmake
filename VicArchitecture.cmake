#获取系统架构(amd64, arm64, armel, armhf, i386, mips, mipsel, powerpc, ppc64el, s390x, source, multi-arch)

macro(vic_get_architecture variable_name)
    if(CMAKE_SYSTEM_PROCESSOR MATCHES "x86_64|amd64|AMD64")
        set(${variable_name} "amd64")
    elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "i[123456]86|x86")
        set(${variable_name} "i386")
    elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "arm.*")
        set(${variable_name} "armel")
    #elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "arm.*") # TODO:待完成
        #set(${variable_name} "armhf")
    elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "arm64.*")
        set(${variable_name} "arm64")
    elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "mips.*") # TODO:待测试
        set(${variable_name} "mips")
    #elseif(CMAKE_SYSTEM_PROCESSOR MATCHES ".*") # TODO:待完成
        #set(${variable_name} "mipsel")
    elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "APM.*") # TODO:待测试
        set(${variable_name} "powerpc")
    #elseif(CMAKE_SYSTEM_PROCESSOR MATCHES ".*") # TODO:待完成
        #set(${variable_name} "ppc64el")
    #elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "sparc.*") # TODO:待完成
        #set(${variable_name} "sparc")
    else()
    endif()
endmacro()
