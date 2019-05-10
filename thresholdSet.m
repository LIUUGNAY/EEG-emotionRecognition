pathname1='E:\脑电数据集\PLV矩阵\';
 pathname3='E:\脑电数据集\二值化矩阵\';

 for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
    end
    pathname2=[pathname1,filename1];   
    pathname4=[pathname3,filename1]; %二值化矩阵/s01/
    mkdir(pathname3,filename1);%首次执行时需要创建新的文件夹，再次执行可不用
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
       pathname5=[pathname4,filename3];     %二值化矩阵\s01\s01-1
       
       x=load([pathname2,filename2]);  
      labels = x.labels;
        thr = 0.05 ;
       for i=1:20
           filename4=sprintf('%d',i);
        Alpha.PLV1 = f_ThresholdSimple(x.Alpha.PLV1,thr);
           Beta1.PLV1 = f_ThresholdSimple(x.Beta1.PLV1,thr);
            Beta2.PLV1 = f_ThresholdSimple(x.Beta2.PLV1,thr);
              Theta.PLV1 = f_ThresholdSimple(x.Theta.PLV1,thr);
              
              Alpha.PLV2 = f_ThresholdSimple(x.Alpha.PLV2,thr);
           Beta1.PLV2 = f_ThresholdSimple(x.Beta1.PLV2,thr);
            Beta2.PLV2 = f_ThresholdSimple(x.Beta2.PLV2,thr);
              Theta.PLV2 = f_ThresholdSimple(x.Theta.PLV2,thr);    
   save([pathname5,filename4],'Theta','Alpha','Beta1','Beta2','labels');
   thr = thr +0.01;
       end
    end
 end
 