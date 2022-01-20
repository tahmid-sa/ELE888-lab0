%%lab 0 for ELE 888 - Intelligence Systems 
%%22/12/2020
%%Xinyu Hadrian Hu
%%500194233 

%%

clear; 
close all; 
clc; 

%%

%%vectors and matrices 

 V = [3 6 9 1.25 -2]; 
 V(3); 
 find(V<4); 
 
 M = [3 4 6; 2 5 7; 1 2 4]; 
 M'; 
 M(1:3,2);  
 B = M(1:2, :); 
 K = [1 2 3; 4 5 6]; 
 L = [2 3; 1 2; 6 5]; 
 P = K*L; 
 P^2; 
 N = M(:,1:2)'; 
 K+N; 
 K-N; 
 Z = zeros(2,4);
 F = 4*ones(1,3); 
 eye(3,3); 


%%

%%Data Analysis 


D1 = [2 -1 6 21 1 0 -11 3 2 8]; 
min(D1); 
max(D1); 
std(D1); 
D2 = [2 -1; 6 21; 1 0]; 
corrcoef(D2); 
cov(D2); 

%%

%%Save, load and clear 

whos; 
clear all; 
whos; 
D1 = [2 -1 6 21 1 0 -11 3 2 8]; 
D2 = [2 -1; 6 21; 1 0]; 
whos;
clear D2; 
whos; 
save Data D1; 
save Data_asc D1 -ascii; 
clear all; 
load Data; 
whos; 
clear all; 
load Data_asc; 
whos; 

%%

%%Relational and logical operators 

6<4; 
6>4; 
7 ~= 3+4; 
7 <= 5; 
9 ==3+3+3; 
(2==1+1) & (7==9-2); 
(11 >= 2) | (15 == 7+8); 
D = ~(7 == 3+4); 

%%

clear all; 

A = [3 0 7]; 
for i=1:3 
    if (A(i) == 0) 
    else 
        A(i) = A(i)+100;
    end
end 

%%

%%plots 

step = 1e-2; 
t=0:step:1; 
s = sin(2*pi*t); 
%figure('WindowState','fullscreen'); 
figure(1); 
plot(s,'k'); 
xlabel('time in seconds'); 
ylabel('amplitude in volts'); 
title ('sine wave'); 
axis([-10 110 -1.1 1.1]);
grid on; 

%%

%%A sample feature space 

A = [0.1 0.3 0.25 0.4 0.15 0.51 0.62 0.8 0.58 0.9]; 
B = [0.11 0.23 0.5 0.36 0.27 0.75 0.68 0.59 0.65 0.8]; 
figure(2); 
plot(A(1:5), B(1:5), 'b+'); 
hold on; 
plot(A(6:10), B(6:10), 'ro'); 
axis([0 1 0 1]); 
xlabel('Sample Feature 1'); 
ylabel('Sample Feature 2'); 
title ('Feature Space'); 
grid on; 


%%

%%an example 3D plot 

figure(3); 
[X,Y] = meshgrid (-3:0.125:3); 
Z = peaks(X,Y); 
meshc(X,Y,Z); 
axis([-3 3 -3 3 -10 5]); 
grid on; 


%%












