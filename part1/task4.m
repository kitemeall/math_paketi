x=[-2*pi():0.1:2*pi()];
z = arrayfun(@f,x);
plot(x,z)
function retval = f (v)
    a = [1:1:100];
    y = sin(v);
    retval = sum(y.*a);
endfunction
