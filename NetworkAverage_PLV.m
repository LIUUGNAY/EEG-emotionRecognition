pathname1='E:\脑电文件夹\PLV矩阵\';
 pathname3='E:\脑电文件夹\PLV矩阵网络均值\';

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
      Theta.HAHV.PLV1 = mean(x.Theta.HAHV.PLV1(:));
      Alpha.HAHV.PLV1 = mean(x.Alpha.HAHV.PLV1(:));
      Beta1.HAHV.PLV1 = mean(x.Beta1.HAHV.PLV1(:));
      Beta2.HAHV.PLV1 = mean(x.Beta2.HAHV.PLV1(:));
      Theta.HAHV.PLV2 = mean(x.Theta.HAHV.PLV2(:));
      Alpha.HAHV.PLV2 = mean(x.Alpha.HAHV.PLV2(:));
      Beta1.HAHV.PLV2 = mean(x.Beta1.HAHV.PLV2(:));
      Beta2.HAHV.PLV2 = mean(x.Beta2.HAHV.PLV2(:));
      
      
      Theta.HALV.PLV1 = mean(x.Theta.HALV.PLV1(:));
      Alpha.HALV.PLV1 = mean(x.Alpha.HALV.PLV1(:));
      Beta1.HALV.PLV1 = mean(x.Beta1.HALV.PLV1(:));
      Beta2.HALV.PLV1 = mean(x.Beta2.HALV.PLV1(:));
       Theta.HALV.PLV2 = mean(x.Theta.HALV.PLV2(:));
      Alpha.HALV.PLV2 = mean(x.Alpha.HALV.PLV2(:));
      Beta1.HALV.PLV2 = mean(x.Beta1.HALV.PLV2(:));
      Beta2.HALV.PLV2 = mean(x.Beta2.HALV.PLV2(:));
      
      
       Theta.LAHV.PLV1 = mean(x.Theta.LAHV.PLV1(:));
      Alpha.LAHV.PLV1 = mean(x.Alpha.LAHV.PLV1(:));
      Beta1.LAHV.PLV1 = mean(x.Beta1.LAHV.PLV1(:));
      Beta2.LAHV.PLV1 = mean(x.Beta2.LAHV.PLV1(:));
      
      Theta.LAHV.PLV2 = mean(x.Theta.LAHV.PLV2(:));
      Alpha.LAHV.PLV2 = mean(x.Alpha.LAHV.PLV2(:));
      Beta1.LAHV.PLV2 = mean(x.Beta1.LAHV.PLV2(:));
      Beta2.LAHV.PLV2 = mean(x.Beta2.LAHV.PLV2(:));
      
      
     
      
      Theta.LALV.PLV1 = mean(x.Theta.LALV.PLV1(:));
      Alpha.LALV.PLV1 = mean(x.Alpha.LALV.PLV1(:));
      Beta1.LALV.PLV1 = mean(x.Beta1.LALV.PLV1(:));
      Beta2.LALV.PLV1 = mean(x.Beta2.LALV.PLV1(:));
      
      Theta.LALV.PLV2 = mean(x.Theta.LALV.PLV2(:));
      Alpha.LALV.PLV2 = mean(x.Alpha.LALV.PLV2(:));
      Beta1.LALV.PLV2 = mean(x.Beta1.LALV.PLV2(:));
      Beta2.LALV.PLV2 = mean(x.Beta2.LALV.PLV2(:));
      
      
      
              
 
   save([pathname4,filename2],'Theta','Alpha','Beta1','Beta2','labels');
      end
 end

 