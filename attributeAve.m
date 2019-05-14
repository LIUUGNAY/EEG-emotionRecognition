%����PLV1��PLV2�ľ�ֵ


pathname1='E:\�Ե��ļ���\������������ֵ\';
pathname3='E:\�Ե��ļ���\�������Ծ�ֵ\';

%32��������
clustering=[];
for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
    end
    pathname2=[pathname1,filename1];    %'E:\�Ե����ݼ�\��������\s01\'
    pathname4=[pathname3,filename1];    %'E:\�Ե����ݼ�\�������Ծ�ֵ\s01\'
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
       mkdir(pathname4,filename3);
       pathname5=[pathname2,filename3];   %'E:\�Ե����ݼ�\��������\s01\s01-1'
       pathname6=[pathname4,filename3];    %'E:\�Ե����ݼ�\�������Ծ�ֵ\s01\s01-1'

       for i=1:20
           filename4=sprintf('%d',i);
           x=load([pathname5,filename4]);   %'E:\�Ե����ݼ�\��������\s01\s01-1\1.mat'
           labels=x.labels;
           %����ϵ��
           Theta.clustering=(x.Theta.PLV1.clustering+x.Theta.PLV2.clustering)/2;
           Alpha.clustering=(x.Alpha.PLV1.clustering+x.Alpha.PLV2.clustering)/2;
           Beta1.clustering=(x.Beta1.PLV1.clustering+x.Beta1.PLV2.clustering)/2;
           Beta2.clustering=(x.Beta2.PLV1.clustering+x.Beta2.PLV2.clustering)/2;
           %ͬ��ϵ��
           Theta.assortativity=(x.Theta.PLV1.assortativity+x.Theta.PLV2.assortativity)/2;
           Alpha.assortativity=(x.Alpha.PLV1.assortativity+x.Alpha.PLV2.assortativity)/2;
           Beta1.assortativity=(x.Beta1.PLV1.assortativity+x.Beta1.PLV2.assortativity)/2;
           Beta2.assortativity=(x.Beta2.PLV1.assortativity+x.Beta2.PLV2.assortativity)/2;           
           %ȫ��Ч��
           Theta.globalefficiency=(x.Theta.PLV1.globalefficiency+x.Theta.PLV2.globalefficiency)/2;
           Alpha.globalefficiency=(x.Alpha.PLV1.globalefficiency+x.Alpha.PLV2.globalefficiency)/2;
           Beta1.globalefficiency=(x.Beta1.PLV1.globalefficiency+x.Beta1.PLV2.globalefficiency)/2;
           Beta2.globalefficiency=(x.Beta2.PLV1.globalefficiency+x.Beta2.PLV2.globalefficiency)/2;          
           %�ֲ�Ч��
           Theta.localefficiency=(x.Theta.PLV1.localefficiency+x.Theta.PLV2.localefficiency)/2;
           Alpha.localefficiency=(x.Alpha.PLV1.localefficiency+x.Alpha.PLV2.localefficiency)/2;
           Beta1.localefficiency=(x.Beta1.PLV1.localefficiency+x.Beta1.PLV2.localefficiency)/2;
           Beta2.localefficiency=(x.Beta2.PLV1.localefficiency+x.Beta2.PLV2.localefficiency)/2;           
           %ƽ�����·������
           Theta.path=(x.Theta.PLV1.path+x.Theta.PLV2.path)/2;
           Alpha.path=(x.Alpha.PLV1.path+x.Alpha.PLV2.path)/2;
           Beta1.path=(x.Beta1.PLV1.path+x.Beta1.PLV2.path)/2;
           Beta2.path=(x.Beta2.PLV1.path+x.Beta2.PLV2.path)/2;           
           %�ڵ��
           Theta.modedegree=(x.Theta.PLV1.modedegree+x.Theta.PLV2.modedegree)/2;
           Alpha.modedegree=(x.Alpha.PLV1.modedegree+x.Alpha.PLV2.modedegree)/2;
           Beta1.modedegree=(x.Beta1.PLV1.modedegree+x.Beta1.PLV2.modedegree)/2;
           Beta2.modedegree=(x.Beta2.PLV1.modedegree+x.Beta2.PLV2.modedegree)/2;           
           %�м����Ķ�
           Theta.betweenness=(x.Theta.PLV1.betweenness+x.Theta.PLV2.betweenness)/2;
           Alpha.betweenness=(x.Alpha.PLV1.betweenness+x.Alpha.PLV2.betweenness)/2;
           Beta1.betweenness=(x.Beta1.PLV1.betweenness+x.Beta1.PLV2.betweenness)/2;
           Beta2.betweenness=(x.Beta2.PLV1.betweenness+x.Beta2.PLV2.betweenness)/2;
           %�����ֵ
          
           save([pathname6,filename4],'Theta','Alpha','Beta1','Beta2','labels');
       end
       


    end

end