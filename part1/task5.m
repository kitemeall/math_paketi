function start()
N = 1000;
s = 100*rand(2, N);
mpx = sum(s(1,:))/N;
mpy = sum(s(2,:))/N;
f1(s, mpx,mpy)
f2(s, mpx,mpy)
f3(s, mpx,mpy)
f4(s, mpx,mpy)
endfunction

function f1(s, mpx, mpy)
    fig = figure
    ax = axes
    plot(s(1,:), s(2,:), '.');
    hold on
    set(ax, 'xlim', [-50, 150]);
    set(ax, 'ylim', [-50, 150]);
    title('set A')
    plot (mpx, mpy, '*','color','r')
    text (mpx,mpy, 'mass cenetr')   
endfunction

function f2(s, mpx, mpy)
    fig = figure
    ax = axes
    s(1,:) = s(1,:) - mpx;
    s(2,:) = s(2,:) - mpy;
    
    plot(s(1,:), s(2,:), '*', 'color', 'k');
    hold on
    set(ax, 'xlim', [-50, 150]);
    set(ax, 'ylim', [-50, 150]);
    title('set B')
endfunction

function f3(s, mpx, mpy)
    fig = figure
    ax = axes
    fi = pi()/4;
    rot_matr = [cos(fi) -sin(fi); sin(fi) cos(fi)]
    s = rot_matr * s;
    plot(s(1,:), s(2,:), 'o', 'color', 'm');
    hold on
    set(ax, 'xlim', [-50, 150]);
    set(ax, 'ylim', [-50, 150]);
    title('set C')
endfunction

function f4(s, mpx, mpy)
    fig = figure
    ax = axes
    s(1,:) = s(1,:) - mpx;
    s(2,:) = s(2,:) - mpy;
    fi = pi()/4;
    rot_matr = [cos(fi) -sin(fi); sin(fi) cos(fi)]
    s = rot_matr * s;
    s(1,:) = s(1,:) + mpx;
    s(2,:) = s(2,:) + mpy;
    
    plot(s(1,:), s(2,:), 'o', 'color', 'g');
    hold on
    set(ax, 'xlim', [-50, 150]);
    set(ax, 'ylim', [-50, 150]);
    title('set D')
endfunction


