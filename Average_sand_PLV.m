pathname1='E:\脑电数据集\分效价唤醒度 PLV矩阵\';
 pathname3='E:\脑电数据集\不分波段-PLV矩阵\';

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
      
           %HAHV
           HAHV.PLV1 = (x.Alpha.HAHV.PLV1 + x.Beta1.HAHV.PLV1 + x.Beta2.HAHV.PLV1 + x.Theta.HAHV.PLV1)/4;
           HAHV.PLV2 = (x.Alpha.HAHV.PLV2 + x.Beta1.HAHV.PLV2 + x.Beta2.HAHV.PLV2 + x.Theta.HAHV.PLV2)/4;   
             %HALV
           HALV.PLV1 = (x.Alpha.HALV.PLV1 + x.Beta1.HALV.PLV1 + x.Beta2.HALV.PLV1 + x.Theta.HALV.PLV1)/4;
           HALV.PLV2 = (x.Alpha.HALV.PLV2 + x.Beta1.HALV.PLV2 + x.Beta2.HALV.PLV2 + x.Theta.HALV.PLV2)/4;   
             %LAHV
           LAHV.PLV1 = (x.Alpha.LAHV.PLV1 + x.Beta1.LAHV.PLV1 + x.Beta2.LAHV.PLV1 + x.Theta.LAHV.PLV1)/4;
           LAHV.PLV2 = (x.Alpha.LAHV.PLV2 + x.Beta1.LAHV.PLV2 + x.Beta2.LAHV.PLV2 + x.Theta.LAHV.PLV2)/4;   
             %LALV
           LALV.PLV1 = (x.Alpha.LALV.PLV1 + x.Beta1.LALV.PLV1 + x.Beta2.LALV.PLV1 + x.Theta.LALV.PLV1)/4;
           LALV.PLV2 = (x.Alpha.LALV.PLV2 + x.Beta1.LALV.PLV2 + x.Beta2.LALV.PLV2 + x.Theta.LALV.PLV2)/4;   
              
 
   save([pathname4,filename2],'HAHV','HALV','LAHV','LALV','labels');
       end
 end

 