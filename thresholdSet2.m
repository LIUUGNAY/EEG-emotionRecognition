
pathname1='E:\�Ե����ݼ�\��Ч�ۻ��Ѷ�PLV����\';
 pathname3='E:\�Ե����ݼ�\�ֱ�ǩ��ֵ������\';


 for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
    end
    pathname2=[pathname1,filename1];   
    pathname4=[pathname3,filename1]; %��ֵ������/s01/
    mkdir(pathname3,filename1);%�״�ִ��ʱ��Ҫ�����µ��ļ��У��ٴ�ִ�пɲ���
    %ÿ��40������
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
       pathname5=[pathname4,filename3];     %��ֵ������\s01\s01-1
       
       x=load([pathname2,filename2]);  
      labels = x.labels;
        thr = 0.05 ;
       for i=1:20
           filename4=sprintf('%d',i);

    

           %HAHV
        Alpha.HAHV.PLV1 = f_ThresholdSimple(x.Alpha.HAHV.PLV1,thr);
           Beta1.HAHV.PLV1 = f_ThresholdSimple(x.Beta1.HAHV.PLV1,thr);
            Beta2.HAHV.PLV1 = f_ThresholdSimple(x.Beta2.HAHV.PLV1,thr);
              Theta.HAHV.PLV1 = f_ThresholdSimple(x.Theta.HAHV.PLV1,thr);
              
              Alpha.HAHV.PLV2 = f_ThresholdSimple(x.Alpha.HAHV.PLV2,thr);
           Beta1.HAHV.PLV2 = f_ThresholdSimple(x.Beta1.HAHV.PLV2,thr);
            Beta2.HAHV.PLV2 = f_ThresholdSimple(x.Beta2.HAHV.PLV2,thr);
              Theta.HAHV.PLV2 = f_ThresholdSimple(x.Theta.HAHV.PLV2,thr);    
              
                %HALV
        Alpha.HALV.PLV1 = f_ThresholdSimple(x.Alpha.HALV.PLV1,thr);
           Beta1.HALV.PLV1 = f_ThresholdSimple(x.Beta1.HALV.PLV1,thr);
            Beta2.HALV.PLV1 = f_ThresholdSimple(x.Beta2.HALV.PLV1,thr);
              Theta.HALV.PLV1 = f_ThresholdSimple(x.Theta.HALV.PLV1,thr);
              
              Alpha.HALV.PLV2 = f_ThresholdSimple(x.Alpha.HALV.PLV2,thr);
           Beta1.HALV.PLV2 = f_ThresholdSimple(x.Beta1.HALV.PLV2,thr);
            Beta2.HALV.PLV2 = f_ThresholdSimple(x.Beta2.HALV.PLV2,thr);
              Theta.HALV.PLV2 = f_ThresholdSimple(x.Theta.HALV.PLV2,thr); 
              
                %LAHV
        Alpha.LAHV.PLV1 = f_ThresholdSimple(x.Alpha.LAHV.PLV1,thr);
           Beta1.LAHV.PLV1 = f_ThresholdSimple(x.Beta1.LAHV.PLV1,thr);
            Beta2.LAHV.PLV1 = f_ThresholdSimple(x.Beta2.LAHV.PLV1,thr);
              Theta.LAHV.PLV1 = f_ThresholdSimple(x.Theta.LAHV.PLV1,thr);
              
              Alpha.LAHV.PLV2 = f_ThresholdSimple(x.Alpha.LAHV.PLV2,thr);
           Beta1.LAHV.PLV2 = f_ThresholdSimple(x.Beta1.LAHV.PLV2,thr);
            Beta2.LAHV.PLV2 = f_ThresholdSimple(x.Beta2.LAHV.PLV2,thr);
              Theta.LAHV.PLV2 = f_ThresholdSimple(x.Theta.LAHV.PLV2,thr); 
              
              
              
                %LALV
        Alpha.LALV.PLV1 = f_ThresholdSimple(x.Alpha.LALV.PLV1,thr);
           Beta1.LALV.PLV1 = f_ThresholdSimple(x.Beta1.LALV.PLV1,thr);
            Beta2.LALV.PLV1 = f_ThresholdSimple(x.Beta2.LALV.PLV1,thr);
              Theta.LALV.PLV1 = f_ThresholdSimple(x.Theta.LALV.PLV1,thr);
              
              Alpha.LALV.PLV2 = f_ThresholdSimple(x.Alpha.LALV.PLV2,thr);
           Beta1.LALV.PLV2 = f_ThresholdSimple(x.Beta1.LALV.PLV2,thr);
            Beta2.LALV.PLV2 = f_ThresholdSimple(x.Beta2.LALV.PLV2,thr);
              Theta.LALV.PLV2 = f_ThresholdSimple(x.Theta.LALV.PLV2,thr); 
              
              

   save([pathname5,filename4],'Theta','Alpha','Beta1','Beta2','labels');
   thr = thr +0.01;
       end
    end
 end
 