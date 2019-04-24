%属性的计算 
postTheta = struct();
postAlpha = struct();
postBeta1 = struct();
postBeta2 = struct();
lastTheta = struct();
lastAlpha = struct();
lastBeta1 = struct();
lastBeta2 = struct();

pathname1='E:\脑电数据集\前二值化矩阵\';
pathname3='E:\脑电数据集\前十秒属性\';
 lastpathname1='E:\脑电数据集\后二值化矩阵\';
 lastpathname2='E:\脑电数据集\后十秒属性\';
 for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
    end
    pathname2=[pathname1,filename1];
  lastPathname=[lastpathname1,filename1];
    
    pathname4=[pathname3,filename1];
    lastPathname1 = [lastpathname2,filename1];
    
    mkdir(pathname3,filename1);
    mkdir(lastpathname2,filename1);%首次执行时需要创建新的文件夹，再次执行可不用
    %每人40次试验
    for j=1:40
       if k<10
           filename2=sprintf('s0%d-%d',k,j);
       end
       if k>=10
           filename2=sprintf('s%d-%d',k,j);
       end
       
       x=load([pathname2,filename2]);
       y=load([lastPathname,filename2]);
       
       postLabels = x.postLabels;
       lastLabels = y.lastLabels;
       %聚类系数
       postTheta.clustering=clustering_coef_bu(x.postTheta);
       postAlpha.clustering=clustering_coef_bu(x.postAlpha);
       postBeta1.clustering=clustering_coef_bu(x.postBeta1);
       postBeta2.clustering=clustering_coef_bu(x.postBeta2);
       
       lastTheta.clustering=clustering_coef_bu(y.lastTheta);
       lastAlpha.clustering=clustering_coef_bu(y.lastAlpha);
       lastBeta1.clustering=clustering_coef_bu(y.lastBeta1);
       lastBeta2.clustering=clustering_coef_bu(y.lastBeta2);
       
       %同配系数
       postTheta.assortativity=assortativity_bin(x.postTheta,0);
       postAlpha.assortativity=assortativity_bin(x.postAlpha,0);
       postBeta1.assortativity=assortativity_bin(x.postBeta1,0);
       postBeta2.assortativity=assortativity_bin(x.postBeta2,0);
       
       lastTheta.assortativity=assortativity_bin(y.lastTheta,0);
       lastAlpha.assortativity=assortativity_bin(y.lastAlpha,0);
       lastBeta1.assortativity=assortativity_bin(y.lastBeta1,0);
       lastBeta2.assortativity=assortativity_bin(y.lastBeta2,0);
       
       
       
       %全局效率
       
       postTheta.globalefficiency=efficiency_bin(x.postTheta);
       postAlpha.globalefficiency=efficiency_bin(x.postAlpha);
       postBeta1.globalefficiency=efficiency_bin(x.postBeta1);
       postBeta2.globalefficiency=efficiency_bin(x.postBeta2);
       
       lastTheta.globalefficiency=efficiency_bin(y.lastTheta);
       lastAlpha.globalefficiency=efficiency_bin(y.lastAlpha);
       lastBeta1.globalefficiency=efficiency_bin(y.lastBeta1);
       lastBeta2.globalefficiency=efficiency_bin(y.lastBeta2);
       
       
       
       
       
       %局部效率
       postTheta.localefficiency=efficiency_bin(x.postTheta,1);
       postAlpha.localefficiency=efficiency_bin(x.postAlpha,1);
       postBeta1.localefficiency=efficiency_bin(x.postBeta1,1);
       postBeta2.localefficiency=efficiency_bin(x.postBeta2,1);
       
       lastTheta.localefficiency=efficiency_bin(y.lastTheta,1);
       lastAlpha.localefficiency=efficiency_bin(y.lastAlpha,1);
       lastBeta1.localefficiency=efficiency_bin(y.lastBeta1,1);
       lastBeta2.localefficiency=efficiency_bin(y.lastBeta2,1);
       
       
     
       %平均最短路径长度
       
       postTheta.path=charpath(x.postTheta);
       postAlpha.path=charpath(x.postAlpha);
       postBeta1.path=charpath(x.postBeta1);
       postBeta2.path=charpath(x.postBeta2);
       
       lastTheta.path=charpath(y.lastTheta);
       lastAlpha.path=charpath(y.lastAlpha);
       lastBeta1.path=charpath(y.lastBeta1);
       lastBeta2.path=charpath(y.lastBeta2);
       
       
       save([pathname4,filename2],'postAlpha','postBeta1','postBeta2','postTheta','postLabels');
       save([lastPathname1,filename2],'lastAlpha','lastBeta1','lastBeta2','lastTheta','lastLabels');


    end

end
