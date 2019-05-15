%�ԡ��������Ծ�ֵ��ƽ��������
%��Ч�ۺͻ��Ѷȼӱ�ǩ��>5Ϊ2��<=5Ϊ1
%�������Ժͱ�ǩƴ������
%�浽����ǩ ��

pathname1='E:\�Ե����ݼ�\��������������ֵ\';
pathname3='E:\�Ե����ݼ�\�����ͱ�ǩ����\';
%32��������

for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
    end
    pathname2=[pathname1,filename1];    %'E:\�Ե����ݼ�\������������ֵ\s01\'
    pathname4=[pathname3,filename1];    %'E:\�Ե����ݼ�\��ǩ����\s01\'
    mkdir(pathname3,filename1);     %�״�ִ��ʱ��Ҫ�����µ��ļ���
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
       
       x=load([pathname2,filename2]);
       labels=x.labels;
%        Theta=xx.Theta;
%        Alpha=xx.Alpha;
%        Beta1=xx.Beta1;
%        Beta2=xx.Beta2;
       
       if labels(1)>5
           labelsvalence=2;
       else
           labelsvalence=1;
       end
       
       if labels(2)>5
           labelsarousal=2;
       else
           labelsarousal=1;
       end

       xxTheta=[x.Theta.clustering x.Theta.assortativity x.Theta.globalefficiency x.Theta.localefficiency x.Theta.path x.Theta.modedegree x.Theta.betweenness];
       xxAlpha=[x.Alpha.clustering x.Alpha.assortativity x.Alpha.globalefficiency x.Alpha.localefficiency x.Alpha.path x.Alpha.modedegree x.Alpha.betweenness];
       xxBeta1=[x.Beta1.clustering x.Beta1.assortativity x.Beta1.globalefficiency x.Beta1.localefficiency x.Beta1.path x.Beta1.modedegree x.Beta1.betweenness];
       xxBeta2=[x.Beta2.clustering x.Beta2.assortativity x.Beta2.globalefficiency x.Beta2.localefficiency x.Beta2.path x.Beta2.modedegree x.Beta2.betweenness];
       
%        valence=[labelsvalence;labelsvalence;labelsvalence;labelsvalence;labelsvalence;labelsvalence;labelsvalence];
%        arousal=[labelsarousal;labelsarousal;labelsarousal;labelsarousal;labelsarousal;labelsarousal;labelsarousal];
       
%        Theta=[xxTheta valence arousal];
%        Alpha=[xxAlpha valence arousal];
%        Beta1=[xxBeta1 valence arousal];
%        Beta2=[xxBeta2 valence arousal];

       Theta.val=[xxTheta labelsvalence];
       Alpha.val=[xxAlpha labelsvalence];
       Beta1.val=[xxBeta1 labelsvalence];
       Beta2.val=[xxBeta2 labelsvalence];
       
       Theta.aro=[xxTheta labelsarousal];
       Alpha.aro=[xxAlpha labelsarousal];
       Beta1.aro=[xxBeta1 labelsarousal];
       Beta2.aro=[xxBeta2 labelsarousal];
       
       save([pathname4,filename2],'Theta','Alpha','Beta1','Beta2','labels','labelsvalence','labelsarousal');

    end

end

