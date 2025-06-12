clear;close all; clc;
addpath(genpath('.'));
run(fullfile(fileparts(mfilename('fullpath')), './matlab/vl_setupnn.m')) ;

% if the input is very hazy, use large gamma to amend T. (0.8-1.5)

hazy_path = './testimgs/';
img = '1.png'; 
gamma = 1; % 
imagename = [hazy_path img];
dazedImageRGB = mscnndehazing(imagename, gamma);
