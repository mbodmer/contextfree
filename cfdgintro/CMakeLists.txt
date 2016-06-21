set(MYNAME cfdgintro)

set(SRCS
        ${CMAKE_CURRENT_SOURCE_DIR}/${MYNAME}.cfdg
)

CFDG_ADD_SVG(SRCS ${MYNAME})
