if newversion:
    # godot.exe dir
    godot --gdnative-generate-json-api api.json
    # godot-cpp dir
    scons platform=windows generate_bindings=yes bits=64 -j6 use_custom_api_file=yes custom_api_file=../api.json
    
else:
    # godot-cpp dir
    scons platform=windows generate_bindings=yes bits=64 -j6

# root dir,use visual studio cmd tool
scons platform=windows