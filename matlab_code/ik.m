l1 = 200;
l2 = 300;
l3 = 50;

x_end = -28.8675;
y_end = -385.7738;

t1 = atan2(y_end,x_end);
tr = pi/2-t1;
lt_2 = x_end^2 + y_end^2;
lt = sqrt(lt_2);

c_s3 = (l1^2+(l2+l3)^2-lt_2)/(2*l1*(l2+l3));
s3 = acos(c_s3);
s_s3 = sin(s3);
ll_2 = l1^2+l2^2-2*l1*l2*c_s3;
ll = sqrt(ll_2);

r2 = asin( (l2+l3)/lt * s_s3);
s2 = acos ( (l1^2+ll^2-l2^2)/(2*l1*ll));

o1 = tr - r2
o2 = 2*pi - o1 - 2*s2