#获取源码版本号

macro(vic_get_source_version variable_name)
    find_program(__GIT NAMES git)
    if(__GIT)
        execute_process(
            COMMAND ${__GIT} rev-parse HEAD
            OUTPUT_VARIABLE ${variable_name} OUTPUT_STRIP_TRAILING_WHITESPACE
        )
    endif()
endmacro()

macro(vic_get_source_short_version variable_name)
    find_program(__GIT NAMES git)
    if(__GIT)
        execute_process(
            COMMAND ${__GIT} rev-parse --short HEAD
            OUTPUT_VARIABLE ${variable_name} OUTPUT_STRIP_TRAILING_WHITESPACE
        )
    endif()
endmacro()
