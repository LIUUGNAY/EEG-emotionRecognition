%将矩阵二值化

pathname1='E:\脑电数据集\前十PLV矩阵\';
pathname3='E:\脑电数据集\前十秒二值化矩阵\';
%32个被试者
for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
    end
    pathname2=[pathname1,filename1];    
    pathname4=[pathname3,filename1];    
    mkdir(pathname3,filename1);     %首次执行时需要创建新的文件夹
    %每人40次试验
    for j=1:40
       if k<10
           filename2=sprintf('s0%d-%d',k,j);    
       end
       if k>=10
           filename2=sprintf('s%d-%d',k,j);
       end
       
       xx=load([pathname2,filename2]);  
       labels=xx.labels;
       
       Theta.PLV1=traverse(xx.Theta.PLV1);
       Theta.PLV2=traverse(xx.Theta.PLV2);
       Alpha.PLV1=traverse(xx.Alpha.PLV1);
       Alpha.PLV2=traverse(xx.Alpha.PLV2);
       Beta1.PLV1=traverse(xx.Beta1.PLV1);
       Beta1.PLV2=traverse(xx.Beta1.PLV2);
       Beta2.PLV1=traverse(xx.Beta2.PLV1);
       Beta2.PLV2=traverse(xx.Beta2.PLV2);
       
       save([pathname4,filename2],'Theta','Alpha','Beta1','Beta2','labels');


    end

end