function visualize(V)  
%显示特征脸（变换空间中的基向量，即单位特征向量）  
figure  
img=zeros(128,128);  
for i=1:32 
    img(:)=V(:,i);  
    subplot(4,5,i);  
    imshow(img,[])  
end  
