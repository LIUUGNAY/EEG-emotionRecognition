
%给效价和唤醒度加标签，>5为2，<=5为1
%并将属性和标签拼成数组
%存到“标签分类 ”

pathname1='E:\脑电数据集\分网络属性特征值\';
pathname3='E:\脑电数据集\四种标签分类\';
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
       mkdir(pathname4,filename3);
       pathname5=[pathname2,filename3];   %'E:\脑电数据集\网络属性特征值\s01\s01-1'
       pathname6=[pathname4,filename3];    %'E:\脑电数据集\标签分类\s01\s01-1'
       
       for i=1:20
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
       
       xTheta.HAHV.PLV1=[x.Theta.HAHV.PLV1.clustering x.Theta.HAHV.PLV1.assortativity x.Theta.HAHV.PLV1.globalefficiency x.Theta.HAHV.PLV1.localefficiency x.Theta.HAHV.PLV1.path x.Theta.HAHV.PLV1.modedegree x.Theta.HAHV.PLV1.betweenness];
       xAlpha.HAHV.PLV1=[x.Alpha.HAHV.PLV1.clustering x.Alpha.HAHV.PLV1.assortativity x.Alpha.HAHV.PLV1.globalefficiency x.Alpha.HAHV.PLV1.localefficiency x.Alpha.HAHV.PLV1.path x.Alpha.HAHV.PLV1.modedegree x.Alpha.HAHV.PLV1.betweenness];
       xBeta1.HAHV.PLV1=[x.Beta1.HAHV.PLV1.clustering x.Beta1.HAHV.PLV1.assortativity x.Beta1.HAHV.PLV1.globalefficiency x.Beta1.HAHV.PLV1.localefficiency x.Beta1.HAHV.PLV1.path x.Beta1.HAHV.PLV1.modedegree x.Beta1.HAHV.PLV1.betweenness];
       xBeta2.HAHV.PLV1=[x.Beta2.HAHV.PLV1.clustering x.Beta2.HAHV.PLV1.assortativity x.Beta2.HAHV.PLV1.globalefficiency x.Beta2.HAHV.PLV1.localefficiency x.Beta2.HAHV.PLV1.path x.Beta2.HAHV.PLV1.modedegree x.Beta2.HAHV.PLV1.betweenness];
       
       xTheta.HALV.PLV1=[x.Theta.HALV.PLV1.clustering x.Theta.HALV.PLV1.assortativity x.Theta.HALV.PLV1.globalefficiency x.Theta.HALV.PLV1.localefficiency x.Theta.HALV.PLV1.path x.Theta.HALV.PLV1.modedegree x.Theta.HALV.PLV1.betweenness];
       xAlpha.HALV.PLV1=[x.Alpha.HALV.PLV1.clustering x.Alpha.HALV.PLV1.assortativity x.Alpha.HALV.PLV1.globalefficiency x.Alpha.HALV.PLV1.localefficiency x.Alpha.HALV.PLV1.path x.Alpha.HALV.PLV1.modedegree x.Alpha.HALV.PLV1.betweenness];
       xBeta1.HALV.PLV1=[x.Beta1.HALV.PLV1.clustering x.Beta1.HALV.PLV1.assortativity x.Beta1.HALV.PLV1.globalefficiency x.Beta1.HALV.PLV1.localefficiency x.Beta1.HALV.PLV1.path x.Beta1.HALV.PLV1.modedegree x.Beta1.HALV.PLV1.betweenness];
       xBeta2.HALV.PLV1=[x.Beta2.HALV.PLV1.clustering x.Beta2.HALV.PLV1.assortativity x.Beta2.HALV.PLV1.globalefficiency x.Beta2.HALV.PLV1.localefficiency x.Beta2.HALV.PLV1.path x.Beta2.HALV.PLV1.modedegree x.Beta2.HALV.PLV1.betweenness];
       
       xTheta.LAHV.PLV1=[x.Theta.LAHV.PLV1.clustering x.Theta.LAHV.PLV1.assortativity x.Theta.LAHV.PLV1.globalefficiency x.Theta.LAHV.PLV1.localefficiency x.Theta.LAHV.PLV1.path x.Theta.LAHV.PLV1.modedegree x.Theta.LAHV.PLV1.betweenness];
       xAlpha.LAHV.PLV1=[x.Alpha.LAHV.PLV1.clustering x.Alpha.LAHV.PLV1.assortativity x.Alpha.LAHV.PLV1.globalefficiency x.Alpha.LAHV.PLV1.localefficiency x.Alpha.LAHV.PLV1.path x.Alpha.LAHV.PLV1.modedegree x.Alpha.LAHV.PLV1.betweenness];
       xBeta1.LAHV.PLV1=[x.Beta1.LAHV.PLV1.clustering x.Beta1.LAHV.PLV1.assortativity x.Beta1.LAHV.PLV1.globalefficiency x.Beta1.LAHV.PLV1.localefficiency x.Beta1.LAHV.PLV1.path x.Beta1.LAHV.PLV1.modedegree x.Beta1.LAHV.PLV1.betweenness];
       xBeta2.LAHV.PLV1=[x.Beta2.LAHV.PLV1.clustering x.Beta2.LAHV.PLV1.assortativity x.Beta2.LAHV.PLV1.globalefficiency x.Beta2.LAHV.PLV1.localefficiency x.Beta2.LAHV.PLV1.path x.Beta2.LAHV.PLV1.modedegree x.Beta2.LAHV.PLV1.betweenness];
      
       xTheta.LALV.PLV1=[x.Theta.LALV.PLV1.clustering x.Theta.LALV.PLV1.assortativity x.Theta.LALV.PLV1.globalefficiency x.Theta.LALV.PLV1.localefficiency x.Theta.LALV.PLV1.path x.Theta.LALV.PLV1.modedegree x.Theta.LALV.PLV1.betweenness];
       xAlpha.LALV.PLV1=[x.Alpha.LALV.PLV1.clustering x.Alpha.LALV.PLV1.assortativity x.Alpha.LALV.PLV1.globalefficiency x.Alpha.LALV.PLV1.localefficiency x.Alpha.LALV.PLV1.path x.Alpha.LALV.PLV1.modedegree x.Alpha.LALV.PLV1.betweenness];
       xBeta1.LALV.PLV1=[x.Beta1.LALV.PLV1.clustering x.Beta1.LALV.PLV1.assortativity x.Beta1.LALV.PLV1.globalefficiency x.Beta1.LALV.PLV1.localefficiency x.Beta1.LALV.PLV1.path x.Beta1.LALV.PLV1.modedegree x.Beta1.LALV.PLV1.betweenness];
       xBeta2.LALV.PLV1=[x.Beta2.LALV.PLV1.clustering x.Beta2.LALV.PLV1.assortativity x.Beta2.LALV.PLV1.globalefficiency x.Beta2.LALV.PLV1.localefficiency x.Beta2.LALV.PLV1.path x.Beta2.LALV.PLV1.modedegree x.Beta2.LALV.PLV1.betweenness];
       

       Theta.HAHV.PLV1.val=[xTheta.HAHV.PLV1 labelsvalence];
       Alpha.HAHV.PLV1.val=[xAlpha.HAHV.PLV1 labelsvalence];
       Beta1.HAHV.PLV1.val=[xBeta1.HAHV.PLV1 labelsvalence];
       Beta2.HAHV.PLV1.val=[xBeta2.HAHV.PLV1 labelsvalence];
       Theta.HAHV.PLV1.aro=[xTheta.HAHV.PLV1 labelsarousal];
       Alpha.HAHV.PLV1.aro=[xAlpha.HAHV.PLV1 labelsarousal];
       Beta1.HAHV.PLV1.aro=[xBeta1.HAHV.PLV1 labelsarousal];
       Beta2.HAHV.PLV1.aro=[xBeta2.HAHV.PLV1 labelsarousal];
       
       Theta.HALV.PLV1.val=[xTheta.HALV.PLV1 labelsvalence];
       Alpha.HALV.PLV1.val=[xAlpha.HALV.PLV1 labelsvalence];
       Beta1.HALV.PLV1.val=[xBeta1.HALV.PLV1 labelsvalence];
       Beta2.HALV.PLV1.val=[xBeta2.HALV.PLV1 labelsvalence]; 
       Theta.HALV.PLV1.aro=[xTheta.HALV.PLV1 labelsarousal];
       Alpha.HALV.PLV1.aro=[xAlpha.HALV.PLV1 labelsarousal];
       Beta1.HALV.PLV1.aro=[xBeta1.HALV.PLV1 labelsarousal];
       Beta2.HALV.PLV1.aro=[xBeta2.HALV.PLV1 labelsarousal];
       
       Theta.LAHV.PLV1.val=[xTheta.LAHV.PLV1 labelsvalence];
       Alpha.LAHV.PLV1.val=[xAlpha.LAHV.PLV1 labelsvalence];
       Beta1.LAHV.PLV1.val=[xBeta1.LAHV.PLV1 labelsvalence];
       Beta2.LAHV.PLV1.val=[xBeta2.LAHV.PLV1 labelsvalence];
      Theta.LAHV.PLV1.aro=[xTheta.LAHV.PLV1 labelsarousal];
       Alpha.LAHV.PLV1.aro=[xAlpha.LAHV.PLV1 labelsarousal];
       Beta1.LAHV.PLV1.aro=[xBeta1.LAHV.PLV1 labelsarousal];
       Beta2.LAHV.PLV1.aro=[xBeta2.LAHV.PLV1 labelsarousal];
       
       
       Theta.LALV.PLV1.aro=[xTheta.LALV.PLV1 labelsarousal];
       Alpha.LALV.PLV1.aro=[xAlpha.LALV.PLV1 labelsarousal];
       Beta1.LALV.PLV1.aro=[xBeta1.LALV.PLV1 labelsarousal];
       Beta2.LALV.PLV1.aro=[xBeta2.LALV.PLV1 labelsarousal];
       Theta.LALV.PLV1.val=[xTheta.LALV.PLV1 labelsvalence];
       Alpha.LALV.PLV1.val=[xAlpha.LALV.PLV1 labelsvalence];
       Beta1.LALV.PLV1.val=[xBeta1.LALV.PLV1 labelsvalence];
       Beta2.LALV.PLV1.val=[xBeta2.LALV.PLV1 labelsvalence];
       
       
        xTheta.HAHV.PLV2=[x.Theta.HAHV.PLV2.clustering x.Theta.HAHV.PLV2.assortativity x.Theta.HAHV.PLV2.globalefficiency x.Theta.HAHV.PLV2.localefficiency x.Theta.HAHV.PLV2.path x.Theta.HAHV.PLV2.modedegree x.Theta.HAHV.PLV2.betweenness];
       xAlpha.HAHV.PLV2=[x.Alpha.HAHV.PLV2.clustering x.Alpha.HAHV.PLV2.assortativity x.Alpha.HAHV.PLV2.globalefficiency x.Alpha.HAHV.PLV2.localefficiency x.Alpha.HAHV.PLV2.path x.Alpha.HAHV.PLV2.modedegree x.Alpha.HAHV.PLV2.betweenness];
       xBeta1.HAHV.PLV2=[x.Beta1.HAHV.PLV2.clustering x.Beta1.HAHV.PLV2.assortativity x.Beta1.HAHV.PLV2.globalefficiency x.Beta1.HAHV.PLV2.localefficiency x.Beta1.HAHV.PLV2.path x.Beta1.HAHV.PLV2.modedegree x.Beta1.HAHV.PLV2.betweenness];
       xBeta2.HAHV.PLV2=[x.Beta2.HAHV.PLV2.clustering x.Beta2.HAHV.PLV2.assortativity x.Beta2.HAHV.PLV2.globalefficiency x.Beta2.HAHV.PLV2.localefficiency x.Beta2.HAHV.PLV2.path x.Beta2.HAHV.PLV2.modedegree x.Beta2.HAHV.PLV2.betweenness];
       
       xTheta.HALV.PLV2=[x.Theta.HALV.PLV2.clustering x.Theta.HALV.PLV2.assortativity x.Theta.HALV.PLV2.globalefficiency x.Theta.HALV.PLV2.localefficiency x.Theta.HALV.PLV2.path x.Theta.HALV.PLV2.modedegree x.Theta.HALV.PLV2.betweenness];
       xAlpha.HALV.PLV2=[x.Alpha.HALV.PLV2.clustering x.Alpha.HALV.PLV2.assortativity x.Alpha.HALV.PLV2.globalefficiency x.Alpha.HALV.PLV2.localefficiency x.Alpha.HALV.PLV2.path x.Alpha.HALV.PLV2.modedegree x.Alpha.HALV.PLV2.betweenness];
       xBeta1.HALV.PLV2=[x.Beta1.HALV.PLV2.clustering x.Beta1.HALV.PLV2.assortativity x.Beta1.HALV.PLV2.globalefficiency x.Beta1.HALV.PLV2.localefficiency x.Beta1.HALV.PLV2.path x.Beta1.HALV.PLV2.modedegree x.Beta1.HALV.PLV2.betweenness];
       xBeta2.HALV.PLV2=[x.Beta2.HALV.PLV2.clustering x.Beta2.HALV.PLV2.assortativity x.Beta2.HALV.PLV2.globalefficiency x.Beta2.HALV.PLV2.localefficiency x.Beta2.HALV.PLV2.path x.Beta2.HALV.PLV2.modedegree x.Beta2.HALV.PLV2.betweenness];
     
       xTheta.LAHV.PLV2=[x.Theta.LAHV.PLV2.clustering x.Theta.LAHV.PLV2.assortativity x.Theta.LAHV.PLV2.globalefficiency x.Theta.LAHV.PLV2.localefficiency x.Theta.LAHV.PLV2.path x.Theta.LAHV.PLV2.modedegree x.Theta.LAHV.PLV2.betweenness];
       xAlpha.LAHV.PLV2=[x.Alpha.LAHV.PLV2.clustering x.Alpha.LAHV.PLV2.assortativity x.Alpha.LAHV.PLV2.globalefficiency x.Alpha.LAHV.PLV2.localefficiency x.Alpha.LAHV.PLV2.path x.Alpha.LAHV.PLV2.modedegree x.Alpha.LAHV.PLV2.betweenness];
       xBeta1.LAHV.PLV2=[x.Beta1.LAHV.PLV2.clustering x.Beta1.LAHV.PLV2.assortativity x.Beta1.LAHV.PLV2.globalefficiency x.Beta1.LAHV.PLV2.localefficiency x.Beta1.LAHV.PLV2.path x.Beta1.LAHV.PLV2.modedegree x.Beta1.LAHV.PLV2.betweenness];
       xBeta2.LAHV.PLV2=[x.Beta2.LAHV.PLV2.clustering x.Beta2.LAHV.PLV2.assortativity x.Beta2.LAHV.PLV2.globalefficiency x.Beta2.LAHV.PLV2.localefficiency x.Beta2.LAHV.PLV2.path x.Beta2.LAHV.PLV2.modedegree x.Beta2.LAHV.PLV2.betweenness];
 
       xTheta.LALV.PLV2=[x.Theta.LALV.PLV2.clustering x.Theta.LALV.PLV2.assortativity x.Theta.LALV.PLV2.globalefficiency x.Theta.LALV.PLV2.localefficiency x.Theta.LALV.PLV2.path x.Theta.LALV.PLV2.modedegree x.Theta.LALV.PLV2.betweenness];
       xAlpha.LALV.PLV2=[x.Alpha.LALV.PLV2.clustering x.Alpha.LALV.PLV2.assortativity x.Alpha.LALV.PLV2.globalefficiency x.Alpha.LALV.PLV2.localefficiency x.Alpha.LALV.PLV2.path x.Alpha.LALV.PLV2.modedegree x.Alpha.LALV.PLV2.betweenness];
       xBeta1.LALV.PLV2=[x.Beta1.LALV.PLV2.clustering x.Beta1.LALV.PLV2.assortativity x.Beta1.LALV.PLV2.globalefficiency x.Beta1.LALV.PLV2.localefficiency x.Beta1.LALV.PLV2.path x.Beta1.LALV.PLV2.modedegree x.Beta1.LALV.PLV2.betweenness];
       xBeta2.LALV.PLV2=[x.Beta2.LALV.PLV2.clustering x.Beta2.LALV.PLV2.assortativity x.Beta2.LALV.PLV2.globalefficiency x.Beta2.LALV.PLV2.localefficiency x.Beta2.LALV.PLV2.path x.Beta2.LALV.PLV2.modedegree x.Beta2.LALV.PLV2.betweenness];
 
       Theta.HAHV.PLV2.val=[xTheta.HAHV.PLV2 labelsvalence];
       Alpha.HAHV.PLV2.val=[xAlpha.HAHV.PLV2 labelsvalence];
       Beta1.HAHV.PLV2.val=[xBeta1.HAHV.PLV2 labelsvalence];
       Beta2.HAHV.PLV2.val=[xBeta2.HAHV.PLV2 labelsvalence];
       Theta.HAHV.PLV2.aro=[xTheta.HAHV.PLV2 labelsarousal];
       Alpha.HAHV.PLV2.aro=[xAlpha.HAHV.PLV2 labelsarousal];
       Beta1.HAHV.PLV2.aro=[xBeta1.HAHV.PLV2 labelsarousal];
       Beta2.HAHV.PLV2.aro=[xBeta2.HAHV.PLV2 labelsarousal];
      
       Theta.HALV.PLV2.val=[xTheta.HALV.PLV2 labelsvalence];
       Alpha.HALV.PLV2.val=[xAlpha.HALV.PLV2 labelsvalence];
       Beta1.HALV.PLV2.val=[xBeta1.HALV.PLV2 labelsvalence];
       Beta2.HALV.PLV2.val=[xBeta2.HALV.PLV2 labelsvalence]; 
       Theta.HALV.PLV2.aro=[xTheta.HALV.PLV2 labelsarousal];
       Alpha.HALV.PLV2.aro=[xAlpha.HALV.PLV2 labelsarousal];
       Beta1.HALV.PLV2.aro=[xBeta1.HALV.PLV2 labelsarousal];
       Beta2.HALV.PLV2.aro=[xBeta2.HALV.PLV2 labelsarousal];
       
       Theta.LAHV.PLV2.val=[xTheta.LAHV.PLV2 labelsvalence];
       Alpha.LAHV.PLV2.val=[xAlpha.LAHV.PLV2 labelsvalence];
       Beta1.LAHV.PLV2.val=[xBeta1.LAHV.PLV2 labelsvalence];
       Beta2.LAHV.PLV2.val=[xBeta2.LAHV.PLV2 labelsvalence];
       Theta.LAHV.PLV2.aro=[xTheta.LAHV.PLV2 labelsarousal];
       Alpha.LAHV.PLV2.aro=[xAlpha.LAHV.PLV2 labelsarousal];
       Beta1.LAHV.PLV2.aro=[xBeta1.LAHV.PLV2  labelsarousal];
       Beta2.LAHV.PLV2.aro=[xBeta2.LAHV.PLV2 labelsarousal];
       
       
       Theta.LALV.PLV2.aro=[xTheta.LALV.PLV2 labelsarousal];
       Alpha.LALV.PLV2.aro=[xAlpha.LALV.PLV2 labelsarousal];
       Beta1.LALV.PLV2.aro=[xBeta1.LALV.PLV2 labelsarousal];
       Beta2.LALV.PLV2.aro=[xBeta2.LALV.PLV2 labelsarousal];
       Theta.LALV.PLV2.val=[xTheta.LALV.PLV2 labelsvalence];
       Alpha.LALV.PLV2.val=[xAlpha.LALV.PLV2 labelsvalence];
       Beta1.LALV.PLV2.val=[xBeta1.LALV.PLV2 labelsvalence];
       Beta2.LALV.PLV2.val=[xBeta2.LALV.PLV2 labelsvalence];
