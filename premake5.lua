project "GLEW"
	kind "StaticLib"
	language "C"
	staticruntime "off"
	warnings "off"

	targetdir "bin/%{cfg.buildcfg}"
	objdir "obj/%{cfg.buildcfg}"

	files {
		"include/GL/glew.h",

		"src/glew.c"
	}
   
	includedirs {
		"include"
	}

	filter "configurations:Debug"
		defines { "DEBUG" }
		symbols "On"

	filter "configurations:Release"
		defines { "NDEBUG" }
		optimize "On"