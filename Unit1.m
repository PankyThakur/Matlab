Unit 1:
1.
x=imread('lena.jpg');
figure, imshow(x)
impixelinfo
2.
x=imread('lena.jpg');
x=rgb2gray(x)
figure, imshow(x)

3.
x=imread('lena.jpg');
x=rgb2gray(x)
for i= 100:745
    for j= 467:768
        x(i,j) = 255;
    end
end    
        
figure , imshow(x)  

4.
A=imread('shapes.jpg');
B=imread('strawberry.jpg');
[rowsA colsA RGBA]=size(A);
[rowsB colsB RGBB]=size(B);
C=imresize(B,[rowsA colsA]); % i used C so I could compare the resized image to the original.
c=imabsdiff(A,B);
figure (1), imshow(A)
figure (2), imshow(B)
figure (3), imshow(c)


5.
I = imread('shapes.jpg'); 
I = rgb2gray(I);
h = imhist(I); % this will have default bins 256
% now second image 
J = imread('shapes.jpg'); 
J = rgb2gray(J);
h1 = imhist(J); % this will have default bins 256 
E_distance = sqrt(sum((h-h1).^2));
