%%%%%%%%% test 1 magnetdefine and magnet draw #########
%Diego Martinez Valencia M.Sc Student
%Based on our magnets
clear
clc
magnet_1 = magnetdefine('type','cuboid','dim',[1e-3 3e-4 1e-3],... 
'magn',0.38,'magdir','z');
%The first magnet es defined with following dimensions 
%2a = lenght = 1mm = 0.02 #Meters
%2b = width = 1mm = 0.012 #Meter
%2c = hight = 0.3 mm = 0.006 #Meter

magnet_2 = magnetdefine('type','cuboid','dim',[1e-3 3e-4 1e-3],... 
'position',[6e-4; 0; 0],'magn',0.38,'magdir','y');
%The second magnet es defined with following dimensions 
%2A = lenght = 1mm = 0.02 #Meters
%2B = width = 1mm = 0.012 #Meter
%2C = hight = 0.3 mm = 0.006 #Meter
%the distance between both magnets its x,-4, y,-4, z, 8

%Now we use the magnetcforces function to compute the force.
%displ is the displacement between them 
points = 1000;
range = linspace(-0.002,0.002,points);
displ = [0;0;1]*range;
torque = magnetforces(magnet_1,magnet_2,displ,'torque');

figure(1); clf; hold on
title("Torque Between two magnets [Nm]")
h1 = plot(range*1000,torque(1,:));
%h2 = plot(range,torque(2,:));
%h3 = plot(range,torque(3,:));

