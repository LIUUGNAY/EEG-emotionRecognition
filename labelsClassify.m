%给效价和唤醒度加标签，>5为2，<=5为1
%并将属性和标签拼成数组
%存到“标签分类 ”

pathname1='E:\脑电数据集\网络属性特征值\';
pathname3='E:\脑电数据集\标签分类\';
%32个被试者
for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
    end
    pathname2=[pathname1,filename1];    %'E:\脑电数据集\网络属性特征值\s01\'
    pathname4=[pathname3,filename1];    %'E:\脑电数据集\标签分类\s01\'
    mkdir(pathname3,filename1);     %首次执行时需要创建新的文件夹
    %每人40次试验
    for j=1:40
       if k<10
           filename2=sprintf('s0%d-%d',k,j);  
           filename3=sprintf('s0%d-%d\\',k,j); 
       end
       if k>=10
           filename2=sprintf('s%d-%d',k,j);
           filename3=sprintf('s%d-%d\\',k,j);
       end
       
       % mkdir(pathname4,filename3);
    pathname5=[pathname2,filename3];   %'E:\脑电数据集\网络属性特征值\s01\s01-1'
       %pathname6=[pathname4,filename3];    %'E:\脑电数据集\标签分类\s01\s01-1'
       
        i= 1;
           filename4=sprintf('%d',i);
           x=load([pathname5,filename4]);   %'E:\脑电数据集\二值化矩阵\s01\s01-1\1.mat'
           labels=x.labels;
       if labels(1)>5
           labelsvalence=2;
       else
           labelsvalence=1;
       end
       
       if labels(2)>5
           labelsarousal=2;
       else
           labelsarousal=1;
       end
       x1Theta=[x.Theta.PLV1.clustering x.Theta.PLV1.assortativity x.Theta.PLV1.globalefficiency x.Theta.PLV1.localefficiency x.Theta.PLV1.path x.Theta.PLV1.modedegree x.Theta.PLV1.betweenness];
       x1Alpha=[x.Alpha.PLV1.clustering x.Alpha.PLV1.assortativity x.Alpha.PLV1.globalefficiency x.Alpha.PLV1.localefficiency x.Alpha.PLV1.path x.Alpha.PLV1.modedegree x.Alpha.PLV1.betweenness];
       x1Beta1=[x.Beta1.PLV1.clustering x.Beta1.PLV1.assortativity x.Beta1.PLV1.globalefficiency x.Beta1.PLV1.localefficiency x.Beta1.PLV1.path x.Beta1.PLV1.modedegree x.Beta1.PLV1.betweenness];
       x1Beta2=[x.Beta2.PLV1.clustering x.Beta2.PLV1.assortativity x.Beta2.PLV1.globalefficiency x.Beta2.PLV1.localefficiency x.Beta2.PLV1.path x.Beta2.PLV1.modedegree x.Beta2.PLV1.betweenness];
       
       
      x2Theta=[x.Theta.PLV2.clustering x.Theta.PLV2.assortativity x.Theta.PLV2.globalefficiency x.Theta.PLV2.localefficiency x.Theta.PLV2.path x.Theta.PLV2.modedegree x.Theta.PLV2.betweenness];
       x2Alpha=[x.Alpha.PLV2.clustering x.Alpha.PLV2.assortativity x.Alpha.PLV2.globalefficiency x.Alpha.PLV2.localefficiency x.Alpha.PLV2.path x.Alpha.PLV2.modedegree x.Alpha.PLV2.betweenness];
       x2Beta1=[x.Beta1.PLV2.clustering x.Beta1.PLV2.assortativity x.Beta1.PLV2.globalefficiency x.Beta1.PLV2.localefficiency x.Beta1.PLV2.path x.Beta1.PLV2.modedegree x.Beta1.PLV2.betweenness];
       x2Beta2=[x.Beta2.PLV2.clustering x.Beta2.PLV2.assortativity x.Beta2.PLV2.globalefficiency x.Beta2.PLV2.localefficiency x.Beta2.PLV2.path x.Beta2.PLV2.modedegree x.Beta2.PLV2.betweenness];

 

       Theta.PLV1.val=[x1Theta labelsvalence];
       Alpha.PLV1.val=[x1Alpha labelsvalence];
       Beta1.PLV1.val=[x1Beta1 labelsvalence];
       Beta2.PLV1.val=[x1Beta2 labelsvalence];
       
       Theta.PLV1.aro=[x1Theta labelsarousal];
       Alpha.PLV1.aro=[x1Alpha labelsarousal];
       Beta1.PLV1.aro=[x1Beta1 labelsarousal];
       Beta2.PLV1.aro=[x1Beta2 labelsarousal];
       
       Theta.PLV2.val=[x2Theta labelsvalence];
       Alpha.PLV2.val=[x2Alpha labelsvalence];
       Beta1.PLV2.val=[x2Beta1 labelsvalence];
       Beta2.PLV2.val=[x2Beta2 labelsvalence];
       
       Theta.PLV2.aro=[x2Theta labelsarousal];
       Alpha.PLV2.aro=[x2Alpha labelsarousal];
       Beta1.PLV2.aro=[x2Beta1 labelsarousal];
       Beta2.PLV2.aro=[x2Beta2 labelsarousal];
       
        
       
       save([pathname4,filename2],'Theta','Alpha','Beta1','Beta2','labels','labelsvalence','labelsarousal');

       
    end
end