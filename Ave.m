%�Ծ���,�ֱ����ĸ����ε�ƽ��ֵ

pathname1='E:\�Ե����ݼ�\ǰʮPLV����\';
pathname3='E:\�Ե����ݼ�\ƽ��ֵ\';
sumTheta=0;
sumAlpha=0;
sumBeta1=0;
sumBeta2=0;
%32��������
for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
    end
    pathname2=[pathname1,filename1];    %'E:\�Ե����ݼ�\��ֵ������\s01\'
    pathname4=[pathname3,filename1];    %'E:\�Ե����ݼ�\����\s01\'
    mkdir(pathname3,filename1);     %�״�ִ��ʱ��Ҫ�����µ��ļ���
    %ÿ��40������
    for j=1:40
       if k<10
           filename2=sprintf('s0%d-%d',k,j);    
       end
       if k>=10
           filename2=sprintf('s%d-%d',k,j);
       end
       xx=load([pathname2,filename2]);   %'E:\�Ե����ݼ�\��ֵ������\s01\s01-1.mat'
       labels=xx.labels;
       %ÿ���ļ�ÿ�����Σ�MI1��MI2��ƽ��ֵ��avg
       Theta=avgtest(xx.Theta.MI1,xx.Theta.MI2);
       Alpha=avgtest(xx.Alpha.MI1,xx.Alpha.MI2);
       Beta1=avgtest(xx.Beta1.MI1,xx.Beta1.MI2);
       Beta2=avgtest(xx.Beta2.MI1,xx.Beta2.MI2);
       
       sumTheta=sumTheta+Theta;
       sumAlpha=sumAlpha+Alpha;
       sumBeta1=sumBeta1+Beta1;
       sumBeta2=sumBeta2+Beta2;
       
%        save([pathname4,filename2],'Theta','Alpha','Beta1','Beta2','labels');

    end

end
avgTheta=sumTheta/(32*40);
avgAlpha=sumAlpha/(32*40);
avgBeta1=sumBeta1/(32*40);
avgBeta2=sumBeta2/(32*40);