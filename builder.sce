mode(-1);
lines(0);

function main_builder()
    TOOLBOX_NAME  = "Plotly";
    TOOLBOX_TITLE = "Plotly";
    toolbox_dir   = get_absolute_file_path("builder.sce");

    // Check Scilab's version
    // =============================================================================
    try
        v = getversion("scilab");
    catch
        error(gettext("Scilab >= 6.0.0 or more is required."));
    end

    // Check modules_manager module availability
    // =============================================================================
    if ~isdef("tbx_build_loader") then
        error(msprintf(gettext("%s module not installed."), "modules_manager"));
    end

    // Action
    // =============================================================================
    tbx_builder_macros(toolbox_dir);
    if %t && or(getscilabmode() == ["NW";"STD"]) then
        tbx_builder_help(toolbox_dir);
    end
    tbx_build_loader(toolbox_dir);
    tbx_build_cleaner(toolbox_dir);

endfunction
// =============================================================================
main_builder();
clear main_builder; // remove main_builder on stack
// =============================================================================
