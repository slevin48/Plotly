function plotly(x,y)
    //if the file plotly.html already exists, delete it
    if getos() == 'Windows' then unix('del plotly.html');
    else unix('rm -f plotly.html'); end
    header='<head><script src=""https://cdn.plot.ly/plotly-latest.min.js""></script></head>';
    container='<div id=""container"" style=""width:600px;height:400px;""></div>';
    js='<script>CONTAINER = document.getElementById(""container"");Plotly.plot( CONTAINER, [{x: ['+strcat(string(x),",")+'],y: ['+strcat(string(y),",")+'] }]);</script>';
    write('plotly.html', [header;container;js])
    if getos() == 'Windows' then winopen('plotly.html') end
endfunction
