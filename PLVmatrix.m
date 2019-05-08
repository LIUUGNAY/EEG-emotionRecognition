 %Z=load('E:\脑电数据集\\s01\s01-1.mat');
 pathname1='E:\脑电数据集\分时段后数据\';
 pathname3='E:\脑电数据集\PLV矩阵\';

 
 for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
    end
    pathname2=[pathname1,filename1];

    
    pathname4=[pathname3,filename1];

    
    mkdir(pathname3,filename1);%首次执行时需要创建新的文件夹，再次执行可不用
    %每人40次试验
    for j=1:40
       if k<10
           filename2=sprintf('s0%d-%d',k,j);
       end
       if k>=10
           filename2=sprintf('s%d-%d',k,j);
       end
       
       x=load([pathname2,filename2]);
      labels = x.labels;
      % y1 = y.lastAlpha;
       %y2 = y.lastBeta1;
       %y3 = y.lastBeta2;
       %y4 = y.lastTheta;
       
       %处理前后10秒的数据，算PLV
   %    n=1280;
   
         %  postAlpha = calculatePLV(x.postAlpha);
          % postBeta1 = calculatePLV(x.postBeta1);
           % postBeta2 = calculatePLV(x.postBeta2);
            %  postTheta = calculatePLV(x.postTheta);
              
           %lastAlpha = calculatePLV(y.lastAlpha);
           %lastBeta1 = calculatePLV(y.lastBeta1);
           %lastBeta2 = calculatePLV(y.lastBeta2);
           %lastTheta = calculatePLV(y.lastTheta);
           
           Theta.PLV1 = PLV(x.Theta.data1);
           Alpha.PLV1 = PLV(x.Alpha.data1);
           Beta1.PLV1 = PLV(x.Beta1.data1);
            Beta2.PLV1 = PLV(x.Beta2.data1);
             
               Theta.PLV2 = PLV(x.Theta.data2); 
             Alpha.PLV2 = PLV(x.Alpha.data2);
           Beta1.PLV2 = PLV(x.Beta1.data2);
            Beta2.PLV2 = PLV(x.Beta2.data2);
           
         
               
   save([pathname4,filename2],'Theta','Alpha','Beta1','Beta2','labels');
    end
 end
