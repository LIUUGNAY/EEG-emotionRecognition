
 pathname1='E:\脑电数据集\前十秒数据\';
 lastpathname1='E:\脑电数据集\后十秒数据\';
 pathname3='E:\脑电数据集\前十秒PLV矩阵\';
 lastpathname2='E:\脑电数据集\后十秒PLV矩阵\';
 
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
      % y1 = y.lastAlpha;
       %y2 = y.lastBeta1;
       %y3 = y.lastBeta2;
       %y4 = y.lastTheta;
       
       %处理前后10秒的数据，算PLV
   %    n=1280;
   
           postAlpha = calculatePLV(x.postAlpha);
           postBeta1 = calculatePLV(x.postBeta1);
            postBeta2 = calculatePLV(x.postBeta2);
              postTheta = calculatePLV(x.postTheta);
              
           lastAlpha = calculatePLV(y.lastAlpha);
           lastBeta1 = calculatePLV(y.lastBeta1);
           lastBeta2 = calculatePLV(y.lastBeta2);
           lastTheta = calculatePLV(y.lastTheta);
               
   save([pathname4,filename2],'postAlpha','postBeta1','postBeta2','postTheta');
   save([lastPathname1,filename2],'lastAlpha','lastBeta1','lastBeta2','lastTheta');
    end
 end
