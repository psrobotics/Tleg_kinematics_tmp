o1 = pi/2 + pi/6;
o2 = pi/2 + pi/6;
l1 = 100;
l2 = 200;
l3 = 50;

tor_measured = [-0.6;-0.6]
force_e = [0;0]

max_tor = 1.66*1000;
f_disp_k = 5;

for i = -200:40:200
    
%ik part
x_end = i;
y_end = -220;

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
    
%fk part
s2 = pi-0.5*(o1+o2);
s1 = asin(l1/l2*sin(s2));
s3 = pi-s1-s2;

lt_2 = l1^2+(l2+l3)^2-2*l1*(l2+l3)*cos(s3);
lt = sqrt(lt_2);
r2 = asin((l2+l3)/lt*sin(s3));

x_end = cos((o1+r2)-pi/2)*lt;
y_end = -1*sin((o1+r2)-pi/2)*lt;

j1 = (l1*cos(o1 - pi/2 + asin((sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)))*sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2) - sin(o1 - pi/2 + asin((sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)))*(((cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2) - (l1*sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))^2*(l2 + l3)^2*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(3/2))/(1 - (sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))^2*(l2 + l3)^2)/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)))^(1/2) + 1)*((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2);

j2 = (l1*cos(o1 - pi/2 + asin((sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)))*sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2) - (sin(o1 - pi/2 + asin((sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)))*((cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2) - (l1*sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))^2*(l2 + l3)^2*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(3/2))*((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2))/(1 - (sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))^2*(l2 + l3)^2)/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)))^(1/2);

j3 = - cos(o1 - pi/2 + asin((sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)))*(((cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2) - (l1*sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))^2*(l2 + l3)^2*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(3/2))/(1 - (sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))^2*(l2 + l3)^2)/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)))^(1/2) + 1)*((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2) - (l1*sin(o1 - pi/2 + asin((sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)))*sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2);

j4 = - (cos(o1 - pi/2 + asin((sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)))*((cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2) - (l1*sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))^2*(l2 + l3)^2*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(3/2))*((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2))/(1 - (sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))^2*(l2 + l3)^2)/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)))^(1/2) - (l1*sin(o1 - pi/2 + asin((sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)))*sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2);

j_mat = [j1 j2; j3 j4];
j_mat_t = j_mat';
j_mat_t_inv = inv(j_mat_t)

scatter(x_end,y_end,3,'filled','red')
hold on

for s = 1:150
tor_tmp =  [max_tor*(rand-0.5)*2;max_tor*(rand-0.5)*2]
force_e1 = j_mat_t_inv * tor_tmp;
quiver(x_end,y_end,force_e1(1)*f_disp_k,force_e1(2)*f_disp_k);
end

hold on
end
axis equal
axis([-400 400 -550 50])
grid on

quiver(-390,-150,50,0);

xlabel ("X position /mm")
ylabel ("Y position /mm")
tt = title ({'Foot maxium output force range when';'$x_{end}=-200\sim 200 \ mm,\  y_{end}=-220\ mm$'})
set(tt, 'Interpreter', 'latex');
grid on

