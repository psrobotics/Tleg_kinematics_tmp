o1 = pi/2 + pi/6;
o2 = pi/2 + pi/6;
l1 = 200;
l2 = 300;
l3 = 50;

tor_measured = [-0.6;-0.6]
force_e = [0;0]

%ik
s2 = pi-0.5*(o1+o2);
s1 = asin(l1/l2*sin(s2));
s3 = pi-s1-s2;

lt_2 = l1^2+(l2+l3)^2-2*l1*(l2+l3)*cos(s3);
lt = sqrt(lt_2);
r2 = asin((l2+l3)/lt*sin(s3));

x_end = cos((o1+r2)-pi/2)*lt;
y_end = -1*sin((o1+r2)-pi/2)*lt;

j1 = (l1*cos(o1 - pi/2 + asin((sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)))*sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2) - sin(o1 - pi/2 + asin((sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)))*(((cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2) - (l1*sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))^2*(l2 + l3)^2*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(3/2))/(1 - (sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))^2*(l2 + l3)^2)/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)))^(1/2) + 1)*((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)

j2 = (l1*cos(o1 - pi/2 + asin((sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)))*sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2) - (sin(o1 - pi/2 + asin((sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)))*((cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2) - (l1*sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))^2*(l2 + l3)^2*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(3/2))*((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2))/(1 - (sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))^2*(l2 + l3)^2)/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)))^(1/2)

j3 = - cos(o1 - pi/2 + asin((sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)))*(((cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2) - (l1*sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))^2*(l2 + l3)^2*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(3/2))/(1 - (sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))^2*(l2 + l3)^2)/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)))^(1/2) + 1)*((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2) - (l1*sin(o1 - pi/2 + asin((sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)))*sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)

j4 = - (cos(o1 - pi/2 + asin((sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)))*((cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2) - (l1*sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))^2*(l2 + l3)^2*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(3/2))*((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2))/(1 - (sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))^2*(l2 + l3)^2)/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)))^(1/2) - (l1*sin(o1 - pi/2 + asin((sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)))*sin(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3)*((l1*cos(o1/2 + o2/2 - pi))/(2*l2*(1 - (l1^2*sin(o1/2 + o2/2 - pi)^2)/l2^2)^(1/2)) + 1/2))/((l2 + l3)^2 + l1^2 - 2*l1*cos(o1/2 + o2/2 + asin((l1*sin(o1/2 + o2/2 - pi))/l2))*(l2 + l3))^(1/2)

j_mat = [j1 j2; j3 j4]
j_mat_t = j_mat'
j_mat_t_inv = inv(j_mat_t)

force_e = j_mat_t_inv * tor_measured

