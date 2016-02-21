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
    
    RxS = [noS.LElbow_ARAnglesX(ii) , noS.LShoulder_ARAnglesX(ii)];
    RyS = [noS.LElbow_ARAnglesY(ii) , noS.LShoulder_ARAnglesY(ii)];
    RzS = [noS.LElbow_ARAnglesZ(ii) , noS.LShoulder_ARAnglesZ(ii)];
    
    
    plot3(RxS, RyS, RzS,'r')
    
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


%%


for ii = 1:height(noS)
    
    
    %     plot3(noS.CLAVX(ii),noS.CLAVY(ii),noS.CLAVZ(ii),'Color','r',...
    %         'Marker','o','FaceColor','r','MarkerSize',9)
    cla
    scatter3(noS.RWrist_ARAngles_X(ii), noS.RWrist_ARAngles_Y(ii), noS.RWrist_ARAngles_Z(ii),50,'r','filled')
    hold on
    scatter3(noS.RElbow_ARAngles_X(ii), noS.RElbow_ARAngles_Y(ii), noS.RElbow_ARAngles_Z(ii),50,'r','filled')
    scatter3(noS.RShoulder_ARAngles_X(ii), noS.RShoulder_ARAngles_Y(ii), noS.RShoulder_ARAngles_Z(ii),50,'b','filled')
    
    RxS = [noS.RWrist_ARAngles_X(ii) , noS.RElbow_ARAngles_X(ii)];
    RyS = [noS.RWrist_ARAngles_Y(ii) , noS.RElbow_ARAngles_Y(ii)];
    RzS = [noS.RWrist_ARAngles_Z(ii) , noS.RElbow_ARAngles_Z(ii)];
    
    RxS2 = [noS.RElbow_ARAngles_X(ii) , noS.RShoulder_ARAngles_X(ii)];
    RyS2 = [noS.RElbow_ARAngles_Y(ii) , noS.RShoulder_ARAngles_Y(ii)];
    RzS2 = [noS.RElbow_ARAngles_Z(ii) , noS.RShoulder_ARAngles_Z(ii)];
    
    % Connector
    plot3(RxS, RyS, RzS,'r')
    plot3(RxS2, RyS2, RzS2,'b')
    
    if ii > 1
        
        scatter3(noS.RWrist_ARAngles_X(1:ii-1), noS.RWrist_ARAngles_Y(1:ii-1), noS.RWrist_ARAngles_Z(1:ii-1),40,'r')
        scatter3(noS.RElbow_ARAngles_X(1:ii-1), noS.RElbow_ARAngles_Y(1:ii-1), noS.RElbow_ARAngles_Z(1:ii-1),40,'r')
        
        scatter3(noS.RShoulder_ARAngles_X(1:ii-1), noS.RShoulder_ARAngles_Y(1:ii-1), noS.RShoulder_ARAngles_Z(1:ii-1),40,'b')
        
        
        
        % xS2 = [noS.LElbow_ARAnglesX(1:ii-1)' ; noS.LShoulder_ARAnglesX(1:ii-1)'];
        % yS2 = [noS.LElbow_ARAnglesY(1:ii-1) ; noS.LShoulder_ARAnglesY(1:ii-1)];
        % zS2 = [noS.LElbow_ARAnglesZ(1:ii-1) ; noS.LShoulder_ARAnglesZ(1:ii-1)];
        
        line([noS.RWrist_ARAngles_X(1:ii-1)  noS.RElbow_ARAngles_X(1:ii-1)]',...
            [noS.RWrist_ARAngles_Y(1:ii-1)  noS.RElbow_ARAngles_Y(1:ii-1)]',...
            [noS.RWrist_ARAngles_Z(1:ii-1)  noS.RElbow_ARAngles_Z(1:ii-1)]','Color','r');
        
        line([noS.RElbow_ARAngles_X(1:ii-1)  noS.RShoulder_ARAngles_X(1:ii-1)]',...
            [noS.RElbow_ARAngles_Y(1:ii-1)  noS.RShoulder_ARAngles_Y(1:ii-1)]',...
            [noS.RElbow_ARAngles_Z(1:ii-1)  noS.RShoulder_ARAngles_Z(1:ii-1)]','Color','b');
        
        % plot3(xS2, yS2, zS2,'k')
        
        
    end
    
    pause(0.2)
    
end

%%

noS = import_DBS_gait;

%%

xmin = min([noS.RWrist_ARAngles_X ; noS.RElbow_ARAngles_X ; noS.RShoulder_ARAngles_X ; ...
    noS.LWrist_ARAngles_X ; noS.LElbow_ARAngles_X ; noS.LShoulder_ARAngles_X]);
xmax = max([noS.RWrist_ARAngles_X ; noS.RElbow_ARAngles_X ; noS.RShoulder_ARAngles_X ; ...
    noS.LWrist_ARAngles_X ; noS.LElbow_ARAngles_X ; noS.LShoulder_ARAngles_X]);

ymin = min([noS.RWrist_ARAngles_Y ; noS.RElbow_ARAngles_Y ; noS.RShoulder_ARAngles_Y ; ...
    noS.LWrist_ARAngles_Y ; noS.LElbow_ARAngles_Y ; noS.LShoulder_ARAngles_Y]);
ymax = max([noS.RWrist_ARAngles_Y ; noS.RElbow_ARAngles_Y ; noS.RShoulder_ARAngles_Y ; ...
    noS.LWrist_ARAngles_Y ; noS.LElbow_ARAngles_Y ; noS.LShoulder_ARAngles_Y]);

zmin = min([noS.RWrist_ARAngles_Z ; noS.RElbow_ARAngles_Z ; noS.RShoulder_ARAngles_Z ; ...
    noS.LWrist_ARAngles_Z ; noS.LElbow_ARAngles_Z ; noS.LShoulder_ARAngles_Z]);
zmax = max([noS.RWrist_ARAngles_Z ; noS.RElbow_ARAngles_Z ; noS.RShoulder_ARAngles_Z ; ...
    noS.LWrist_ARAngles_Z ; noS.LElbow_ARAngles_Z ; noS.LShoulder_ARAngles_Z]);

useNorm = 0;

for ii = 1:height(noS)
    
    cla
    
    % RIGHT POINTS
    scatter3(noS.RWrist_ARAngles_X(ii), noS.RWrist_ARAngles_Y(ii), noS.RWrist_ARAngles_Z(ii),50,'r','filled')
    hold on
    scatter3(noS.RElbow_ARAngles_X(ii), noS.RElbow_ARAngles_Y(ii), noS.RElbow_ARAngles_Z(ii),50,'k','filled')
    scatter3(noS.RShoulder_ARAngles_X(ii), noS.RShoulder_ARAngles_Y(ii), noS.RShoulder_ARAngles_Z(ii),50,'b','filled')
    
    text(noS.RWrist_ARAngles_X(ii),...
        noS.RWrist_ARAngles_Y(ii),...
        noS.RWrist_ARAngles_Z(ii),...
        'RWrist',...
        'Color','r',...
        'VerticalAlignment','bottom',...
        'HorizontalAlignment','center',...
        'BackgroundColor',[0.8 0.8 0.8],...
        'FontWeight','bold')
    
    text(noS.RElbow_ARAngles_X(ii),...
        noS.RElbow_ARAngles_Y(ii),...
        noS.RElbow_ARAngles_Z(ii),...
        'RElbow',...
        'Color','k',...
        'VerticalAlignment','bottom',...
        'HorizontalAlignment','center',...
        'BackgroundColor',[0.8 0.8 0.8],...
        'FontWeight','bold')
    
    text(noS.RShoulder_ARAngles_X(ii),...
        noS.RShoulder_ARAngles_Y(ii),...
        noS.RShoulder_ARAngles_Z(ii),...
        'RShoulder',...
        'Color','b',...
        'VerticalAlignment','bottom',...
        'HorizontalAlignment','center',...
        'BackgroundColor',[0.8 0.8 0.8],...
        'FontWeight','bold')
    
    RxS = [noS.RWrist_ARAngles_X(ii) , noS.RElbow_ARAngles_X(ii)];
    RyS = [noS.RWrist_ARAngles_Y(ii) , noS.RElbow_ARAngles_Y(ii)];
    RzS = [noS.RWrist_ARAngles_Z(ii) , noS.RElbow_ARAngles_Z(ii)];
    
    RxS2 = [noS.RElbow_ARAngles_X(ii) , noS.RShoulder_ARAngles_X(ii)];
    RyS2 = [noS.RElbow_ARAngles_Y(ii) , noS.RShoulder_ARAngles_Y(ii)];
    RzS2 = [noS.RElbow_ARAngles_Z(ii) , noS.RShoulder_ARAngles_Z(ii)];
    
    % Connector
    plot3(RxS, RyS, RzS,'r')
    plot3(RxS2, RyS2, RzS2,'b')
    
    
    % LEFT POINTS
    scatter3(noS.LWrist_ARAngles_X(ii), noS.LWrist_ARAngles_Y(ii), noS.LWrist_ARAngles_Z(ii),50,'r','filled')
    scatter3(noS.LElbow_ARAngles_X(ii), noS.LElbow_ARAngles_Y(ii), noS.LElbow_ARAngles_Z(ii),50,'k','filled')
    scatter3(noS.LShoulder_ARAngles_X(ii), noS.LShoulder_ARAngles_Y(ii), noS.LShoulder_ARAngles_Z(ii),50,'b','filled')
    
    text(noS.LWrist_ARAngles_X(ii),...
        noS.LWrist_ARAngles_Y(ii),...
        noS.LWrist_ARAngles_Z(ii),...
        'LWrist',...
        'Color','r',...
        'VerticalAlignment','bottom',...
        'HorizontalAlignment','center',...
        'BackgroundColor',[0.8 0.8 0.8],...
        'FontWeight','bold')
    
    text(noS.LElbow_ARAngles_X(ii),...
        noS.LElbow_ARAngles_Y(ii),...
        noS.LElbow_ARAngles_Z(ii),...
        'LElbow',...
        'Color','k',...
        'VerticalAlignment','bottom',...
        'HorizontalAlignment','center',...
        'BackgroundColor',[0.8 0.8 0.8],...
        'FontWeight','bold')
    
    text(noS.LShoulder_ARAngles_X(ii),...
        noS.LShoulder_ARAngles_Y(ii),...
        noS.LShoulder_ARAngles_Z(ii),...
        'LShoulder',...
        'Color','b',...
        'VerticalAlignment','bottom',...
        'HorizontalAlignment','center',...
        'BackgroundColor',[0.8 0.8 0.8],...
        'FontWeight','bold')
    
    LxS = [noS.LWrist_ARAngles_X(ii) , noS.LElbow_ARAngles_X(ii)];
    LyS = [noS.LWrist_ARAngles_Y(ii) , noS.LElbow_ARAngles_Y(ii)];
    LzS = [noS.LWrist_ARAngles_Z(ii) , noS.LElbow_ARAngles_Z(ii)];
    
    LxS2 = [noS.LElbow_ARAngles_X(ii) , noS.LShoulder_ARAngles_X(ii)];
    LyS2 = [noS.LElbow_ARAngles_Y(ii) , noS.LShoulder_ARAngles_Y(ii)];
    LzS2 = [noS.LElbow_ARAngles_Z(ii) , noS.LShoulder_ARAngles_Z(ii)];
    
    % Connector
    plot3(LxS, LyS, LzS,'r')
    plot3(LxS2, LyS2, LzS2,'b')
    
    
    
    
    
    if useNorm
        
        xlim([xmin xmax]);
        ylim([ymin ymax]);
        zlim([zmin zmax]);
        
    end
    
    xlabel('X Axis')
    ylabel('Y Axis')
    zlabel('Z Axis')
    
    pause(0.05)
    
end



%%

if ii > 1
    
    scatter3(noS.RWrist_ARAngles_X(1:ii-1), noS.RWrist_ARAngles_Y(1:ii-1), noS.RWrist_ARAngles_Z(1:ii-1),40,'r')
    scatter3(noS.RElbow_ARAngles_X(1:ii-1), noS.RElbow_ARAngles_Y(1:ii-1), noS.RElbow_ARAngles_Z(1:ii-1),40,'r')
    
    scatter3(noS.RShoulder_ARAngles_X(1:ii-1), noS.RShoulder_ARAngles_Y(1:ii-1), noS.RShoulder_ARAngles_Z(1:ii-1),40,'b')
    
    
    
    % xS2 = [noS.LElbow_ARAnglesX(1:ii-1)' ; noS.LShoulder_ARAnglesX(1:ii-1)'];
    % yS2 = [noS.LElbow_ARAnglesY(1:ii-1) ; noS.LShoulder_ARAnglesY(1:ii-1)];
    % zS2 = [noS.LElbow_ARAnglesZ(1:ii-1) ; noS.LShoulder_ARAnglesZ(1:ii-1)];
    
    line([noS.RWrist_ARAngles_X(1:ii-1)  noS.RElbow_ARAngles_X(1:ii-1)]',...
        [noS.RWrist_ARAngles_Y(1:ii-1)  noS.RElbow_ARAngles_Y(1:ii-1)]',...
        [noS.RWrist_ARAngles_Z(1:ii-1)  noS.RElbow_ARAngles_Z(1:ii-1)]','Color','r');
    
    line([noS.RElbow_ARAngles_X(1:ii-1)  noS.RShoulder_ARAngles_X(1:ii-1)]',...
        [noS.RElbow_ARAngles_Y(1:ii-1)  noS.RShoulder_ARAngles_Y(1:ii-1)]',...
        [noS.RElbow_ARAngles_Z(1:ii-1)  noS.RShoulder_ARAngles_Z(1:ii-1)]','Color','b');
    
    % plot3(xS2, yS2, zS2,'k')
    
    
end