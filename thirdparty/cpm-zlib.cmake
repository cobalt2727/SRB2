CPMAddPackage(
	NAME zlib
	VERSION 1.3.1
	GITHUB_REPOSITORY madler/zlib
	GIT_TAG v1.3.1
	EXCLUDE_FROM_ALL
	OPTIONS
		"ZLIB_BUILD_EXAMPLES OFF"
)

if(zlib_ADDED)
	if(SRB2_CONFIG_SHARED_INTERNAL_LIBRARIES)
		add_library(ZLIB::ZLIB ALIAS zlib)
	endif()
	if(NOT_SRB2_CONFIG_SHARED_INTERNAL_LIBRARIES)
		add_library(ZLIB::ZLIB ALIAS zlibstatic)
	endif()
endif()
