T = 'C:\Users\86187\Documents\MATLAB\face_recognize-master\crop3\';
for i = 0:10
    for j=0:9
        temp= strcat(T,num2str(i),'\');
        path1 = strcat(temp,num2str(j),'.jpg');
        I = imread(path1);
        I = rgb2gray(I); %将图片转换成灰的
        I = imresize(I,[128,128]);%改变图像尺寸
        path2 = strcat('C:\Users\86187\Documents\MATLAB\face_recognize-master\after_change2\',num2str(i*10+j),'.bmp');%变换成bmp格式
        imwrite(I,path2);  %保存成bmp格式
    end
end