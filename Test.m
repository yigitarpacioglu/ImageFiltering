clear all;
close all;
clc;

XHPF = [-1 0 1;
        -1 0 1;
        -1 0 1];
    
YHPF = [-1 -1 -1;
         0  0  0;
         1  1  1];
     
Laplacian = [0  1  0;
             1 -4  1;
             0  1  0];
         
Gaussian = [ 0.233 0.106 0.233;
             0.106 0.421 0.106;
             0.233 0.106 0.233];
         
uniform  = [ 1/9 1/9 1/9;
             1/9 1/9 1/9;
             1/9 1/9 1/9]; 

img = rgb2gray(imread('monalisa.jpg'));
outimg = filterImage(img, uniform); % Desired filter can be applied with function

    figure 
subplot(1,2,1); imshow(uint8(img));title('Original Image');
subplot(1,2,2); imshow(uint8(outimg));title('Filtered Image');