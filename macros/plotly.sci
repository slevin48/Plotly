function plotly(x,y)
    //if the file plotly.html already exists, delete it
    if getos() == 'Windows' then unix('del html\plotly.html');
    else unix('rm -f html/plotly.html'); end
    header='<head><script src=""https://cdn.plot.ly/plotly-latest.min.js""></script></head>';
    container='<div id=""container"" style=""width:600px;height:400px;""></div>';
    // data = '{x: ['+strcat(string(x),",")+'],y: ['+strcat(string(y),",")+'] }';
    st = struct("x",x,"y",y);
    data = toJSON(st);
    js='<script>CONTAINER = document.getElementById(""container"");Plotly.plot( CONTAINER,['+data+'] );</script>';
    write('html\plotly.html', [header;container;js])
    if getos() == 'Windows' then winopen('html\plotly.html') end
endfunction
