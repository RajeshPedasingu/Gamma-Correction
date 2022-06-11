
clc
clear all
close all

img1=imread('numbers.jpg');
figure;
imshow(img1)
title('given image')



Img_histogram(img1) ;
img2=threshold(img1,[4 7 25]); % Q2_b first part.


img3=255-img2; % Q2b 2nd part
figure;
imshow(img3)
title('numbers in black colour')

img4=threshold(img1,[140 145 150]);% Q_2b 3rd part.







%thresholding

function out=threshold(image,threshold)
th=threshold;
img2=image;

img2(img2<th(1))=0;
img2(img2>=th(1) & img2<=th(2))=255;
img2(img2>=th(3))=255;
img2=img2(:,:,1);
img2=medfilt2(img2,[5 4]); % used median filter to reduce the neighbouring noise.
figure;
imshow(img2)
if th(3)>100
    title('displying few numbers using thresholding')
else
    title('after thresholding')
end
out=img2;
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








