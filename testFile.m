
I = imread('eight.tif');
for ii = 1:3
    
    
    [x{ii}, y{ii}, BW{ii}, xi{ii}, yi{ii}] = roipoly(I)
    
    if ii == ii
        continue
    else
        hold on
        plot(xi{ii-1},yi{ii-1},'r-')
    end
    clf
end


%%
I = imread('eight.tif');
imshow(I)

%%
ang = ang + 1;

%

B = imrotate(I,ang,'nearest','crop')
imshow(B)


%%

plot(xi{1},yi{1},'r-')
hold on
plot(xi{2},yi{2},'g-')
plot(xi{3},yi{3},'b-')