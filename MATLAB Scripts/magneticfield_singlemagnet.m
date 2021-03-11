figure(1); clf; hold on
view(3);
axis equal
camlight
title('Single Magnet Magnetic field []')
xlabel('x');
ylabel('y');
zlabel('z');
box on
hold on
grid on
colorbar
mag_cuboid = magnetdefine('type','cuboid','dim',[1e-3 1e-3 3e-4],... 
'magn',0.38,'magdir','z');
magnetdraw(mag_cuboid);

phi = linspace(0,pi);
r = 0.08e-2;
y = linspace(-0.1e-2,0.1e-2);
[pp,yy] = meshgrid(phi,y);

xx = r*cos(pp);
zz = r*sin(pp);
magB = magnetfield(mag_cuboid,[xx(:),yy(:),zz(:)].');
Bmag = sqrt(magB(1,:).^2+magB(2,:).^2+magB(3,:).^2);
h = surf(xx,yy,zz,reshape(Bmag,size(pp)));
h.EdgeColor = 'none';
h.FaceAlpha = 0.8;

N = 50;
[ptx,pty] = meshgrid(linspace(-0.1e-2,0.1e-2,N),linspace(-0.1e-2,0.1e-2,N));
ptz = repmat(-0.03e-2,size(ptx));

magB = magnetfield(mag_cuboid,[ptx(:),pty(:),ptz(:)].');
Bmag = sqrt(magB(1,:).^2+magB(2,:).^2+magB(3,:).^2);

h = surf(ptx,pty,ptz,reshape(Bmag,size(ptx)));
h.EdgeColor = 'none';
h.FaceAlpha = 0.8;








