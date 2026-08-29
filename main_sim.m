% 1. Khoi tao moi truong va thu vien
close all; clear; clc;
addpath('/home/manhquan/opt/openEMS/share/hyp2mat/matlab'); % Nạp thư viện của hyp2mat
physical_constants;

% 2. Khoi tao khong gian CSXCAD va nap bo mach
CSX = InitCSX();
CSX = pcb(CSX); 

% 3. Cau hinh thong so FDTD (Tam thoi de 1GHz)
f0 = 1e9; 
fc = 1e9; 
FDTD = InitFDTD();
FDTD = SetGaussExcite(FDTD, f0, fc);

% 4. Xuat du lieu va mo trinh xem 3D
WriteOpenEMS('board_test.xml', FDTD, CSX);
CSXGeomPlot('board_test.xml');
