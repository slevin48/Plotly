function path = Plotly_getpath()
    path = get_function_path("Plotly_getpath")
    path = fullpath(fullfile(fileparts(path), ".."))
endfunction
