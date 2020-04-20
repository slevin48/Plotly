function demo_scatterly_1()
    // x and y initialisation
    x = linspace(0,2,100);
    y = exp(-x).*cos(10*x) + 0.2*rand(1,length(x));
    // create 2D scatter plot
    scatterly(x,y);
endfunction

demo_scatterly_1();
clear demo_scatterly_1;
