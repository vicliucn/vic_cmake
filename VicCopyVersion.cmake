#拷贝版本号

macro(vic_copy_version to_project_name from_project_name)
    set(${to_project_name}_VERSION_MAJOR ${${from_project_name}_VERSION_MAJOR})
    set(${to_project_name}_VERSION_MINOR ${${from_project_name}_VERSION_MINOR})
    set(${to_project_name}_VERSION_PATCH ${${from_project_name}_VERSION_PATCH})
    set(${to_project_name}_VERSION_TWEAK ${${from_project_name}_VERSION_TWEAK})
    set(${to_project_name}_VERSION ${${from_project_name}_VERSION})
endmacro()
