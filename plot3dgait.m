for ii = 1:height(noS)
    
    
%     plot3(noS.CLAVX(ii),noS.CLAVY(ii),noS.CLAVZ(ii),'Color','r',...
%         'Marker','o','FaceColor','r','MarkerSize',9)
cla
scatter3(noS.RElbow_ARAnglesX(ii),noS.RElbow_ARAnglesY(ii),noS.RElbow_ARAnglesZ(ii),50,'r','filled')
hold on
if ii > 1
    
    
    
    plot3(noS.RElbow_ARAnglesX(1:ii-1),noS.RElbow_ARAnglesY(1:ii-1),noS.RElbow_ARAnglesZ(1:ii-1),'ko')
end

pause(0.05)
    
end



%%


for ii = 1:height(noS)
    
    
%     plot3(noS.CLAVX(ii),noS.CLAVY(ii),noS.CLAVZ(ii),'Color','r',...
%         'Marker','o','FaceColor','r','MarkerSize',9)
cla
scatter3(noS.CLAVX(ii),noS.CLAVY(ii),noS.CLAVZ(ii),50,'r','filled')
hold on
if ii > 1
    
    
    
    plot3(noS.CLAVX(1:ii-1),noS.CLAVY(1:ii-1),noS.CLAVZ(1:ii-1),'ko')
end

pause(0.05)
    
end

%%

vel = diff(mydisplacement)./dt;

h = 0.001;       % step size
X = -pi:h:pi;    % domain
f = sin(X);      % range
Y = diff(f)/h;   % first derivative
Z = diff(Y)/h;   % second derivative
plot(X(:,1:length(Y)),Y,'r',X,f,'b', X(:,1:length(Z)),Z,'k')


vx(1, t+dt) = (x(1, t+dt)-x(1, t))/dt
vy(1, t+dt) = (y(1, t+dt)-y(1, t))/dt
vz(1, t+dt) = (z(1, t+dt)-z(1, t))/dt



for ii = 1:height(noS)
    
    
%     plot3(noS.CLAVX(ii),noS.CLAVY(ii),noS.CLAVZ(ii),'Color','r',...
%         'Marker','o','FaceColor','r','MarkerSize',9)
cla
scatter3(noS.LElbow_ARAnglesX(ii), noS.LElbow_ARAnglesY(ii), noS.LElbow_ARAnglesZ(ii),50,'r','filled')
hold on
scatter3(noS.LShoulder_ARAnglesX(ii), noS.LShoulder_ARAnglesY(ii), noS.LShoulder_ARAnglesZ(ii),50,'r','filled')

xS = [noS.LElbow_ARAnglesX(ii) , noS.LShoulder_ARAnglesX(ii)];
yS = [noS.LElbow_ARAnglesY(ii) , noS.LShoulder_ARAnglesY(ii)];
zS = [noS.LElbow_ARAnglesZ(ii) , noS.LShoulder_ARAnglesZ(ii)];


plot3(xS, yS, zS,'r')

if ii > 1
    
    scatter3(noS.LElbow_ARAnglesX(1:ii-1), noS.LElbow_ARAnglesY(1:ii-1), noS.LElbow_ARAnglesZ(1:ii-1),40,'k')
    scatter3(noS.LShoulder_ARAnglesX(1:ii-1), noS.LShoulder_ARAnglesY(1:ii-1), noS.LShoulder_ARAnglesZ(1:ii-1),40,'k')
    
    
% xS2 = [noS.LElbow_ARAnglesX(1:ii-1)' ; noS.LShoulder_ARAnglesX(1:ii-1)'];
% yS2 = [noS.LElbow_ARAnglesY(1:ii-1) ; noS.LShoulder_ARAnglesY(1:ii-1)];
% zS2 = [noS.LElbow_ARAnglesZ(1:ii-1) ; noS.LShoulder_ARAnglesZ(1:ii-1)];

line([noS.LElbow_ARAnglesX(1:ii-1)  noS.LShoulder_ARAnglesX(1:ii-1)]',...
[noS.LElbow_ARAnglesY(1:ii-1)  noS.LShoulder_ARAnglesY(1:ii-1)]',...
[noS.LElbow_ARAnglesZ(1:ii-1)  noS.LShoulder_ARAnglesZ(1:ii-1)]','Color','k');

% plot3(xS2, yS2, zS2,'k')
    
    
end

pause(0.5)
    
end