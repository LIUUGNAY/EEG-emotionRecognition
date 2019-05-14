%对“网络属性均值再平均”操作
%给效价和唤醒度加标签，>5为2，<=5为1
%并将属性和标签拼成数组
%存到“标签 ”

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

       xx=load([pathname2,filename2]);  
       labels=xx.labels;
%        Theta=xx.Theta;
%        Alpha=xx.Alpha;
%        Beta1=xx.Beta1;
%        Beta2=xx.Beta2;
       
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

       xxTheta=[xx.Theta.clustering xx.Theta.assortativity xx.Theta.globalefficiency xx.Theta.localefficiency xx.Theta.path xx.Theta.modedegree xx.Theta.betweenness];
       xxAlpha=[xx.Alpha.clustering xx.Alpha.assortativity xx.Alpha.globalefficiency xx.Alpha.localefficiency xx.Alpha.path xx.Alpha.modedegree xx.Alpha.betweenness];
       xxBeta1=[xx.Beta1.clustering xx.Beta1.assortativity xx.Beta1.globalefficiency xx.Beta1.localefficiency xx.Beta1.path xx.Beta1.modedegree xx.Beta1.betweenness];
       xxBeta2=[xx.Beta2.clustering xx.Beta2.assortativity xx.Beta2.globalefficiency xx.Beta2.localefficiency xx.Beta2.path xx.Beta2.modedegree xx.Beta2.betweenness];
       
%        valence=[labelsvalence;labelsvalence;labelsvalence;labelsvalence;labelsvalence;labelsvalence;labelsvalence];
%        arousal=[labelsarousal;labelsarousal;labelsarousal;labelsarousal;labelsarousal;labelsarousal;labelsarousal];
       
%        Theta=[xxTheta valence arousal];
%        Alpha=[xxAlpha valence arousal];
%        Beta1=[xxBeta1 valence arousal];
%        Beta2=[xxBeta2 valence arousal];

       Theta.val=[xxTheta labelsvalence];
       Alpha.val=[xxAlpha labelsvalence];
       Beta1.val=[xxBeta1 labelsvalence];
       Beta2.val=[xxBeta2 labelsvalence];
       
       Theta.aro=[xxTheta labelsarousal];
       Alpha.aro=[xxAlpha labelsarousal];
       Beta1.aro=[xxBeta1 labelsarousal];
       Beta2.aro=[xxBeta2 labelsarousal];
       
       save([pathname4,filename2],'Theta','Alpha','Beta1','Beta2','labels','labelsvalence','labelsarousal');

    end

end

