v = [150, 157, 158, 190, 30, 150, 160, 201, 110; 1, 2, 3, 4, 5, 2, 3, 1, 5];

a = v(1,:);
b = v(2,:);

g1 = a(find(b() == 1));
g2 = a(find(b() == 2));
b1 = a(find(b() == 3));
b2 = a(find(b() == 4));
c1 = a(find(b() == 5));

disp('average height')
sum(g1)/length(g1)
sum(g2)/length(g2)
sum(b1)/length(b1)
sum(b2)/length(b2)
sum(c1)/length(c1)

disp('sum heigth')
sum(g1)
sum(g2)
sum(b1)
sum(b2)
sum(c1)

disp('average height >100 & < 200')

g1 = g1(find(g1() > 100 & g1() < 200));
g2 = g2(find(g2() > 100 & g2() < 200));
b1 = b1(find(b1() > 100 & b1() < 200));
b2 = b2(find(b2() > 100 & b2() < 200));
c1 = c1(find(c1() > 100 & c1() < 200));

sum(g1)/length(g1)
sum(g2)/length(g2)
sum(b1)/length(b1)
sum(b2)/length(b2)
sum(c1)/length(c1)
 