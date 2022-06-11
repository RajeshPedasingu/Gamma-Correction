clc
clear all
close all

img1=imread('coins.jpg');
figure;
imshow(img1)
title('given image')




threshold(img1,100);




%thresholding

function out=threshold(image,threshold)
th=threshold;
img1=image;
Img_histogram(img1) ; %histogram

img1(img1<th)=0;
img1(img1>=th)=255;
img1=medfilt2(img1(:,:,1),[5 5]);
figure;
imshow(img1)
title('after thresholding')
out=img1;
end
%thresholding




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
title('histogram using bar command')
xlabel('pixel intensity values')
ylabel('frequency of pixel intensities')
out=img1;
end










