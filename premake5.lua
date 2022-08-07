project "cjson"
	kind "staticLib"
	language (engine.compiler.language)
	cdialect (engine.compiler.dialect)
	toolset (engine.compiler.toolset)

	targetdir (engine.lib)
	objdir (engine.intermediate)

	staticruntime "on"

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
