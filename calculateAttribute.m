%属性的计算 


pathname1='E:\脑电数据集\二值化矩阵\';
pathname3='E:\脑电数据集\网络属性\';
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
       
       for i=1:29
           filename4=sprintf('%d',i);
           x=load([pathname5,filename4]);   %'E:\脑电数据集\二值化矩阵\s01\s01-1\1.mat'
           labels=x.labels;
           
           %聚类系数
           Theta.PLV1.clustering=sum(clustering_coef_bu(x.Theta.PLV1))/32;
           Theta.PLV2.clustering=sum(clustering_coef_bu(x.Theta.PLV2))/32;
           Alpha.PLV1.clustering=sum(clustering_coef_bu(x.Alpha.PLV1))/32;
           Alpha.PLV2.clustering=sum(clustering_coef_bu(x.Alpha.PLV2))/32;
           Beta1.PLV1.clustering=sum(clustering_coef_bu(x.Beta1.PLV1))/32;
           Beta1.PLV2.clustering=sum(clustering_coef_bu(x.Beta1.PLV2))/32;
           Beta2.PLV1.clustering=sum(clustering_coef_bu(x.Beta2.PLV1))/32;
           Beta2.PLV2.clustering=sum(clustering_coef_bu(x.Beta2.PLV2))/32;           
           %同配系数
           Theta.PLV1.assortativity=assortativity_bin(x.Theta.PLV1,0);
           Theta.PLV2.assortativity=assortativity_bin(x.Theta.PLV2,0);
           Alpha.PLV1.assortativity=assortativity_bin(x.Alpha.PLV1,0);
           Alpha.PLV2.assortativity=assortativity_bin(x.Alpha.PLV2,0);
           Beta1.PLV1.assortativity=assortativity_bin(x.Beta1.PLV1,0);
           Beta1.PLV2.assortativity=assortativity_bin(x.Beta1.PLV2,0);
           Beta2.PLV1.assortativity=assortativity_bin(x.Beta2.PLV1,0);
           Beta2.PLV2.assortativity=assortativity_bin(x.Beta2.PLV2,0);
           %全局效率
           Theta.PLV1.globalefficiency=efficiency_bin(x.Theta.PLV1);
           Theta.PLV2.globalefficiency=efficiency_bin(x.Theta.PLV2);
           Alpha.PLV1.globalefficiency=efficiency_bin(x.Alpha.PLV1);
           Alpha.PLV2.globalefficiency=efficiency_bin(x.Alpha.PLV2);
           Beta1.PLV1.globalefficiency=efficiency_bin(x.Beta1.PLV1);
           Beta1.PLV2.globalefficiency=efficiency_bin(x.Beta1.PLV2);
           Beta2.PLV1.globalefficiency=efficiency_bin(x.Beta2.PLV1);
           Beta2.PLV2.globalefficiency=efficiency_bin(x.Beta2.PLV2);
           %局部效率
           Theta.PLV1.localefficiency=sum(efficiency_bin(x.Theta.PLV1,1))/32;
           Theta.PLV2.localefficiency=sum(efficiency_bin(x.Theta.PLV2,1))/32;
           Alpha.PLV1.localefficiency=sum(efficiency_bin(x.Alpha.PLV1,1))/32;
           Alpha.PLV2.localefficiency=sum(efficiency_bin(x.Alpha.PLV2,1))/32;
           Beta1.PLV1.localefficiency=sum(efficiency_bin(x.Beta1.PLV1,1))/32;
           Beta1.PLV2.localefficiency=sum(efficiency_bin(x.Beta1.PLV2,1))/32;
           Beta2.PLV1.localefficiency=sum(efficiency_bin(x.Beta2.PLV1,1))/32;
           Beta2.PLV2.localefficiency=sum(efficiency_bin(x.Beta2.PLV2,1))/32;
           %平均最短路径长度
           Theta.PLV1.path=charpath(x.Theta.PLV1);
           Theta.PLV2.path=charpath(x.Theta.PLV2);
           Alpha.PLV1.path=charpath(x.Alpha.PLV1);
           Alpha.PLV2.path=charpath(x.Alpha.PLV2);
           Beta1.PLV1.path=charpath(x.Beta1.PLV1);
           Beta1.PLV2.path=charpath(x.Beta1.PLV2);
           Beta2.PLV1.path=charpath(x.Beta2.PLV1);
           Beta2.PLV2.path=charpath(x.Beta2.PLV2);
           %节点度
           Theta.PLV1.modedegree=sum(degrees_und(x.Theta.PLV1))/32;
           Theta.PLV2.modedegree=sum(degrees_und(x.Theta.PLV2))/32;
           Alpha.PLV1.modedegree=sum(degrees_und(x.Alpha.PLV1))/32;
           Alpha.PLV2.modedegree=sum(degrees_und(x.Alpha.PLV2))/32;
           Beta1.PLV1.modedegree=sum(degrees_und(x.Beta1.PLV1))/32;
           Beta1.PLV2.modedegree=sum(degrees_und(x.Beta1.PLV2))/32;
           Beta2.PLV1.modedegree=sum(degrees_und(x.Beta2.PLV1))/32;
           Beta2.PLV2.modedegree=sum(degrees_und(x.Beta2.PLV2))/32;
           %中间中心度
           Theta.PLV1.betweenness=sum(betweenness_bin(x.Theta.PLV1))/32;
           Theta.PLV2.betweenness=sum(betweenness_bin(x.Theta.PLV2))/32;
           Alpha.PLV1.betweenness=sum(betweenness_bin(x.Alpha.PLV1))/32;
           Alpha.PLV2.betweenness=sum(betweenness_bin(x.Alpha.PLV2))/32;
           Beta1.PLV1.betweenness=sum(betweenness_bin(x.Beta1.PLV1))/32;
           Beta1.PLV2.betweenness=sum(betweenness_bin(x.Beta1.PLV2))/32;
           Beta2.PLV1.betweenness=sum(betweenness_bin(x.Beta2.PLV1))/32;
           Beta2.PLV2.betweenness=sum(betweenness_bin(x.Beta2.PLV2))/32;
           %网络均值
           
           save([pathname6,filename4],'Theta','Alpha','Beta1','Beta2','labels');
       end

    end

end