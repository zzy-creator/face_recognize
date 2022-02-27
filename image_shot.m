function image_shot(is_shot,directory,obj)
%UNTITLED Summary of this function goes here
% Detailed explanation goes here
persistent i
if isempty(i)
   i = 1; 
end
if is_shot
    filename='2001';
    frame = getsnapshot(obj);%抓图
    imwrite(frame,[directory,filename,'.jpg']);%存图'
    i=i+1;
else
    clear i;%清除局部变量
    delete(obj);%关闭摄像头
end

end
