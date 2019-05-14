%聚类系数与最短路径比值的计算 


pathname1='E:\脑电文件夹\网络属性特征值\';
pathname3='E:\脑电文件夹\聚类系数与最短路径平均比值\';
clustering=[];
%32个被试者
for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
    end
    pathname2=[pathname1,filename1];    %'E:\脑电数据集\二值化矩阵\s01\'
    pathname4=[pathname3,filename1];    %'E:\脑电数据集\网络属性\s01\'
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
       mkdir(pathname4,filename3);
       pathname5=[pathname2,filename3];   %'E:\脑电数据集\二值化矩阵\s01\s01-1'
       pathname6=[pathname4,filename3];    %'E:\脑电数据集\网络属性\s01\s01-1'
       
       for i=1:20
           filename4=sprintf('%d',i);
           x=load([pathname5,filename4]);   %'E:\脑电数据集\二值化矩阵\s01\s01-1\1.mat'
           labels=x.labels;
           Theta.HAHV.PLV1.rate = (x.Theta.HAHV.PLV1.clustering)/(x.Theta.HAHV.PLV1.path);
           Theta.HAHV.PLV2.rate = (x.Theta.HAHV.PLV2.clustering)/(x.Theta.HAHV.PLV2.path);
           Theta.HALV.PLV1.rate = (x.Theta.HALV.PLV1.clustering)/(x.Theta.HALV.PLV1.path);
           Theta.HALV.PLV2.rate = (x.Theta.HALV.PLV2.clustering)/(x.Theta.HALV.PLV2.path);
           Theta.LAHV.PLV1.rate = (x.Theta.LAHV.PLV1.clustering)/(x.Theta.LAHV.PLV1.path);
           Theta.LAHV.PLV2.rate = (x.Theta.LAHV.PLV2.clustering)/(x.Theta.LAHV.PLV2.path);
           Theta.LALV.PLV1.rate = (x.Theta.LALV.PLV1.clustering)/(x.Theta.LALV.PLV1.path);
           Theta.LALV.PLV2.rate = (x.Theta.LALV.PLV2.clustering)/(x.Theta.LALV.PLV2.path);
           
           
           Alpha.HAHV.PLV1.rate = (x.Alpha.HAHV.PLV1.clustering)/(x.Alpha.HAHV.PLV1.path);
           Alpha.HAHV.PLV2.rate = (x.Alpha.HAHV.PLV2.clustering)/(x.Alpha.HAHV.PLV2.path);
           Alpha.HALV.PLV1.rate = (x.Alpha.HALV.PLV1.clustering)/(x.Alpha.HALV.PLV1.path);
           Alpha.HALV.PLV2.rate = (x.Alpha.HALV.PLV2.clustering)/(x.Alpha.HALV.PLV2.path); 
           Alpha.LAHV.PLV1.rate = (x.Alpha.LAHV.PLV1.clustering)/(x.Alpha.LAHV.PLV1.path);
           Alpha.LAHV.PLV2.rate = (x.Alpha.LAHV.PLV2.clustering)/(x.Alpha.LAHV.PLV2.path);
          Alpha.LALV.PLV1.rate = (x.Alpha.LALV.PLV1.clustering)/(x.Alpha.LALV.PLV1.path);
           Alpha.LALV.PLV2.rate = (x.Alpha.LALV.PLV2.clustering)/(x.Alpha.LALV.PLV2.path);
           
           
           Beta1.HAHV.PLV1.rate = (x.Beta1.HAHV.PLV1.clustering)/(x.Beta1.HAHV.PLV1.path);
           Beta1.HAHV.PLV2.rate = (x.Beta1.HAHV.PLV2.clustering)/(x.Beta1.HAHV.PLV2.path);
           Beta1.HAHV.PLV1.rate = (x.Beta1.HALV.PLV1.clustering)/(x.Beta1.HALV.PLV1.path);
           Beta1.HALV.PLV2.rate = (x.Beta1.HALV.PLV2.clustering)/(x.Beta1.HALV.PLV2.path);
           Beta1.LAHV.PLV1.rate = (x.Beta1.LAHV.PLV1.clustering)/(x.Beta1.LAHV.PLV1.path);
           Beta1.LAHV.PLV2.rate = (x.Beta1.LAHV.PLV2.clustering)/(x.Beta1.LAHV.PLV2.path);
           Beta1.LALV.PLV1.rate = (x.Beta1.LALV.PLV1.clustering)/(x.Beta1.LALV.PLV1.path);
           Beta1.LALV.PLV2.rate = (x.Beta1.LALV.PLV2.clustering)/(x.Beta1.LALV.PLV2.path);
           
           
           
           Beta2.HAHV.PLV1.rate = (x.Beta2.HAHV.PLV1.clustering)/(x.Beta2.HAHV.PLV1.path);
           Beta2.HAHV.PLV2.rate = (x.Beta2.HAHV.PLV2.clustering)/(x.Beta2.HAHV.PLV2.path);
           Beta2.HAHV.PLV1.rate = (x.Beta2.HALV.PLV1.clustering)/(x.Beta2.HALV.PLV1.path);
           Beta2.HALV.PLV2.rate = (x.Beta2.HALV.PLV2.clustering)/(x.Beta2.HALV.PLV2.path);
           Beta2.LAHV.PLV1.rate = (x.Beta2.LAHV.PLV1.clustering)/(x.Beta2.LAHV.PLV1.path);
           Beta2.LAHV.PLV2.rate = (x.Beta2.LAHV.PLV2.clustering)/(x.Beta2.LAHV.PLV2.path);
           Beta2.LALV.PLV1.rate = (x.Beta2.LALV.PLV1.clustering)/(x.Beta2.LALV.PLV1.path);
           Beta2.LALV.PLV2.rate = (x.Beta2.LALV.PLV2.clustering)/(x.Beta2.LALV.PLV2.path);
           save([pathname6,filename4],'Theta','Alpha','Beta1','Beta2','labels');
       end
    end
end