# -------------------------------------------------
# Finder CMake script for CFDG.
# Context Free Art http://www.contextfreeart.org
# -------------------------------------------------

# look for cfdg executable in standard system paths
find_program (CFDG_EXE NAMES cfdg)

# Will set CFDG_FOUND when executable found
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(CFDG DEFAULT_MSG
  CFDG_EXE
)

# Function adding a target for specified cfdg file
function(CFDG_ADD_SVG srcs name)
  if(CFDG_FOUND)
    add_custom_command(
      OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${name}.svg
      WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
      COMMAND ${CFDG_EXE} -V ${CMAKE_CURRENT_SOURCE_DIR}/${name}.cfdg -o ${name}.svg
      COMMENT "Generating ${CMAKE_CURRENT_BINARY_DIR}/${name}.svg"
      DEPENDS ${${srcs}}
      VERBATIM)
    add_custom_target(${name} ALL DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/${name}.svg)
  endif()
endfunction()
