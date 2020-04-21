function piely(x,txt)
    //if the file plotly.html already exists, delete it
    if getos() == 'Windows' then unix('del plotly.html');
    else unix('rm -f plotly.html'); end
    header='<head><script src=""https://cdn.plot.ly/plotly-latest.min.js""></script></head>';
    container='<div id=""container"" style=""width:600px;height:400px;""></div>';
    st = struct("values",x,"labels", txt, "type",'pie');
    data = toJSON(st);
    js='<script>CONTAINER = document.getElementById(""container"");Plotly.plot( CONTAINER,['+data+'] );</script>';
    write('plotly.html', [header;container;js])
    if getos() == 'Windows' then winopen('plotly.html') end
endfunction
