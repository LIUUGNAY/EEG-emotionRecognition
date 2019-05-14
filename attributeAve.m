%计算PLV1和PLV2的均值


pathname1='E:\脑电文件夹\网络属性特征值\';
pathname3='E:\脑电文件夹\网络属性均值\';

%32个被试者
clustering=[];
for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
    end
    pathname2=[pathname1,filename1];    %'E:\脑电数据集\网络属性\s01\'
    pathname4=[pathname3,filename1];    %'E:\脑电数据集\网络属性均值\s01\'
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
       pathname5=[pathname2,filename3];   %'E:\脑电数据集\网络属性\s01\s01-1'
       pathname6=[pathname4,filename3];    %'E:\脑电数据集\网络属性均值\s01\s01-1'

       for i=1:20
           filename4=sprintf('%d',i);
           x=load([pathname5,filename4]);   %'E:\脑电数据集\网络属性\s01\s01-1\1.mat'
           labels=x.labels;
           %聚类系数
           Theta.clustering=(x.Theta.PLV1.clustering+x.Theta.PLV2.clustering)/2;
           Alpha.clustering=(x.Alpha.PLV1.clustering+x.Alpha.PLV2.clustering)/2;
           Beta1.clustering=(x.Beta1.PLV1.clustering+x.Beta1.PLV2.clustering)/2;
           Beta2.clustering=(x.Beta2.PLV1.clustering+x.Beta2.PLV2.clustering)/2;
           %同配系数
           Theta.assortativity=(x.Theta.PLV1.assortativity+x.Theta.PLV2.assortativity)/2;
           Alpha.assortativity=(x.Alpha.PLV1.assortativity+x.Alpha.PLV2.assortativity)/2;
           Beta1.assortativity=(x.Beta1.PLV1.assortativity+x.Beta1.PLV2.assortativity)/2;
           Beta2.assortativity=(x.Beta2.PLV1.assortativity+x.Beta2.PLV2.assortativity)/2;           
           %全局效率
           Theta.globalefficiency=(x.Theta.PLV1.globalefficiency+x.Theta.PLV2.globalefficiency)/2;
           Alpha.globalefficiency=(x.Alpha.PLV1.globalefficiency+x.Alpha.PLV2.globalefficiency)/2;
           Beta1.globalefficiency=(x.Beta1.PLV1.globalefficiency+x.Beta1.PLV2.globalefficiency)/2;
           Beta2.globalefficiency=(x.Beta2.PLV1.globalefficiency+x.Beta2.PLV2.globalefficiency)/2;          
           %局部效率
           Theta.localefficiency=(x.Theta.PLV1.localefficiency+x.Theta.PLV2.localefficiency)/2;
           Alpha.localefficiency=(x.Alpha.PLV1.localefficiency+x.Alpha.PLV2.localefficiency)/2;
           Beta1.localefficiency=(x.Beta1.PLV1.localefficiency+x.Beta1.PLV2.localefficiency)/2;
           Beta2.localefficiency=(x.Beta2.PLV1.localefficiency+x.Beta2.PLV2.localefficiency)/2;           
           %平均最短路径长度
           Theta.path=(x.Theta.PLV1.path+x.Theta.PLV2.path)/2;
           Alpha.path=(x.Alpha.PLV1.path+x.Alpha.PLV2.path)/2;
           Beta1.path=(x.Beta1.PLV1.path+x.Beta1.PLV2.path)/2;
           Beta2.path=(x.Beta2.PLV1.path+x.Beta2.PLV2.path)/2;           
           %节点度
           Theta.modedegree=(x.Theta.PLV1.modedegree+x.Theta.PLV2.modedegree)/2;
           Alpha.modedegree=(x.Alpha.PLV1.modedegree+x.Alpha.PLV2.modedegree)/2;
           Beta1.modedegree=(x.Beta1.PLV1.modedegree+x.Beta1.PLV2.modedegree)/2;
           Beta2.modedegree=(x.Beta2.PLV1.modedegree+x.Beta2.PLV2.modedegree)/2;           
           %中间中心度
           Theta.betweenness=(x.Theta.PLV1.betweenness+x.Theta.PLV2.betweenness)/2;
           Alpha.betweenness=(x.Alpha.PLV1.betweenness+x.Alpha.PLV2.betweenness)/2;
           Beta1.betweenness=(x.Beta1.PLV1.betweenness+x.Beta1.PLV2.betweenness)/2;
           Beta2.betweenness=(x.Beta2.PLV1.betweenness+x.Beta2.PLV2.betweenness)/2;
           %网络均值
          
           save([pathname6,filename4],'Theta','Alpha','Beta1','Beta2','labels');
       end
       


    end

end