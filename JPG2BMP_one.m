temp = 'C:\Users\86187\Documents\MATLAB\face_recognize-master\image\';
    path1 = strcat(temp,num2str(2001),'.jpg');
    I = imread(path1);
    I = rgb2gray(I); %将图片转换成灰的
    I = imcrop(I); %裁剪图片
    imshow(I);
    I = imresize(I,[128,128]);%改变图像尺寸
    path2 = strcat('C:\Users\86187\Documents\MATLAB\face_recognize-master\test\',num2str(2001),'.bmp');%变换成bmp格式
    imwrite(I,path2);  %保存成bmp格式