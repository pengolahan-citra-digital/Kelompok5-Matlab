I  = imread('D:/pictures/CITRA/kapal.png');
I = rgb2gray(I);


px = [-1 0 1; -1 0 1; -1 0 1];
py = [-1 -1 -1; 0 0 0; 1 1 1];

prex = conv2(double(I),px,'same');
prey= conv2(double(I),py,'same');

J = sqrt((prex.^2)+(prey.^2));
J=uint8(J);


subplot(2,2,1), imshow(I);title('Citra Asli');
subplot(2,2,2), imshow(J);title('Citra Prewitt');