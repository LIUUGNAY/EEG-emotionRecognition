 %Z=load('E:\�Ե����ݼ�\\s01\s01-1.mat');
 pathname1='E:\�Ե����ݼ�\ǰʮ������\';
 lastpathname1='E:\�Ե����ݼ�\��ʮ������\';
 pathname3='E:\�Ե����ݼ�\ǰPLV����\';
 lastpathname2='E:\�Ե����ݼ�\��PLV����\';
 
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
    mkdir(lastpathname2,filename1);%�״�ִ��ʱ��Ҫ�����µ��ļ��У��ٴ�ִ�пɲ���
    %ÿ��40������
    for j=1:40
       if k<10
           filename2=sprintf('s0%d-%d',k,j);
       end
       if k>=10
           filename2=sprintf('s%d-%d',k,j);
       end
       
       x=load([pathname2,filename2]);
       y=load([lastPathname,filename2]);
       postLabels = x.labels;
       lastLabels = y.labels;
      % y1 = y.lastAlpha;
       %y2 = y.lastBeta1;
       %y3 = y.lastBeta2;
       %y4 = y.lastTheta;
       
       %����ǰ��10������ݣ���PLV
   %    n=1280;
   
         %  postAlpha = calculatePLV(x.postAlpha);
          % postBeta1 = calculatePLV(x.postBeta1);
           % postBeta2 = calculatePLV(x.postBeta2);
            %  postTheta = calculatePLV(x.postTheta);
              
           %lastAlpha = calculatePLV(y.lastAlpha);
           %lastBeta1 = calculatePLV(y.lastBeta1);
           %lastBeta2 = calculatePLV(y.lastBeta2);
           %lastTheta = calculatePLV(y.lastTheta);
           
           
           postAlpha = PLV(x.postAlpha);
           postBeta1 = PLV(x.postBeta1);
            postBeta2 = PLV(x.postBeta2);
              postTheta = PLV(x.postTheta);
              
           lastAlpha = PLV(y.lastAlpha);
           lastBeta1 = PLV(y.lastBeta1);
           lastBeta2 = PLV(y.lastBeta2);
           lastTheta = PLV(y.lastTheta);
               
   save([pathname4,filename2],'postAlpha','postBeta1','postBeta2','postTheta','postLabels');
   save([lastPathname1,filename2],'lastAlpha','lastBeta1','lastBeta2','lastTheta','lastLabels');
    end
 end
