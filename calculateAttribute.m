%属性的计算 


pathname1='E:\脑电文件夹\二值化矩阵\';
pathname3='E:\脑电文件夹\网络属性特征值\';

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

           %labels=x.labels;
           
         
           labels=x.labels;
          % if (x.labels(1) > 5)
           %    labels(1) = 2;
           %end
           %if (x.labels(1) <= 5)
           %    labels(1) = 1;
           %end
           %if (x.labels(2) > 5)
           %    labels(2) = 2;
           %end
           %if (x.labels(2) <= 5)
           %    labels(2) = 1;
           %end
           
           %聚类系数
           %HAHV
           Theta.HAHV.PLV1.clustering=sum(clustering_coef_bu(x.Theta.HAHV.PLV1))/32;
           Theta.HAHV.PLV2.clustering=sum(clustering_coef_bu(x.Theta.HAHV.PLV2))/32;
           Alpha.HAHV.PLV1.clustering=sum(clustering_coef_bu(x.Alpha.HAHV.PLV1))/32;
           Alpha.HAHV.PLV2.clustering=sum(clustering_coef_bu(x.Alpha.HAHV.PLV2))/32;
           Beta1.HAHV.PLV1.clustering=sum(clustering_coef_bu(x.Beta1.HAHV.PLV1))/32;
           Beta1.HAHV.PLV2.clustering=sum(clustering_coef_bu(x.Beta1.HAHV.PLV2))/32;
           Beta2.HAHV.PLV1.clustering=sum(clustering_coef_bu(x.Beta2.HAHV.PLV1))/32;
           Beta2.HAHV.PLV2.clustering=sum(clustering_coef_bu(x.Beta2.HAHV.PLV2))/32;
           
           %HALV
           Theta.HALV.PLV1.clustering=sum(clustering_coef_bu(x.Theta.HALV.PLV1))/32;
           Theta.HALV.PLV2.clustering=sum(clustering_coef_bu(x.Theta.HALV.PLV2))/32;
           Alpha.HALV.PLV1.clustering=sum(clustering_coef_bu(x.Alpha.HALV.PLV1))/32;
           Alpha.HALV.PLV2.clustering=sum(clustering_coef_bu(x.Alpha.HALV.PLV2))/32;
           Beta1.HALV.PLV1.clustering=sum(clustering_coef_bu(x.Beta1.HALV.PLV1))/32;
           Beta1.HALV.PLV2.clustering=sum(clustering_coef_bu(x.Beta1.HALV.PLV2))/32;
           Beta2.HALV.PLV1.clustering=sum(clustering_coef_bu(x.Beta2.HALV.PLV1))/32;
           Beta2.HALV.PLV2.clustering=sum(clustering_coef_bu(x.Beta2.HALV.PLV2))/32;
           
           %LAHV
           Theta.LAHV.PLV1.clustering=sum(clustering_coef_bu(x.Theta.LAHV.PLV1))/32;
           Theta.LAHV.PLV2.clustering=sum(clustering_coef_bu(x.Theta.LAHV.PLV2))/32;
           Alpha.LAHV.PLV1.clustering=sum(clustering_coef_bu(x.Alpha.LAHV.PLV1))/32;
           Alpha.LAHV.PLV2.clustering=sum(clustering_coef_bu(x.Alpha.LAHV.PLV2))/32;
           Beta1.LAHV.PLV1.clustering=sum(clustering_coef_bu(x.Beta1.LAHV.PLV1))/32;
           Beta1.LAHV.PLV2.clustering=sum(clustering_coef_bu(x.Beta1.LAHV.PLV2))/32;
           Beta2.LAHV.PLV1.clustering=sum(clustering_coef_bu(x.Beta2.LAHV.PLV1))/32;
           Beta2.LAHV.PLV2.clustering=sum(clustering_coef_bu(x.Beta2.LAHV.PLV2))/32;
           
           %LALV
           Theta.LALV.PLV1.clustering=sum(clustering_coef_bu(x.Theta.LALV.PLV1))/32;
           Theta.LALV.PLV2.clustering=sum(clustering_coef_bu(x.Theta.LALV.PLV2))/32;
           Alpha.LALV.PLV1.clustering=sum(clustering_coef_bu(x.Alpha.LALV.PLV1))/32;
           Alpha.LALV.PLV2.clustering=sum(clustering_coef_bu(x.Alpha.LALV.PLV2))/32;
           Beta1.LALV.PLV1.clustering=sum(clustering_coef_bu(x.Beta1.LALV.PLV1))/32;
           Beta1.LALV.PLV2.clustering=sum(clustering_coef_bu(x.Beta1.LALV.PLV2))/32;
           Beta2.LALV.PLV1.clustering=sum(clustering_coef_bu(x.Beta2.LALV.PLV1))/32;
           Beta2.LALV.PLV2.clustering=sum(clustering_coef_bu(x.Beta2.LALV.PLV2))/32;
           
           
           %同配系数
           %HAHV
           Theta.HAHV.PLV1.assortativity=assortativity_bin(x.Theta.HAHV.PLV1,0);
           Theta.HAHV.PLV2.assortativity=assortativity_bin(x.Theta.HAHV.PLV2,0);
           Alpha.HAHV.PLV1.assortativity=assortativity_bin(x.Alpha.HAHV.PLV1,0);
           Alpha.HAHV.PLV2.assortativity=assortativity_bin(x.Alpha.HAHV.PLV2,0);
           Beta1.HAHV.PLV1.assortativity=assortativity_bin(x.Beta1.HAHV.PLV1,0);
           Beta1.HAHV.PLV2.assortativity=assortativity_bin(x.Beta1.HAHV.PLV2,0);
           Beta2.HAHV.PLV1.assortativity=assortativity_bin(x.Beta2.HAHV.PLV1,0);
           Beta2.HAHV.PLV2.assortativity=assortativity_bin(x.Beta2.HAHV.PLV2,0);
           
           %HALV
           Theta.HALV.PLV1.assortativity=assortativity_bin(x.Theta.HALV.PLV1,0);
           Theta.HALV.PLV2.assortativity=assortativity_bin(x.Theta.HALV.PLV2,0);
           Alpha.HALV.PLV1.assortativity=assortativity_bin(x.Alpha.HALV.PLV1,0);
           Alpha.HALV.PLV2.assortativity=assortativity_bin(x.Alpha.HALV.PLV2,0);
           Beta1.HALV.PLV1.assortativity=assortativity_bin(x.Beta1.HALV.PLV1,0);
           Beta1.HALV.PLV2.assortativity=assortativity_bin(x.Beta1.HALV.PLV2,0);
           Beta2.HALV.PLV1.assortativity=assortativity_bin(x.Beta2.HALV.PLV1,0);
           Beta2.HALV.PLV2.assortativity=assortativity_bin(x.Beta2.HALV.PLV2,0);
           
           %LAHV
           Theta.LAHV.PLV1.assortativity=assortativity_bin(x.Theta.LAHV.PLV1,0);
           Theta.LAHV.PLV2.assortativity=assortativity_bin(x.Theta.LAHV.PLV2,0);
           Alpha.LAHV.PLV1.assortativity=assortativity_bin(x.Alpha.LAHV.PLV1,0);
           Alpha.LAHV.PLV2.assortativity=assortativity_bin(x.Alpha.LAHV.PLV2,0);
           Beta1.LAHV.PLV1.assortativity=assortativity_bin(x.Beta1.LAHV.PLV1,0);
           Beta1.LAHV.PLV2.assortativity=assortativity_bin(x.Beta1.LAHV.PLV2,0);
           Beta2.LAHV.PLV1.assortativity=assortativity_bin(x.Beta2.LAHV.PLV1,0);
           Beta2.LAHV.PLV2.assortativity=assortativity_bin(x.Beta2.LAHV.PLV2,0);
           
           %LALV
           Theta.LALV.PLV1.assortativity=assortativity_bin(x.Theta.LALV.PLV1,0);
           Theta.LALV.PLV2.assortativity=assortativity_bin(x.Theta.LALV.PLV2,0);
           Alpha.LALV.PLV1.assortativity=assortativity_bin(x.Alpha.LALV.PLV1,0);
           Alpha.LALV.PLV2.assortativity=assortativity_bin(x.Alpha.LALV.PLV2,0);
           Beta1.LALV.PLV1.assortativity=assortativity_bin(x.Beta1.LALV.PLV1,0);
           Beta1.LALV.PLV2.assortativity=assortativity_bin(x.Beta1.LALV.PLV2,0);
           Beta2.LALV.PLV1.assortativity=assortativity_bin(x.Beta2.LALV.PLV1,0);
           Beta2.LALV.PLV2.assortativity=assortativity_bin(x.Beta2.LALV.PLV2,0);
           
           
           %全局效率
           %HAHV
           Theta.HAHV.PLV1.globalefficiency=efficiency_bin(x.Theta.HAHV.PLV1);
           Theta.HAHV.PLV2.globalefficiency=efficiency_bin(x.Theta.HAHV.PLV2);
           Alpha.HAHV.PLV1.globalefficiency=efficiency_bin(x.Alpha.HAHV.PLV1);
           Alpha.HAHV.PLV2.globalefficiency=efficiency_bin(x.Alpha.HAHV.PLV2);
           Beta1.HAHV.PLV1.globalefficiency=efficiency_bin(x.Beta1.HAHV.PLV1);
           Beta1.HAHV.PLV2.globalefficiency=efficiency_bin(x.Beta1.HAHV.PLV2);
           Beta2.HAHV.PLV1.globalefficiency=efficiency_bin(x.Beta2.HAHV.PLV1);
           Beta2.HAHV.PLV2.globalefficiency=efficiency_bin(x.Beta2.HAHV.PLV2);
           
           %HALV
           Theta.HALV.PLV1.globalefficiency=efficiency_bin(x.Theta.HALV.PLV1);
           Theta.HALV.PLV2.globalefficiency=efficiency_bin(x.Theta.HALV.PLV2);
           Alpha.HALV.PLV1.globalefficiency=efficiency_bin(x.Alpha.HALV.PLV1);
           Alpha.HALV.PLV2.globalefficiency=efficiency_bin(x.Alpha.HALV.PLV2);
           Beta1.HALV.PLV1.globalefficiency=efficiency_bin(x.Beta1.HALV.PLV1);
           Beta1.HALV.PLV2.globalefficiency=efficiency_bin(x.Beta1.HALV.PLV2);
           Beta2.HALV.PLV1.globalefficiency=efficiency_bin(x.Beta2.HALV.PLV1);
           Beta2.HALV.PLV2.globalefficiency=efficiency_bin(x.Beta2.HALV.PLV2);
           
           %LAHV
           Theta.LAHV.PLV1.globalefficiency=efficiency_bin(x.Theta.LAHV.PLV1);
           Theta.LAHV.PLV2.globalefficiency=efficiency_bin(x.Theta.LAHV.PLV2);
           Alpha.LAHV.PLV1.globalefficiency=efficiency_bin(x.Alpha.LAHV.PLV1);
           Alpha.LAHV.PLV2.globalefficiency=efficiency_bin(x.Alpha.LAHV.PLV2);
           Beta1.LAHV.PLV1.globalefficiency=efficiency_bin(x.Beta1.LAHV.PLV1);
           Beta1.LAHV.PLV2.globalefficiency=efficiency_bin(x.Beta1.LAHV.PLV2);
           Beta2.LAHV.PLV1.globalefficiency=efficiency_bin(x.Beta2.LAHV.PLV1);
           Beta2.LAHV.PLV2.globalefficiency=efficiency_bin(x.Beta2.LAHV.PLV2);
           
           %LALV
           Theta.LALV.PLV1.globalefficiency=efficiency_bin(x.Theta.LALV.PLV1);
           Theta.LALV.PLV2.globalefficiency=efficiency_bin(x.Theta.LALV.PLV2);
           Alpha.LALV.PLV1.globalefficiency=efficiency_bin(x.Alpha.LALV.PLV1);
           Alpha.LALV.PLV2.globalefficiency=efficiency_bin(x.Alpha.LALV.PLV2);
           Beta1.LALV.PLV1.globalefficiency=efficiency_bin(x.Beta1.LALV.PLV1);
           Beta1.LALV.PLV2.globalefficiency=efficiency_bin(x.Beta1.LALV.PLV2);
           Beta2.LALV.PLV1.globalefficiency=efficiency_bin(x.Beta2.LALV.PLV1);
           Beta2.LALV.PLV2.globalefficiency=efficiency_bin(x.Beta2.LALV.PLV2);
           
           
           
           
           %局部效率
           %HAHV
           Theta.HAHV.PLV1.localefficiency=sum(efficiency_bin(x.Theta.HAHV.PLV1,1))/32;
           Theta.HAHV.PLV2.localefficiency=sum(efficiency_bin(x.Theta.HAHV.PLV2,1))/32;
           Alpha.HAHV.PLV1.localefficiency=sum(efficiency_bin(x.Alpha.HAHV.PLV1,1))/32;
           Alpha.HAHV.PLV2.localefficiency=sum(efficiency_bin(x.Alpha.HAHV.PLV2,1))/32;
           Beta1.HAHV.PLV1.localefficiency=sum(efficiency_bin(x.Beta1.HAHV.PLV1,1))/32;
           Beta1.HAHV.PLV2.localefficiency=sum(efficiency_bin(x.Beta1.HAHV.PLV2,1))/32;
           Beta2.HAHV.PLV1.localefficiency=sum(efficiency_bin(x.Beta2.HAHV.PLV1,1))/32;
           Beta2.HAHV.PLV2.localefficiency=sum(efficiency_bin(x.Beta2.HAHV.PLV2,1))/32;
           
           %HALV
           Theta.HALV.PLV1.localefficiency=sum(efficiency_bin(x.Theta.HALV.PLV1,1))/32;
           Theta.HALV.PLV2.localefficiency=sum(efficiency_bin(x.Theta.HALV.PLV2,1))/32;
           Alpha.HALV.PLV1.localefficiency=sum(efficiency_bin(x.Alpha.HALV.PLV1,1))/32;
           Alpha.HALV.PLV2.localefficiency=sum(efficiency_bin(x.Alpha.HALV.PLV2,1))/32;
           Beta1.HALV.PLV1.localefficiency=sum(efficiency_bin(x.Beta1.HALV.PLV1,1))/32;
           Beta1.HALV.PLV2.localefficiency=sum(efficiency_bin(x.Beta1.HALV.PLV2,1))/32;
           Beta2.HALV.PLV1.localefficiency=sum(efficiency_bin(x.Beta2.HALV.PLV1,1))/32;
           Beta2.HALV.PLV2.localefficiency=sum(efficiency_bin(x.Beta2.HALV.PLV2,1))/32;
           
           %LAHV
           Theta.LAHV.PLV1.localefficiency=sum(efficiency_bin(x.Theta.LAHV.PLV1,1))/32;
           Theta.LAHV.PLV2.localefficiency=sum(efficiency_bin(x.Theta.LAHV.PLV2,1))/32;
           Alpha.LAHV.PLV1.localefficiency=sum(efficiency_bin(x.Alpha.LAHV.PLV1,1))/32;
           Alpha.LAHV.PLV2.localefficiency=sum(efficiency_bin(x.Alpha.LAHV.PLV2,1))/32;
           Beta1.LAHV.PLV1.localefficiency=sum(efficiency_bin(x.Beta1.LAHV.PLV1,1))/32;
           Beta1.LAHV.PLV2.localefficiency=sum(efficiency_bin(x.Beta1.LAHV.PLV2,1))/32;
           Beta2.LAHV.PLV1.localefficiency=sum(efficiency_bin(x.Beta2.LAHV.PLV1,1))/32;
           Beta2.LAHV.PLV2.localefficiency=sum(efficiency_bin(x.Beta2.LAHV.PLV2,1))/32;
           
           %LALV
           Theta.LALV.PLV1.localefficiency=sum(efficiency_bin(x.Theta.LALV.PLV1,1))/32;
           Theta.LALV.PLV2.localefficiency=sum(efficiency_bin(x.Theta.LALV.PLV2,1))/32;
           Alpha.LALV.PLV1.localefficiency=sum(efficiency_bin(x.Alpha.LALV.PLV1,1))/32;
           Alpha.LALV.PLV2.localefficiency=sum(efficiency_bin(x.Alpha.LALV.PLV2,1))/32;
           Beta1.LALV.PLV1.localefficiency=sum(efficiency_bin(x.Beta1.LALV.PLV1,1))/32;
           Beta1.LALV.PLV2.localefficiency=sum(efficiency_bin(x.Beta1.LALV.PLV2,1))/32;
           Beta2.LALV.PLV1.localefficiency=sum(efficiency_bin(x.Beta2.LALV.PLV1,1))/32;
           Beta2.LALV.PLV2.localefficiency=sum(efficiency_bin(x.Beta2.LALV.PLV2,1))/32;
           
         
           
           
           %平均最短路径长度
           %HAHV
           Theta.HAHV.PLV1.path=charpath(x.Theta.HAHV.PLV1);
           Theta.HAHV.PLV2.path=charpath(x.Theta.HAHV.PLV2);
           Alpha.HAHV.PLV1.path=charpath(x.Alpha.HAHV.PLV1);
           Alpha.HAHV.PLV2.path=charpath(x.Alpha.HAHV.PLV2);
           Beta1.HAHV.PLV1.path=charpath(x.Beta1.HAHV.PLV1);
           Beta1.HAHV.PLV2.path=charpath(x.Beta1.HAHV.PLV2);
           Beta2.HAHV.PLV1.path=charpath(x.Beta2.HAHV.PLV1);
           Beta2.HAHV.PLV2.path=charpath(x.Beta2.HAHV.PLV2);
           
           %HALV
           Theta.HALV.PLV1.path=charpath(x.Theta.HALV.PLV1);
           Theta.HALV.PLV2.path=charpath(x.Theta.HALV.PLV2);
           Alpha.HALV.PLV1.path=charpath(x.Alpha.HALV.PLV1);
           Alpha.HALV.PLV2.path=charpath(x.Alpha.HALV.PLV2);
           Beta1.HALV.PLV1.path=charpath(x.Beta1.HALV.PLV1);
           Beta1.HALV.PLV2.path=charpath(x.Beta1.HALV.PLV2);
           Beta2.HALV.PLV1.path=charpath(x.Beta2.HALV.PLV1);
           Beta2.HALV.PLV2.path=charpath(x.Beta2.HALV.PLV2);
           
           %LAHV
           Theta.LAHV.PLV1.path=charpath(x.Theta.LAHV.PLV1);
           Theta.LAHV.PLV2.path=charpath(x.Theta.LAHV.PLV2);
           Alpha.LAHV.PLV1.path=charpath(x.Alpha.LAHV.PLV1);
           Alpha.LAHV.PLV2.path=charpath(x.Alpha.LAHV.PLV2);
           Beta1.LAHV.PLV1.path=charpath(x.Beta1.LAHV.PLV1);
           Beta1.LAHV.PLV2.path=charpath(x.Beta1.LAHV.PLV2);
           Beta2.LAHV.PLV1.path=charpath(x.Beta2.LAHV.PLV1);
           Beta2.LAHV.PLV2.path=charpath(x.Beta2.LAHV.PLV2);
           
           %LALV
           Theta.LALV.PLV1.path=charpath(x.Theta.LALV.PLV1);
           Theta.LALV.PLV2.path=charpath(x.Theta.LALV.PLV2);
           Alpha.LALV.PLV1.path=charpath(x.Alpha.LALV.PLV1);
           Alpha.LALV.PLV2.path=charpath(x.Alpha.LALV.PLV2);
           Beta1.LALV.PLV1.path=charpath(x.Beta1.LALV.PLV1);
           Beta1.LALV.PLV2.path=charpath(x.Beta1.LALV.PLV2);
           Beta2.LALV.PLV1.path=charpath(x.Beta2.LALV.PLV1);
           Beta2.LALV.PLV2.path=charpath(x.Beta2.LALV.PLV2);
           
           
           %节点度
           %HAHV
           Theta.HAHV.PLV1.modedegree=sum(degrees_und(x.Theta.HAHV.PLV1))/32;
           Theta.HAHV.PLV2.modedegree=sum(degrees_und(x.Theta.HAHV.PLV2))/32;
           Alpha.HAHV.PLV1.modedegree=sum(degrees_und(x.Alpha.HAHV.PLV1))/32;
           Alpha.HAHV.PLV2.modedegree=sum(degrees_und(x.Alpha.HAHV.PLV2))/32;
           Beta1.HAHV.PLV1.modedegree=sum(degrees_und(x.Beta1.HAHV.PLV1))/32;
           Beta1.HAHV.PLV2.modedegree=sum(degrees_und(x.Beta1.HAHV.PLV2))/32;
           Beta2.HAHV.PLV1.modedegree=sum(degrees_und(x.Beta2.HAHV.PLV1))/32;
           Beta2.HAHV.PLV2.modedegree=sum(degrees_und(x.Beta2.HAHV.PLV2))/32;
           
            %HALV
           Theta.HALV.PLV1.modedegree=sum(degrees_und(x.Theta.HALV.PLV1))/32;
           Theta.HALV.PLV2.modedegree=sum(degrees_und(x.Theta.HALV.PLV2))/32;
           Alpha.HALV.PLV1.modedegree=sum(degrees_und(x.Alpha.HALV.PLV1))/32;
           Alpha.HALV.PLV2.modedegree=sum(degrees_und(x.Alpha.HALV.PLV2))/32;
           Beta1.HALV.PLV1.modedegree=sum(degrees_und(x.Beta1.HALV.PLV1))/32;
           Beta1.HALV.PLV2.modedegree=sum(degrees_und(x.Beta1.HALV.PLV2))/32;
           Beta2.HALV.PLV1.modedegree=sum(degrees_und(x.Beta2.HALV.PLV1))/32;
           Beta2.HALV.PLV2.modedegree=sum(degrees_und(x.Beta2.HALV.PLV2))/32;
           
           
            %LAHV
           Theta.LAHV.PLV1.modedegree=sum(degrees_und(x.Theta.LAHV.PLV1))/32;
           Theta.LAHV.PLV2.modedegree=sum(degrees_und(x.Theta.LAHV.PLV2))/32;
           Alpha.LAHV.PLV1.modedegree=sum(degrees_und(x.Alpha.LAHV.PLV1))/32;
           Alpha.LAHV.PLV2.modedegree=sum(degrees_und(x.Alpha.LAHV.PLV2))/32;
           Beta1.LAHV.PLV1.modedegree=sum(degrees_und(x.Beta1.LAHV.PLV1))/32;
           Beta1.LAHV.PLV2.modedegree=sum(degrees_und(x.Beta1.LAHV.PLV2))/32;
           Beta2.LAHV.PLV1.modedegree=sum(degrees_und(x.Beta2.LAHV.PLV1))/32;
           Beta2.LAHV.PLV2.modedegree=sum(degrees_und(x.Beta2.LAHV.PLV2))/32;
          
            %LALV
           Theta.LALV.PLV1.modedegree=sum(degrees_und(x.Theta.LALV.PLV1))/32;
           Theta.LALV.PLV2.modedegree=sum(degrees_und(x.Theta.LALV.PLV2))/32;
           Alpha.LALV.PLV1.modedegree=sum(degrees_und(x.Alpha.LALV.PLV1))/32;
           Alpha.LALV.PLV2.modedegree=sum(degrees_und(x.Alpha.LALV.PLV2))/32;
           Beta1.LALV.PLV1.modedegree=sum(degrees_und(x.Beta1.LALV.PLV1))/32;
           Beta1.LALV.PLV2.modedegree=sum(degrees_und(x.Beta1.LALV.PLV2))/32;
           Beta2.LALV.PLV1.modedegree=sum(degrees_und(x.Beta2.LALV.PLV1))/32;
           Beta2.LALV.PLV2.modedegree=sum(degrees_und(x.Beta2.LALV.PLV2))/32;
           
           
           
           %中间中心度
           %HAHV
           Theta.HAHV.PLV1.betweenness=sum(betweenness_bin(x.Theta.HAHV.PLV1))/32;
           Theta.HAHV.PLV2.betweenness=sum(betweenness_bin(x.Theta.HAHV.PLV2))/32;
           Alpha.HAHV.PLV1.betweenness=sum(betweenness_bin(x.Alpha.HAHV.PLV1))/32;
           Alpha.HAHV.PLV2.betweenness=sum(betweenness_bin(x.Alpha.HAHV.PLV2))/32;
           Beta1.HAHV.PLV1.betweenness=sum(betweenness_bin(x.Beta1.HAHV.PLV1))/32;
           Beta1.HAHV.PLV2.betweenness=sum(betweenness_bin(x.Beta1.HAHV.PLV2))/32;
           Beta2.HAHV.PLV1.betweenness=sum(betweenness_bin(x.Beta2.HAHV.PLV1))/32;
           Beta2.HAHV.PLV2.betweenness=sum(betweenness_bin(x.Beta2.HAHV.PLV2))/32;
           
           
             %HALV
           Theta.HALV.PLV1.betweenness=sum(betweenness_bin(x.Theta.HALV.PLV1))/32;
           Theta.HALV.PLV2.betweenness=sum(betweenness_bin(x.Theta.HALV.PLV2))/32;
           Alpha.HALV.PLV1.betweenness=sum(betweenness_bin(x.Alpha.HALV.PLV1))/32;
           Alpha.HALV.PLV2.betweenness=sum(betweenness_bin(x.Alpha.HALV.PLV2))/32;
           Beta1.HALV.PLV1.betweenness=sum(betweenness_bin(x.Beta1.HALV.PLV1))/32;
           Beta1.HALV.PLV2.betweenness=sum(betweenness_bin(x.Beta1.HALV.PLV2))/32;
           Beta2.HALV.PLV1.betweenness=sum(betweenness_bin(x.Beta2.HALV.PLV1))/32;
           Beta2.HALV.PLV2.betweenness=sum(betweenness_bin(x.Beta2.HALV.PLV2))/32;
           
             %LAHV
           Theta.LAHV.PLV1.betweenness=sum(betweenness_bin(x.Theta.LAHV.PLV1))/32;
           Theta.LAHV.PLV2.betweenness=sum(betweenness_bin(x.Theta.LAHV.PLV2))/32;
           Alpha.LAHV.PLV1.betweenness=sum(betweenness_bin(x.Alpha.LAHV.PLV1))/32;
           Alpha.LAHV.PLV2.betweenness=sum(betweenness_bin(x.Alpha.LAHV.PLV2))/32;
           Beta1.LAHV.PLV1.betweenness=sum(betweenness_bin(x.Beta1.LAHV.PLV1))/32;
           Beta1.LAHV.PLV2.betweenness=sum(betweenness_bin(x.Beta1.LAHV.PLV2))/32;
           Beta2.LAHV.PLV1.betweenness=sum(betweenness_bin(x.Beta2.LAHV.PLV1))/32;
           Beta2.LAHV.PLV2.betweenness=sum(betweenness_bin(x.Beta2.LAHV.PLV2))/32;
           
             %LALV
           Theta.LALV.PLV1.betweenness=sum(betweenness_bin(x.Theta.LALV.PLV1))/32;
           Theta.LALV.PLV2.betweenness=sum(betweenness_bin(x.Theta.LALV.PLV2))/32;
           Alpha.LALV.PLV1.betweenness=sum(betweenness_bin(x.Alpha.LALV.PLV1))/32;
           Alpha.LALV.PLV2.betweenness=sum(betweenness_bin(x.Alpha.LALV.PLV2))/32;
           Beta1.LALV.PLV1.betweenness=sum(betweenness_bin(x.Beta1.LALV.PLV1))/32;
           Beta1.LALV.PLV2.betweenness=sum(betweenness_bin(x.Beta1.LALV.PLV2))/32;
           Beta2.LALV.PLV1.betweenness=sum(betweenness_bin(x.Beta2.LALV.PLV1))/32;
           Beta2.LALV.PLV2.betweenness=sum(betweenness_bin(x.Beta2.LALV.PLV2))/32;
           

           %网络均值
           
           save([pathname6,filename4],'Theta','Alpha','Beta1','Beta2','labels');
       end

    end

end