clc
clear all

%for the left dyad
p21= 249.771; %assuming that the point P is at the right end of the coupler
p31= 595.576; %assuming that the point P is at the center of the coupler
a2 = 146.67*pi/180; %angle b/w 1 and 2 positions in anticlockwise sense
a3 = 89.09*pi/180; %angle b/w 1 and 3 positions in anticlockwise sense
d2 = 230.81*pi/180;  %Angle between horizontal and p21 vector (anticlockwise)
d3 = 200.92*pi/180; %Angle between horizontal and p31 vector (anticlockwise)
%coupler length = 249.569
b2 = 20*pi/180; %assumed angle
b3 = 30*pi/180; %assumed angle

A=(cos(b2))-1;
B=sin(b2);
C=cos(a2)-1;
D=sin(a2);
E=p21*cos(d2);
F=cos(b3)-1;
G=sin(b3);
H=cos(a3)-1;
K=sin(a3);
L=p31*cos(d3);
M=p21*sin(d2);
N=p31*sin(d3);



Right=[A B C D; F G H K; B A D C; G F K H];
Ans1=inv(Right)*[E;L;M;N]

t=atan(Ans1(2,1)/Ans1(1,1))
p= atan(Ans1(4,1)/Ans1(3,1))
w=Ans1(2,1)/sin(t)
z=Ans1(4,1)/sin(p)
theta = t*180/pi
phi= p*180/pi

