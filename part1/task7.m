a = [1 2 3 1 3 4];

for i = 1 : size(a,2) * size(a,1)
    if (rem (a(i), 2) == 0)
      a(i) = a(i) * 2;
    endif
endfor
