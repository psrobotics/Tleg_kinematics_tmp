o1 = pi/2 + pi/6;
o2 = pi/2 + pi/6;
l1 = 200;
l2 = 300;
l3 = 50;

for i = 0:2000

    o1 = rand*pi*2;
    o2 = rand*pi*2;
    
s2 = pi-0.5*(o1+o2);
s1 = asin(l1/l2*sin(s2));
s3 = pi-s1-s2;

lt_2 = l1^2+(l2+l3)^2-2*l1*(l2+l3)*cos(s3);
lt = sqrt(lt_2);
r2 = asin((l2+l3)/lt*sin(s3));

x_end = cos((o1+r2)-pi/2)*lt;
y_end = -1*sin((o1+r2)-pi/2)*lt;

scatter(x_end,y_end,7,'filled')
hold on

end

xlabel ("X position /mm")
ylabel ("Y position /mm")
tt = title ({'Foot workspace when';'$o_1=0\sim 2\pi\ rad,\  o_2=0\sim 2\pi\ rad$'})
set(tt, 'Interpreter', 'latex');
grid on