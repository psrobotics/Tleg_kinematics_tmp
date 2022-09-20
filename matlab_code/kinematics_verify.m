o1 = pi/2 + pi/6;
o2 = pi/2 + pi/6;
l1 = 200;
l2 = 300;
l3 = 50;

x_end = 0;
y_end = 0;

for i = 0:800
    
    %fk session
    o1 = rand*pi;
    o2 = rand*pi;
    
    s2 = pi-0.5*(o1+o2);
    s1 = asin(l1/l2*sin(s2));
    s3 = pi-s1-s2;
    
    lt_2 = l1^2+(l2+l3)^2-2*l1*(l2+l3)*cos(s3);
    lt = sqrt(lt_2);
    r2 = asin((l2+l3)/lt*sin(s3));
    
    x_end = cos((o1+r2)-pi/2)*lt;
    y_end = -1*sin((o1+r2)-pi/2)*lt;
    
    if isreal(x_end) && isreal(y_end)
        %ik session
        
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
        %s2 = asin( l2/ll * s_s3)
        
        o1_ik = tr - r2;
        o2_ik = 2*pi - o1 - 2*s2;
        
        diff = abs(o1-o1_ik) + abs(o2-o2_ik)
        
    end
    
    %scatter(x_end,y_end,10,'filled')
    %hold on
    
end