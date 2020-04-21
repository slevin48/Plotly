function subdemolist = demo_gateway()
    demopath = get_absolute_file_path("Plotly.dem.gateway.sce");

    subdemolist = ["Simple sine plot", "plotly_sin.dem.sce";
                    "Scatter sine plot", "scatterly_sin.dem.sce";
                    "Scatter plot 1", "scatterly_1.dem.sce";
                    "Bar chart 1", "barly_1.dem.sce";
                    "Pie chart 1", "piely_1.dem.sce"];

    subdemolist(:,2) = demopath + subdemolist(:,2);

endfunction

subdemolist = demo_gateway();
clear demo_gateway; // remove demo_gateway on stack