%        
%     %   for x = 1:7
%            %HAHV PLV1
%            Theta.HAHV.PLV1.aro(x,1) = xxTheta.HAHV.PLV1.aro(x);
%            Theta.HAHV.PLV1.aro(x,2)  = xxTheta.HAHV.PLV1.aro(8);     
%            Alpha.HAHV.PLV1.aro(x,1) = xxTheta.HAHV.PLV1.aro(x);
%            Alpha.HAHV.PLV1.aro(x,2)  = xxAlpha.HAHV.PLV1.aro(8);
%           Beta1.HAHV.PLV1.aro(x,1) = xxBeta1.HAHV.PLV1.aro(x);
%            Beta1.HAHV.PLV1.aro(x,2)  = xxBeta1.HAHV.PLV1.aro(8);
%            Beta2.HAHV.PLV1.aro(x,1) = xxBeta2.HAHV.PLV1.aro(x);
%            Beta2.HAHV.PLV1.aro(x,2)  = xxBeta2.HAHV.PLV1.aro(8);
%            
%            Theta.HAHV.PLV1.val(x,1) = xxTheta.HAHV.PLV1.val(x);
%            Theta.HAHV.PLV1.val(x,2)  = xxTheta.HAHV.PLV1.val(8);     
%            Alpha.HAHV.PLV1.val(x,1) = xxTheta.HAHV.PLV1.val(x);
%            Alpha.HAHV.PLV1.val(x,2)  = xxAlpha.HAHV.PLV1.val(8);
%           Beta1.HAHV.PLV1.val(x,1) = xxBeta1.HAHV.PLV1.val(x);
%            Beta1.HAHV.PLV1.val(x,2)  = xxBeta1.HAHV.PLV1.val(8);
%            Beta2.HAHV.PLV1.val(x,1) = xxBeta2.HAHV.PLV1.val(x);
%            Beta2.HAHV.PLV1.val(x,2)  = xxBeta2.HAHV.PLV1.val(8);
%            %HAHV PLV2
%            Theta.HAHV.PLV2.aro(x,1) = xxTheta.HAHV.PLV2.aro(x);
%            Theta.HAHV.PLV2.aro(x,2)  = xxTheta.HAHV.PLV2.aro(8);     
%            Alpha.HAHV.PLV2.aro(x,1) = xxTheta.HAHV.PLV2.aro(x);
%            Alpha.HAHV.PLV2.aro(x,2)  = xxAlpha.HAHV.PLV2.aro(8);
%           Beta1.HAHV.PLV2.aro(x,1) = xxBeta1.HAHV.PLV2.aro(x);
%            Beta1.HAHV.PLV2.aro(x,2)  = xxBeta1.HAHV.PLV2.aro(8);
%            Beta2.HAHV.PLV2.aro(x,1) = xxBeta2.HAHV.PLV2.aro(x);
%            Beta2.HAHV.PLV2.aro(x,2)  = xxBeta2.HAHV.PLV2.aro(8);
%            
%            Theta.HAHV.PLV2.val(x,1) = xxTheta.HAHV.PLV2.val(x);
%            Theta.HAHV.PLV2.val(x,2)  = xxTheta.HAHV.PLV2.val(8);     
%            Alpha.HAHV.PLV2.val(x,1) = xxTheta.HAHV.PLV2.val(x);
%            Alpha.HAHV.PLV2.val(x,2)  = xxAlpha.HAHV.PLV2.val(8);
%           Beta1.HAHV.PLV2.val(x,1) = xxBeta1.HAHV.PLV2.val(x);
%            Beta1.HAHV.PLV2.val(x,2)  = xxBeta1.HAHV.PLV2.val(8);
%            Beta2.HAHV.PLV2.val(x,1) = xxBeta2.HAHV.PLV2.val(x);
%            Beta2.HAHV.PLV2.val(x,2)  = xxBeta2.HAHV.PLV2.val(8);
%            
%            
%            
%            
%            
%            %HALV PLV1
%            Theta.HALV.PLV1.aro(x,1) = xxTheta.HALV.PLV1.aro(x);
%            Theta.HALV.PLV1.aro(x,2)  = xxTheta.HALV.PLV1.aro(8);     
%            Alpha.HALV.PLV1.aro(x,1) = xxTheta.HALV.PLV1.aro(x);
%            Alpha.HALV.PLV1.aro(x,2)  = xxAlpha.HALV.PLV1.aro(8);
%           Beta1.HALV.PLV1.aro(x,1) = xxBeta1.HALV.PLV1.aro(x);
%            Beta1.HALV.PLV1.aro(x,2)  = xxBeta1.HALV.PLV1.aro(8);
%            Beta2.HALV.PLV1.aro(x,1) = xxBeta2.HALV.PLV1.aro(x);
%            Beta2.HALV.PLV1.aro(x,2)  = xxBeta2.HALV.PLV1.aro(8);
%            
%            Theta.HALV.PLV1.val(x,1) = xxTheta.HALV.PLV1.val(x);
%            Theta.HALV.PLV1.val(x,2)  = xxTheta.HALV.PLV1.val(8);     
%            Alpha.HALV.PLV1.val(x,1) = xxTheta.HALV.PLV1.val(x);
%            Alpha.HALV.PLV1.val(x,2)  = xxAlpha.HALV.PLV1.val(8);
%           Beta1.HALV.PLV1.val(x,1) = xxBeta1.HALV.PLV1.val(x);
%            Beta1.HALV.PLV1.val(x,2)  = xxBeta1.HALV.PLV1.val(8);
%            Beta2.HALV.PLV1.val(x,1) = xxBeta2.HALV.PLV1.val(x);
%            Beta2.HALV.PLV1.val(x,2)  = xxBeta2.HALV.PLV1.val(8);
%            
%            %HALV PLV2
%            Theta.HALV.PLV2.aro(x,1) = xxTheta.HALV.PLV2.aro(x);
%            Theta.HALV.PLV2.aro(x,2)  = xxTheta.HALV.PLV2.aro(8);     
%            Alpha.HALV.PLV2.aro(x,1) = xxTheta.HALV.PLV2.aro(x);
%            Alpha.HALV.PLV2.aro(x,2)  = xxAlpha.HALV.PLV2.aro(8);
%           Beta1.HALV.PLV2.aro(x,1) = xxBeta1.HALV.PLV2.aro(x);
%            Beta1.HALV.PLV2.aro(x,2)  = xxBeta1.HALV.PLV2.aro(8);
%            Beta2.HALV.PLV2.aro(x,1) = xxBeta2.HALV.PLV2.aro(x);
%            Beta2.HALV.PLV2.aro(x,2)  = xxBeta2.HALV.PLV2.aro(8);
%            
%            Theta.HALV.PLV2.val(x,1) = xxTheta.HALV.PLV2.val(x);
%            Theta.HALV.PLV2.val(x,2)  = xxTheta.HALV.PLV2.val(8);     
%            Alpha.HALV.PLV2.val(x,1) = xxTheta.HALV.PLV2.val(x);
%            Alpha.HALV.PLV2.val(x,2)  = xxAlpha.HALV.PLV2.val(8);
%           Beta1.HALV.PLV2.val(x,1) = xxBeta1.HALV.PLV2.val(x);
%            Beta1.HALV.PLV2.val(x,2)  = xxBeta1.HALV.PLV2.val(8);
%            Beta2.HALV.PLV2.val(x,1) = xxBeta2.HALV.PLV2.val(x);
%            Beta2.HALV.PLV2.val(x,2)  = xxBeta2.HALV.PLV2.val(8);
%            
%            
%            
%              %LAHV PLV1
%            Theta.LAHV.PLV1.aro(x,1) = xxTheta.LAHV.PLV1.aro(x);
%            Theta.LAHV.PLV1.aro(x,2)  = xxTheta.LAHV.PLV1.aro(8);     
%            Alpha.LAHV.PLV1.aro(x,1) = xxTheta.LAHV.PLV1.aro(x);
%            Alpha.LAHV.PLV1.aro(x,2)  = xxAlpha.LAHV.PLV1.aro(8);
%           Beta1.LAHV.PLV1.aro(x,1) = xxBeta1.LAHV.PLV1.aro(x);
%            Beta1.LAHV.PLV1.aro(x,2)  = xxBeta1.LAHV.PLV1.aro(8);
%            Beta2.LAHV.PLV1.aro(x,1) = xxBeta2.LAHV.PLV1.aro(x);
%            Beta2.LAHV.PLV1.aro(x,2)  = xxBeta2.LAHV.PLV1.aro(8);
%            
%            Theta.LAHV.PLV1.val(x,1) = xxTheta.LAHV.PLV1.val(x);
%            Theta.LAHV.PLV1.val(x,2)  = xxTheta.LAHV.PLV1.val(8);     
%            Alpha.LAHV.PLV1.val(x,1) = xxTheta.LAHV.PLV1.val(x);
%            Alpha.LAHV.PLV1.val(x,2)  = xxAlpha.LAHV.PLV1.val(8);
%           Beta1.LAHV.PLV1.val(x,1) = xxBeta1.LAHV.PLV1.val(x);
%            Beta1.LAHV.PLV1.val(x,2)  = xxBeta1.LAHV.PLV1.val(8);
%            Beta2.LAHV.PLV1.val(x,1) = xxBeta2.LAHV.PLV1.val(x);
%            Beta2.LAHV.PLV1.val(x,2)  = xxBeta2.LAHV.PLV1.val(8);
%            %LAHV PLV2
%            Theta.LAHV.PLV2.aro(x,1) = xxTheta.LAHV.PLV2.aro(x);
%            Theta.LAHV.PLV2.aro(x,2)  = xxTheta.LAHV.PLV2.aro(8);     
%            Alpha.LAHV.PLV2.aro(x,1) = xxTheta.LAHV.PLV2.aro(x);
%            Alpha.LAHV.PLV2.aro(x,2)  = xxAlpha.LAHV.PLV2.aro(8);
%           Beta1.LAHV.PLV2.aro(x,1) = xxBeta1.LAHV.PLV2.aro(x);
%            Beta1.LAHV.PLV2.aro(x,2)  = xxBeta1.LAHV.PLV2.aro(8);
%            Beta2.LAHV.PLV2.aro(x,1) = xxBeta2.LAHV.PLV2.aro(x);
%            Beta2.LAHV.PLV2.aro(x,2)  = xxBeta2.LAHV.PLV2.aro(8);
%            
%            Theta.LAHV.PLV2.val(x,1) = xxTheta.LAHV.PLV2.val(x);
%            Theta.LAHV.PLV2.val(x,2)  = xxTheta.LAHV.PLV2.val(8);     
%            Alpha.LAHV.PLV2.val(x,1) = xxTheta.LAHV.PLV2.val(x);
%            Alpha.LAHV.PLV2.val(x,2)  = xxAlpha.LAHV.PLV2.val(8);
%           Beta1.LAHV.PLV2.val(x,1) = xxBeta1.LAHV.PLV2.val(x);
%            Beta1.LAHV.PLV2.val(x,2)  = xxBeta1.LAHV.PLV2.val(8);
%            Beta2.LAHV.PLV2.val(x,1) = xxBeta2.LAHV.PLV2.val(x);
%            Beta2.LAHV.PLV2.val(x,2)  = xxBeta2.LAHV.PLV2.val(8);
%           
%            
%              %LALV PLV1
%            Theta.LALV.PLV1.aro(x,1) = xxTheta.LAHV.PLV1.aro(x);
%            Theta.LALV.PLV1.aro(x,2)  = xxTheta.LAHV.PLV1.aro(8);     
%            Alpha.LALV.PLV1.aro(x,1) = xxTheta.LAHV.PLV1.aro(x);
%            Alpha.LALV.PLV1.aro(x,2)  = xxAlpha.LAHV.PLV1.aro(8);
%           Beta1.LALV.PLV1.aro(x,1) = xxBeta1.LAHV.PLV1.aro(x);
%            Beta1.LALV.PLV1.aro(x,2)  = xxBeta1.LAHV.PLV1.aro(8);
%            Beta2.LALV.PLV1.aro(x,1) = xxBeta2.LAHV.PLV1.aro(x);
%            Beta2.LALV.PLV1.aro(x,2)  = xxBeta2.LAHV.PLV1.aro(8);
%            
%            Theta.LALV.PLV1.val(x,1) = xxTheta.LAHV.PLV1.val(x);
%            Theta.LALV.PLV1.val(x,2)  = xxTheta.LAHV.PLV1.val(8);     
%            Alpha.LALV.PLV1.val(x,1) = xxTheta.LAHV.PLV1.val(x);
%            Alpha.LALV.PLV1.val(x,2)  = xxAlpha.LAHV.PLV1.val(8);
%           Beta1.LALV.PLV1.val(x,1) = xxBeta1.LAHV.PLV1.val(x);
%            Beta1.LALV.PLV1.val(x,2)  = xxBeta1.LAHV.PLV1.val(8);
%            Beta2.LALV.PLV1.val(x,1) = xxBeta2.LAHV.PLV1.val(x);
%            Beta2.LALV.PLV1.val(x,2)  = xxBeta2.LAHV.PLV1.val(8);
%            %LAV PLV2
%            Theta.LALV.PLV2.aro(x,1) = xxTheta.LALV.PLV2.aro(x);
%            Theta.LALV.PLV2.aro(x,2)  = xxTheta.LALV.PLV2.aro(8);     
%            Alpha.LALV.PLV2.aro(x,1) = xxTheta.LALV.PLV2.aro(x);
%            Alpha.LALV.PLV2.aro(x,2)  = xxAlpha.LALV.PLV2.aro(8);
%           Beta1.LALV.PLV2.aro(x,1) = xxBeta1.LALV.PLV2.aro(x);
%            Beta1.LALV.PLV2.aro(x,2)  = xxBeta1.LALV.PLV2.aro(8);
%            Beta2.LALV.PLV2.aro(x,1) = xxBeta2.LALV.PLV2.aro(x);
%            Beta2.LALV.PLV2.aro(x,2)  = xxBeta2.LALV.PLV2.aro(8);
%            
%            Theta.LALV.PLV2.val(x,1) = xxTheta.LALV.PLV2.val(x);
%            Theta.LALV.PLV2.val(x,2)  = xxTheta.LALV.PLV2.val(8);     
%            Alpha.LALV.PLV2.val(x,1) = xxTheta.LALV.PLV2.val(x);
%            Alpha.LALV.PLV2.val(x,2)  = xxAlpha.LALV.PLV2.val(8);
%           Beta1.LALV.PLV2.val(x,1) = xxBeta1.LALV.PLV2.val(x);
%            Beta1.LALV.PLV2.val(x,2)  = xxBeta1.LALV.PLV2.val(8);
%            Beta2.LALV.PLV2.val(x,1) = xxBeta2.LALV.PLV2.val(x);
%            Beta2.LALV.PLV2.val(x,2)  = xxBeta2.LALV.PLV2.val(8);
%        end
   
       save([pathname6,filename4],'Theta','Alpha','Beta1','Beta2','labels','labelsvalence','labelsarousal');
       end
    end

end