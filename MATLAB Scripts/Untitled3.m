figure(1); clf; hold on
view(3);
axis equal
camlight
title('MicroRobot')
xlabel('x');
ylabel('y');
zlabel('z');
box on
magnet_1 = magnetdefine('type','cuboid','dim',[1e-3 1e-3 3e-4],...
'position',[0; 0; 0],'magn',0.38,'magdir','x');
%The first magnet es defined with following dimensions 
%2a = lenght = 1mm  #Meters
%2b = width = 1mm #Meter
%2c = hight = 0.3 mm #Meter
magnet_2 = magnetdefine('type','cuboid','dim',[1e-3 1e-3 3e-4],... 
'position',[1e-3; 0; 0] ,'magn',0.38,'magdir','x');
%The second magnet es defined with following dimensions 
%2A = lenght = 1mm = 0.02 #Meters
%2B = width = 1mm = 0.012 #Meter
%2C = hight = 0.3 mm = 0.006 #Meter
%the distance between both magnets its x,-4, y,-4, z, 8

magnetdraw(magnet_1);
magnetdraw(magnet_2);
