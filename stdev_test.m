%%test std deviation function 

%%

clear;
clc; 
close all; 

%%

A = [7 4 2 5]; 
[Amean, Astdev] = statex(A); 

%%

%%calculate the mean and std deviation of the given vector 

disp(Amean);
disp(Astdev); 

%%
