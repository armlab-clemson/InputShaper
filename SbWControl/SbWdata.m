clc; clear;

%% Vehicle data
Ts= 0.001; Tsmall= 0.001;  m=1830; g=9.81; h= 0.5; epsilon= 0.4;sigma= epsilon;
l_f= 1.2110; l_r= 1.4590; l= l_f+l_r;
Ixx= 602.1923; Iyy= 2.7370e+03; Izz= 3070; Iz= Izz;
K_phi= 178000; K_theta= 363540; D_phi= 16000; D_theta= 30960;
w= 0.7700; Rw= 0.3430; Re=Rw; Iw= 4; l_p= Iz/(m*l_r);
Tf=0; Tr=0; %Driving/Braking torques
%% Initial conditions
Px0=0; Py0=0; psi0=0; Vx0= 22.222; omega_f0= Vx0/Rw; psi_dot0=0; Vy0=0;
omega_r0= Vx0/Rw; alpha_f0= 0; alpha_r0=0; omega0= Vx0/Rw; delta_r= 0;
C_alpha_f= 1830*0.50*0.165*57.29578; % in kg/rad, taking cornering stiffness per rad 
%of slip angle as 16-17 percent of tire load. 
C_alpha_r= C_alpha_f;
Velocity= sqrt((Vx0^2)+(Vy0^2));

%% Road condition
road=1; %Toggle between 1 to 4 for Dry ashphalt, wet ashphalt, snow and ice.
pacjeka_params; 
load('DLCTest_new2.mat');
%% Rajamani Controller
Ksbw=1;
%sim(RajamaniController);

