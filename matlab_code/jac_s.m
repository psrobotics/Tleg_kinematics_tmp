syms o1 o2 l1 l2 l3 s1 s2 s3 pi lt_2 lt r2 x_end y_end
   
%fk

s2 = pi-0.5*(o1+o2);
s1 = asin(l1/l2*sin(s2));
s3 = pi-s1-s2;

lt_2 = l1^2+(l2+l3)^2-2*l1*(l2+l3)*cos(s3);
lt = sqrt(lt_2);
r2 = asin((l2+l3)/lt*sin(s3));

x_end = cos((o1+r2)-pi/2)*lt
y_end = -1*sin((o1+r2)-pi/2)*lt

x_e_n = subexpr(x_end)
y_e_n = subexpr(y_end)

%J matrix item
j1 = diff(x_end, o1)
j2 = diff(x_end, o2)
j3 = diff(y_end, o1)
j4 = diff(y_end, o2)

% syms jq1 jq2 jq3 jq4
% syms jw1 jw2 jw3 jw4
% syms je1 je2 je3 je4
% 
% [j1_n jq1] = subexpr(j1,jq1)
% [j2_n jq2] = subexpr(j2,jq2)
% [j3_n jq3] = subexpr(j3,jq3)
% [j4_n jq4] = subexpr(j4,jq4)
% 
% [jj1_n jw1] = subexpr(j1_n,jw1)
% [jj2_n jw2] = subexpr(j2_n,jw2)
% [jj3_n jw3] = subexpr(j3_n,jw3)
% [jj4_n jw4] = subexpr(j4_n,jw4)
% 
% [jf1_n je1] = subexpr(jj1_n,je1)
% [jf2_n je2] = subexpr(jj2_n,je2)
% [jf3_n je3] = subexpr(jj3_n,je3)
% [jf4_n je4] = subexpr(jj4_n,je4)
% 
% 
% fprintf('*****************************************************************************\n');
% latex(jf1_n)
% latex(je1)
% latex(jw1)
% latex(jq1)
% fprintf('*****************************************************************************\n');
% latex(jf2_n)
% latex(je2)
% latex(jw2)
% latex(jq2)
% fprintf('*****************************************************************************\n');
% latex(jf3_n)
% latex(je3)
% latex(jw3)
% latex(jq3)
% fprintf('*****************************************************************************\n');
% latex(jf4_n)
% latex(je4)
% latex(jw4)
% latex(jq4)
