%%%%%%%%% test 1 magnetdefine and magnet draw #########
%Diego Martinez Valencia M.Sc Student
%Based on our magnets
clear
clc
magnet_1 = magnetdefine('type','cuboid','dim',[1e-3 1e-3 3e-4],... 
'magn',0.38,'magdir','x');
%The first magnet es defined with following dimensions 
%2a = lenght = 1mm = 0.02 #Meters
%2b = width = 1mm = 0.012 #Meter
%2c = hight = 0.3 mm = 0.006 #Meter
niquel_2 = magnetdefine('type','cuboid','dim',[3e-4 1e-3 2e-3],... 
'position',[1e-3; 0; 11e-4],'magn',0.20,'magdir','z');
%The second magnet es defined with following dimensions 
%2A = lenght = 1mm = 0.02 #Meters
%2B = width = 1mm = 0.012 #Meter
%2C = hight = 0.3 mm = 0.006 #Meter
%the distance between both magnets its x,-4, y,-4, z, 8 
niquel_3 = magnetdefine('type','cuboid','dim',[3e-4 1e-3 2e-3],... 
'position',[1.5e-3; 0; 11e-4],'magn',0.20,'magdir','z');
%The second magnet es defined with following dimensions 
%2A = lenght = 1mm = 0.02 #Meters
%2B = width = 1mm = 0.012 #Meter
%2C = hight = 0.3 mm = 0.006 #Meter
%the distance between both magnets its x,-4, y,-4, z, 8 
niquel_4 = magnetdefine('type','cuboid','dim',[3e-4 1e-3 2e-3],... 
'position',[2e-3; 0; 11e-4],'magn',0.20,'magdir','z');
%The second magnet es defined with following dimensions 
%2A = lenght = 1mm = 0.02 #Meters
%2B = width = 1mm = 0.012 #Meter
%2C = hight = 0.3 mm = 0.006 #Meter
%the distance between both magnets its x,-4, y,-4, z, 8 
niquel_5 = magnetdefine('type','cuboid','dim',[3e-4 1e-3 2e-3],... 
'position',[2.5e-3; 0; 11e-4],'magn',0.20,'magdir','z');
%The second magnet es defined with following dimensions 
%2A = lenght = 1mm = 0.02 #Meters
%2B = width = 1mm = 0.012 #Meter
%2C = hight = 0.3 mm = 0.006 #Meter
%the distance between both magnets its x,-4, y,-4, z, 8 

magnet_1 = magnetdefine('type','cuboid','dim',[1e-3 1e-3 3e-4],... 
'magn',0.38,'magdir','x');
%The first magnet es defined with following dimensions 
%2a = lenght = 1mm = 0.02 #Meters
%2b = width = 1mm = 0.012 #Meter
%2c = hight = 0.3 mm = 0.006 #Meter
magnet_2 = magnetdefine('type','cuboid','dim',[3e-4 1e-3 1e-3],... 
'position',[1e-3; 0; 6e-4],'magn',0.38,'magdir','z');
%The second magnet es defined with following dimensions 
%2A = lenght = 1mm = 0.02 #Meters
%2B = width = 1mm = 0.012 #Meter
%2C = hight = 0.3 mm = 0.006 #Meter
%the distance between both magnets its x,-4, y,-4, z, 8 
magnet_3 = magnetdefine('type','cuboid','dim',[3e-4 1e-3 1e-3],... 
'position',[1.5e-3; 0; 6e-4],'magn',0.38,'magdir','z');
%The second magnet es defined with following dimensions 
%2A = lenght = 1mm = 0.02 #Meters
%2B = width = 1mm = 0.012 #Meter
%2C = hight = 0.3 mm = 0.006 #Meter
%the distance between both magnets its x,-4, y,-4, z, 8 
magnet_4 = magnetdefine('type','cuboid','dim',[3e-4 1e-3 1e-3],... 
'position',[2e-3; 0; 6e-4],'magn',0.38,'magdir','z');
%The second magnet es defined with following dimensions 
%2A = lenght = 1mm = 0.02 #Meters
%2B = width = 1mm = 0.012 #Meter
%2C = hight = 0.3 mm = 0.006 #Meter
%the distance between both magnets its x,-4, y,-4, z, 8 
magnet_5 = magnetdefine('type','cuboid','dim',[3e-4 1e-3 1e-3],... 
'position',[2.5e-3; 0; 6e-4],'magn',0.38,'magdir','z');
%The second magnet es defined with following dimensions 
%2A = lenght = 1mm = 0.02 #Meters
%2B = width = 1mm = 0.012 #Meter
%2C = hight = 0.3 mm = 0.006 #Meter
%the distance between both magnets its x,-4, y,-4, z, 8 


points = 100;
range = linspace(7e-5,3e-3,points);
displ = [1;0;0]*range;
force = -magnetforces(magnet_1,niquel_2,displ);
force2 = -magnetforces(magnet_1,niquel_3,displ);
force3 = -magnetforces(magnet_1,niquel_4,displ);
force4 = -magnetforces(magnet_1,niquel_5,displ);
force5 = -magnetforces(magnet_1,magnet_2,displ);
force6 = -magnetforces(magnet_1,magnet_3,displ);
force7 = -magnetforces(magnet_1,magnet_4,displ);
force8 = -magnetforces(magnet_1,magnet_5,displ);


figure(1), hold on
grid on
ax = gca;
ax.FontSize = 9;
%plot(range,force(1,:),'-d','Tag','x')
plot(range,force2(1,:),'-.','Tag','x')
%plot(range,force3(1,:),'-.','Tag','x')
%plot(range,force4(1,:),'-.','Tag','x')
%plot(range,force5(1,:),'-s','Tag','x')
plot(range,force6(1,:),'--','Tag','x')
%plot(range,force7(1,:),'--','Tag','x')
%plot(range,force8(1,:),'--','Tag','x')



title('Repulsion force magnet-niquel @ 90° at 1mm' )
xlabel('x-axis displacement, m')
ylabel('Force, N')
%legend({'0.5 mm niquel','1 mm niquel','1.5 mm niquel','2 mm niquel',...
%   '0.5 mm magnet','1 mm magnet','1.5 mm magnet','2 mm magnet'},'Location','best')
legend({'1 mm niquel','1 mm magnet'},'Location','best')
set(gca,'box','on')
set(gcf,'Color','w','Name','Grafica','NumberTitle','off'); 

