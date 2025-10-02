project "fastgltf"
	language "C++"
	kind "StaticLib"
	cppdialect "C++20"
    architecture "x64"
    staticruntime "Off"
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir    ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
   
    includedirs 
    {
        "include"
    }

	files
	{
        "include/**.hpp",
        "src/**.cpp"
	}

	optimize "Speed"
	floatingpoint "Fast"
	intrinsics "On"

    filter { "configurations:Debug" }
        runtime "Debug"

    filter {"configurations:Release"}
        runtime "Release"

