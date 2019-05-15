 %Z=load('E:\脑电数据集\\s01\s01-1.mat');
 pathname1='E:\脑电数据集\分时段后数据\';
 pathname3='E:\脑电数据集\分效价唤醒度PLV矩阵\';

 
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
           
           if (x.labels(1) > 5)
               if(x.labels(2) > 5)    %HAHV  高效价高唤醒度
                    Theta.HAHV.PLV1 = PLV(x.Theta.data1);
                    Alpha.HAHV.PLV1 = PLV(x.Alpha.data1);
                    Beta1.HAHV.PLV1 = PLV(x.Beta1.data1);
                    Beta2.HAHV.PLV1 = PLV(x.Beta2.data1);
             
                    Theta.HAHV.PLV2 = PLV(x.Theta.data2); 
                    Alpha.HAHV.PLV2 = PLV(x.Alpha.data2);
                    Beta1.HAHV.PLV2 = PLV(x.Beta1.data2);
                    Beta2.HAHV.PLV2 = PLV(x.Beta2.data2);
               end
                 
               if(x.labels(2) <= 5)  %HALV
                   Theta.HALV.PLV1 = PLV(x.Theta.data1);
                    Alpha.HALV.PLV1 = PLV(x.Alpha.data1);
                    Beta1.HALV.PLV1 = PLV(x.Beta1.data1);
                    Beta2.HALV.PLV1 = PLV(x.Beta2.data1);
             
                    Theta.HALV.PLV2 = PLV(x.Theta.data2); 
                    Alpha.HALV.PLV2 = PLV(x.Alpha.data2);
                    Beta1.HALV.PLV2 = PLV(x.Beta1.data2);
                    Beta2.HALV.PLV2 = PLV(x.Beta2.data2);
               end
                   
           end
           
           if (x.labels(1) <= 5)
               if(x.labels(2) > 5)    %LAHV  低效价高唤醒度
                    Theta.LAHV.PLV1 = PLV(x.Theta.data1);
                    Alpha.LAHV.PLV1 = PLV(x.Alpha.data1);
                    Beta1.LAHV.PLV1 = PLV(x.Beta1.data1);
                    Beta2.LAHV.PLV1 = PLV(x.Beta2.data1);
             
                    Theta.LAHV.PLV2 = PLV(x.Theta.data2); 
                    Alpha.LAHV.PLV2 = PLV(x.Alpha.data2);
                    Beta1.LAHV.PLV2 = PLV(x.Beta1.data2);
                    Beta2.LAHV.PLV2 = PLV(x.Beta2.data2);
               end
                 
               if(x.labels(2) <= 5)  %LALV
                   Theta.LALV.PLV1 = PLV(x.Theta.data1);
                    Alpha.LALV.PLV1 = PLV(x.Alpha.data1);
                    Beta1.LALV.PLV1 = PLV(x.Beta1.data1);
                    Beta2.LALV.PLV1 = PLV(x.Beta2.data1);
             
                    Theta.LALV.PLV2 = PLV(x.Theta.data2); 
                    Alpha.LALV.PLV2 = PLV(x.Alpha.data2);
                    Beta1.LALV.PLV2 = PLV(x.Beta1.data2);
                    Beta2.LALV.PLV2 = PLV(x.Beta2.data2);
               end
                   
           end
           
           
           
           
         
               
   save([pathname4,filename2],'Theta','Alpha','Beta1','Beta2','labels');
    end
 end
