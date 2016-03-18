dt = 0.01; % samp freq
x = 0:dt:(2*pi); % time
mydisplacement = sin(x); % y 
vel = diff(mydisplacement)./dt;
acc = diff(vel)./dt;
h = plot(x,mydisplacement,x(1:end-1),vel,x(1:end-2),acc);
legend('displacement','velocity','acceleration')


