figure(1); clf; hold on
view(3);
axis equal
camlight
title('MicroRobot')
xlabel('x');
ylabel('y');
zlabel('z');
box on
hold on
mag_cuboid = magnetdefine(...
  'type','cuboid',...
  'dim',[0.2 0.2 0.05],...
  'position',[0;0;0],...
  'magn',1,'magdir','x');
mag_cuboid2 = magnetdefine(...
  'type','cuboid',...
  'dim',[0.2 0.2 0.05],...
  'position',[0.3;0;0],...
  'magn',1,'magdir','x');

mag_cuboid3 = magnetdefine(...
  'type','cuboid',...
  'dim',[0.4 0.2 0.05],...
  'position',[0.7;0;0],...
  'magn',1,'magdir','x');

mag_cuboid4 = magnetdefine(...
  'type','cuboid',...
  'dim',[0.4 0.2 0.05],...
  'position',[-0.4;0;0],...
  'magn',1,'magdir','x');
magnetdraw(mag_cuboid);
magnetdraw(mag_cuboid2);
magnetdraw(mag_cuboid3);
magnetdraw(mag_cuboid4);







