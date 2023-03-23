project "jsoncpp"
	kind "StaticLib"
	language "C++"

  targetdir ("%{wks.location}/build/" .. outputdir .. "/%{prj.name}")
	debugdir ("%{wks.location}/build/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/build/tmp/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/lib_json/*.cpp"
	}

	includedirs
	{
		"include"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "off"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "off"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
