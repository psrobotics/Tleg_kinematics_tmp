syms o1 o2 l1 l2 l3 s1 s2 s3 pi lt_2 lt r2 x_end y_end
syms n1 n2
syms nn1 nn2
    
s2 = pi-0.5*(o1+o2);
s1 = asin(l1/l2*sin(s2));
s3 = pi-s1-s2;

lt_2 = l1^2+(l2+l3)^2-2*l1*(l2+l3)*cos(s3);
lt = sqrt(lt_2);
r2 = asin((l2+l3)/lt*sin(s3));

x_end = cos((o1+r2)-pi/2)*lt;
y_end = -1*sin((o1+r2)-pi/2)*lt;

[x_e_n,n1] = subexpr(x_end,n1);
[y_e_n,n2] = subexpr(y_end,n2);

[x_e_nn,nn1] = subexpr(x_e_n,nn1);
[y_e_nn,nn2] = subexpr(y_e_n,nn2);

latex(x_e_nn)
latex(nn1)
latex(n1)

fprintf('*************************************\n');

latex(y_e_nn)
latex(nn2)
latex(n2)

% j1 = diff(x_end, o1);
% j2 = diff(x_end, o2);
% j3 = diff(y_end, o1);
% j4 = diff(y_end, o2);
% 
% j1_e = simplify(j1);
% j2_e = simplify(j2);
% j3_e = simplify(j3);
% j4_e = simplify(j4);
% j1_e = subexpr(j1_e);
% j2_e = subexpr(j2_e);
% j3_e = subexpr(j3_e);
% j4_e = subexpr(j4_e);
