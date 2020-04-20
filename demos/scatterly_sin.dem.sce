function demo_scatterly_sin()
    x=[0:0.1:2*%pi];
    y=2*sin(x);
    scatterly(x,y)
endfunction

demo_scatterly_sin();
clear demo_scatterly_sin;
