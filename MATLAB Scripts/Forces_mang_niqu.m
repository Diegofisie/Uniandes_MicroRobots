%%%%%%%%% test 1 magnetdefine and magnet draw #########
%Diego Martinez Valencia M.Sc Student
%Based on our magnets
clear
clc
magnet_1 = magnetdefine('type','cuboid','dim',[1e-3 1e-3 3e-4],...
'position',[2e-3; 0; 0],'magn',0.38,'magdir','x');
%The first magnet es defined with following dimensions 
%2a = lenght = 1mm  #Meters
%2b = width = 1mm #Meter
%2c = hight = 0.3 mm #Meter
magnet_2 = magnetdefine('type','cuboid','dim',[2e-3 1e-3 3e-4],... 
'magn',0.06,'magdir','x');
%The second magnet es defined with following dimensions 
%2A = lenght = 1mm = 0.02 #Meters
%2B = width = 1mm = 0.012 #Meter
%2C = hight = 0.3 mm = 0.006 #Meter
%the distance between both magnets its x,-4, y,-4, z, 8

%Now we use the magnetcforces function to compute the force.
%displ is the displacement between them 
points = 1000;
range = linspace(-0.005,0.005,points);
displ = [0;0;1]*range;
force = magnetforces(magnet_1,magnet_2,displ);

figure(1), hold on
plot(range,force(1,:),'Tag','x')
%plot(range,force(2,:),'Tag','y')
%plot(range,force(3,:),'Tag','z')
title('Force as a function of the X-axis displacement ')
xlabel('x-axis displacement, m')
ylabel('Forces, N')
yline(0,'--');
set(gca,'box','on')
set(gcf,'Color','w','Name','Grafica','NumberTitle','off'); 

