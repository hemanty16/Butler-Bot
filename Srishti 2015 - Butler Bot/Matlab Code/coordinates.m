function [x, y] = coordinates(x1,y1,x2,y2,x3,y3,x4,y4,x,y,dim1,dim2)
m1 = (y4-y1)/(x4-x1);
m2 = (y3-y2)/(x3-x2);
m3 = (y2-y1)/(x2-x1);
m4 = (y3-y4)/(x3-x4);
c1 = (y1*x4-y4*x1)/(x4-x1);
c2 = (y2*x3-y3*x2)/(x3-x2);
c3 = (y1*x2-y2*x1)/(x2-x1);
c4 = (y4*x3-y3*x4)/(x3-x4);

x5 = (c2-c1)/(m1-m2);
y5 = (m1*c2 - m2*c1)/(m1-m2);

x6 = (c4-c3)/(m3-m4);
y6 = (m3*c4 - m4*c3)/(m3-m4);

m5 = (y5-y)/(x5-x);
m6 = (y6-y)/(x6-x);

c5 = (y*x5-y5*x)/(x5-x);
c6 = (y*x6-y6*x)/(x6-x);

x7 = (c5-c3)/(m3-m5);
x8 = (c6-c1)/(m1-m6);

y7 = (m3*c5 - m5*c3)/(m3-m5);
y8 = (m1*c6 - m6*c1)/(m1-m6);

ratio1 = [sqrt(power(x7-x1, 2) + power(y7-y1, 2)) sqrt(power(x7-x2, 2) + power(y7-y2, 2))];
ratio2 = [sqrt(power(x8-x1, 2) + power(y8-y1, 2)) sqrt(power(x8-x4, 2) + power(y8-y4, 2))];

x = ratio1(1)*dim1/(ratio1(1)+ratio1(2));
y = ratio2(1)*dim2/(ratio2(1)+ratio2(2));
end
