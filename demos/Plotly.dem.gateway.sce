function subdemolist = demo_gateway()
    demopath = get_absolute_file_path("Plotly.dem.gateway.sce");

    subdemolist = ["Sine Demo", "plotly_sin.dem.sce";
                    "Scatter Demo", "scatterly_sin.dem.sce";
                    "Scatter 1", "scatterly_1.dem.sce"];

    subdemolist(:,2) = demopath + subdemolist(:,2);

endfunction

subdemolist = demo_gateway();
clear demo_gateway; // remove demo_gateway on stack
