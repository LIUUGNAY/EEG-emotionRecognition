pathname1='E:\�Ե����ݼ�\ǰPLV����\';
 lastpathname1='E:\�Ե����ݼ�\��PLV����\';
 pathname3='E:\�Ե����ݼ�\ǰ��ֵ������\';
 lastpathname2='E:\�Ե����ݼ�\���ֵ������\';
 
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
       
       postLabels = x.postLabels;
       lastLabels = y.lastLabels;
       
        postAlpha = f_ThresholdSimple(x.postAlpha);
           postBeta1 = f_ThresholdSimple(x.postBeta1);
            postBeta2 = f_ThresholdSimple(x.postBeta2);
              postTheta = f_ThresholdSimple(x.postTheta);
              
           lastAlpha = f_ThresholdSimple(y.lastAlpha);
           lastBeta1 = f_ThresholdSimple(y.lastBeta1);
           lastBeta2 =f_ThresholdSimple(y.lastBeta2);
           lastTheta = f_ThresholdSimple(y.lastTheta);
               
   save([pathname4,filename2],'postAlpha','postBeta1','postBeta2','postTheta','postLabels');
   save([lastPathname1,filename2],'lastAlpha','lastBeta1','lastBeta2','lastTheta','lastLabels');
    end
 end
 