function demo_plotly_sin()
    x=[0:0.1:2*%pi];
    y=2*sin(x);
    plotly(x,y)
endfunction

demo_plotly_sin();
clear demo_plotly_sin;
