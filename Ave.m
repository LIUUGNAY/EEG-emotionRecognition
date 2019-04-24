%对矩阵,分别求四个波段的平均值

pathname1='E:\脑电数据集\前十PLV矩阵\';
pathname3='E:\脑电数据集\平均值\';
sumTheta=0;
sumAlpha=0;
sumBeta1=0;
sumBeta2=0;
%32个被试者
for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
    end
    pathname2=[pathname1,filename1];    %'E:\脑电数据集\二值化矩阵\s01\'
    pathname4=[pathname3,filename1];    %'E:\脑电数据集\属性\s01\'
    mkdir(pathname3,filename1);     %首次执行时需要创建新的文件夹
    %每人40次试验
    for j=1:40
       if k<10
           filename2=sprintf('s0%d-%d',k,j);    
       end
       if k>=10
           filename2=sprintf('s%d-%d',k,j);
       end
       xx=load([pathname2,filename2]);   %'E:\脑电数据集\二值化矩阵\s01\s01-1.mat'
       labels=xx.labels;
       %每个文件每个波段，MI1和MI2的平均值，avg
       Theta=avgtest(xx.Theta.MI1,xx.Theta.MI2);
       Alpha=avgtest(xx.Alpha.MI1,xx.Alpha.MI2);
       Beta1=avgtest(xx.Beta1.MI1,xx.Beta1.MI2);
       Beta2=avgtest(xx.Beta2.MI1,xx.Beta2.MI2);
       
       sumTheta=sumTheta+Theta;
       sumAlpha=sumAlpha+Alpha;
       sumBeta1=sumBeta1+Beta1;
       sumBeta2=sumBeta2+Beta2;
       
%        save([pathname4,filename2],'Theta','Alpha','Beta1','Beta2','labels');

    end

end
avgTheta=sumTheta/(32*40);
avgAlpha=sumAlpha/(32*40);
avgBeta1=sumBeta1/(32*40);
avgBeta2=sumBeta2/(32*40);