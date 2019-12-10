cd=0.47;
pa=1.2;
P=101300;
Ta=273.15;
T=373.15;
R=287;
D=17.3;
A=pi/4 * D^2;
V=(4*pi/3)*(D/2)^3;
p=pa*Ta/T;
m=265+(p*V);
for i=[1:1:5]
%at t=0, u=0
prompt='input the time';
t=input(prompt);
l=(pa-p)*9.8*V;
b=(p*9.8*V)+(265*9.8);
k=(0.5*pa*A*cd*(t)^2);
a1=((-m)+(m^2+(4*k*(b-l)))^0.5)/(2*k);
a2=((-m)-(m^2+(4*k*(b-l)))^0.5)/(2*k);
%as the ballon is climbing upward,so we take
a=a1;
v=a*t;
z=0.5*a*t^2;
v1(i)=v;
z1(i)=z;
t1(i)=t;
end
fprintf('time velocity height ');
for i=1:1:5
fprintf('%f %f %f ',[t1(i),v1(i),z1(i)]);
end