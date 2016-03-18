function [  ] = singleARM( ds , R1 , R2, R3 )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

r1X = [R1 , '_X'];
r1Y = [R1 , '_Y'];
r1Z = [R1 , '_Z'];
r2X = [R2 , '_X'];
r2Y = [R2 , '_Y'];
r2Z = [R2 , '_Z'];
r3X = [R3 , '_X'];
r3Y = [R3 , '_Y'];
r3Z = [R3 , '_Z'];

inds = round(linspace(1,height(ds),height(ds)/4));
inds = inds(1:end-1);

for ii = 1:numel(inds)
    
    num = inds(ii);
    
    %     plot3(ds.CLAVX(num),ds.CLAVY(num),ds.CLAVZ(num),'Color','r',...
    %         'Marker','o','FaceColor','r','MarkerSize',9)
%     cla
    scatter3(ds.(r1X)(num), ds.(r1Y)(num), ds.(r1Z)(num),30,'r','filled')
    hold on
    scatter3(ds.(r2X)(num), ds.(r2Y)(num), ds.(r2Z)(num),30,'r','filled')
    scatter3(ds.(r3X)(num), ds.(r3Y)(num), ds.(r3Z)(num),30,'b','filled')
    
    RxS = [ds.(r1X)(num) , ds.(r2X)(num)];
    RyS = [ds.(r1Y)(num) , ds.(r2Y)(num)];
    RzS = [ds.(r1Z)(num) , ds.(r2Z)(num)];
    
    RxS2 = [ds.(r2X)(num) , ds.(r3X)(num)];
    RyS2 = [ds.(r2Y)(num) , ds.(r3Y)(num)];
    RzS2 = [ds.(r2Z)(num) , ds.(r3Z)(num)];
    
    % Connector
    plot3(RxS, RyS, RzS,'r')
    plot3(RxS2, RyS2, RzS2,'b')
    
%     if num > 1
%         
%         scatter3(ds.(r1X)(1:num-1), ds.(r1Y)(1:num-1), ds.(r1Z)(1:num-1),30,'r')
%         scatter3(ds.(r2X)(1:num-1), ds.(r2Y)(1:num-1), ds.(r2Z)(1:num-1),30,'r')
%         
%         scatter3(ds.(r3X)(1:num-1), ds.(r3Y)(1:num-1), ds.(r3Z)(1:num-1),30,'b')
%         
%         
%         
%         % xS2 = [ds.LElbow_ARAnglesX(1:num-1)' ; ds.LShoulder_ARAnglesX(1:num-1)'];
%         % yS2 = [ds.LElbow_ARAnglesY(1:num-1) ; ds.LShoulder_ARAnglesY(1:num-1)];
%         % zS2 = [ds.LElbow_ARAnglesZ(1:num-1) ; ds.LShoulder_ARAnglesZ(1:num-1)];
%         
%         line([ds.(r1X)(1:num-1)  ds.(r2X)(1:num-1)]',...
%             [ds.(r1Y)(1:num-1)  ds.(r2Y)(1:num-1)]',...
%             [ds.(r1Z)(1:num-1)  ds.(r2Z)(1:num-1)]','Color','r');
%         
%         line([ds.(r2X)(1:num-1)  ds.(r3X)(1:num-1)]',...
%             [ds.(r2Y)(1:num-1)  ds.(r3Y)(1:num-1)]',...
%             [ds.(r2Z)(1:num-1)  ds.(r3Z)(1:num-1)]','Color','b');
%         
%         % plot3(xS2, yS2, zS2,'k')
%         
%         
%     end
    
    hold on
    pause(0.001)
    
end

end

