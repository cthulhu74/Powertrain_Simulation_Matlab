%%%%%%%%%%%%%%%%%
%Powertrain Model
%%%%%%%%%%%%%%%%%

open_system('Powertrain_Model');

choose = input ('Drivecycle_1,DC6:');

if choose ==1 
load('Agni');
set_param ( 'Powertrain_Model' , 'StopTime' , '109');
end

if choose ==2 
load('DC6');
set_param ( 'Powertrain_Model' , 'StopTime' , '172');
end 

if choose ==3 
load('DCsaietta119R');
set_param ( 'Powertrain_Model' , 'StopTime' , '149');
end 

if choose ==4
load('DCgoldenmotor');
set_param ( 'Powertrain_Model' , 'StopTime' , '149');
end 

if choose ==5
load('DCnovo30');
set_param ( 'Powertrain_Model' , 'StopTime' , '149');
end 

if choose ==6
load('Drivecycle_at_BIC');
set_param ( 'Powertrain_Model' , 'StopTime' , '250');
end 

if choose ==7
load('NEDC');
set_param ( 'Powertrain_Model' , 'StopTime' , '1180');
end 

%%Vehicle Dynamics%%
Rw = 0.2286;   %meter  %Radius of the wheel
Crf = 0.015;          %coefficient of rolling resistance
GVM = 270;            %Gross Vehicle Mass
g = 9.81;             %Gravitational Constant
GVW = GVM*g;          %Gross vehicle Weight
cd=0.679;            %Drag Coefficient
Area = 1.401;  %m^2   %Frontal Area

%%Transmission%%
Gear_ratio = 4;       %Transmission Gear Ratio

%%Transmission Efficiency%%
Neff = 0.90;

