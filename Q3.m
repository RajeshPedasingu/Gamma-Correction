clc
clear all
close all

img1=imread('women.jpg');
img2=imread('grains.jpg');

figure;
imshow(img1)
title('given image')
Img_histogram(img1) ;
contrast(img1);

pause(5)

figure;
imshow(img2)
title('given image')
Img_histogram(img2) ;
contrast(img2);









function out=contrast(image)
img1=image;
img2=double(img1(:,:,1));
c1=min(min(img2));
c2=max(max(img2));

c4=((img2-c1)./(c2-c1)) ;
c5=c4*255;
c6=(c5/255); % double 0 to 1
c7=c6*255; % double 0 to 255
c8=uint8(c7); % convertion
figure;
imshow(c8)
title('Contrast Stretching image')
Img_histogram(c8) ;

out=c8;
end







%--histogram---
function out=Img_histogram(image)
img1=image;
img=img1(:);
j=0;
for i=1:256
    p(i)=sum(img==j);
    j=j+1;   
end

y=p;
x=0:255;
figure;
bar(x,y,1)
title('histogram  ')
xlabel('pixel intensity values')
ylabel('frequency of pixel intensities')
out=img1;
end

