#递增PATCH版本号

macro(vic_increment_version project_name)
    if(NOT ${project_name}_VERSION_MAJOR)
        set(${project_name}_VERSION_MAJOR 1)
    endif()
    if(NOT ${project_name}_VERSION_MINOR)
        set(${project_name}_VERSION_MINOR 0)
    endif()
    if(NOT ${project_name}_VERSION_PATCH)
        set(${project_name}_VERSION_PATCH 1)
    endif()
    if(NOT ${project_name}_VERSION_TWEAK)
        #string(TIMESTAMP ${project_name}_VERSION_TWEAK %j UTC)
    endif()

    if(CACHED_${project_name}_VERSION_PATCH AND
            ${project_name}_VERSION_MAJOR EQUAL CACHED_${project_name}_VERSION_MAJOR AND
            ${project_name}_VERSION_MINOR EQUAL CACHED_${project_name}_VERSION_MINOR)
        math(EXPR ${project_name}_VERSION_PATCH "${CACHED_${project_name}_VERSION_PATCH} + 1")
    endif()
    set(CACHED_${project_name}_VERSION_MAJOR ${${project_name}_VERSION_MAJOR} CACHE STRING "" FORCE)
    set(CACHED_${project_name}_VERSION_MINOR ${${project_name}_VERSION_MINOR} CACHE STRING "" FORCE)
    set(CACHED_${project_name}_VERSION_PATCH ${${project_name}_VERSION_PATCH} CACHE STRING "" FORCE)
    set(${project_name}_VERSION "${${project_name}_VERSION_MAJOR}.${${project_name}_VERSION_MINOR}.${${project_name}_VERSION_PATCH}")
endmacro()
