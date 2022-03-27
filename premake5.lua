project "cjson"
	kind "staticLib"
	language "C"
	cdialect "C11"
	staticruntime "on"
	tool()

	targetdir (engine_root .. "/lib/" .. outputdir)
	objdir (engine_root .. "/bin-int/" .. outputdir .. "cjson")

	files {
		"cJSON.h",
		"cJSON.c",
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
	filter "configurations:Release"
		runtime "Release"
		optimize "on"
