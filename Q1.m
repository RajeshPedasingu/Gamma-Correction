clc;
clear all;
close all;

img1=imread('skull.jpg');
img2=imread('xray.png');


x1=gama_correction(img1, [0.3 0.5 0.8 1.3 1.7 2 2.3 2.5]);
x2=gama_correction(img2, [0.4 0.5 0.8 1.3 1.7 2 2.3 2.5]);






function out=gama_correction(img, gamma)
img1=img;

figure;
imshow(img1)
title('given image')

c=1;
img1=double(img1)/255;
figure;
for i=1:length(gamma)
x1=c*img1.^gamma(i);

subplot(2,4,i)
imshow(x1)
text= "gamma= "+ num2str(gamma(i));
title(text)
end
if gamma(1)==0.3
x2=c*img1.^gamma(2);
figure;
imshow(x2)
text= "after gamma correction (gamma= "+ num2str(gamma(2) + ")");
title(text)
else
    x2=c*img1.^gamma(4);
figure;
imshow(x2)
text= "after gamma correction (gamma= "+ num2str(gamma(4) + ")");
title(text)
end

out= x1;

end