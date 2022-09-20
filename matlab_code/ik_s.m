syms l1 l2 l3 pi t1 tr lt_2 lt c_s3 s3 s_s3 ll_2 ll r2 s2 o1 o2 x_end y_end
syms m1 m2
syms mm1 mm2

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

o1 = tr - r2;
o2 = 2*pi - o1 - 2*s2;

[o1_s,m1] = subexpr(o1,m1);
[o2_s,m2] = subexpr(o2,m2);

[o1_ss,mm1] = subexpr(o1_s,mm1);
[o2_ss,mm2] = subexpr(o2_s,mm2);

latex(o1_ss)
latex(mm1)
latex(m1)

fprintf('*************************************\n');

latex(o2_ss)
latex(mm2)
latex(m2)