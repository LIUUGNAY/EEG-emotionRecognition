 m = struct('data','labels');
pathname1='E:\�Ե����ݼ�\��ȡ����\';
pathname3='E:\�Ե����ݼ�\��ʱ����������\';
%32��������
for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
    end
    pathname2=[pathname1,filename1];
    pathname4=[pathname3,filename1];
    mkdir(pathname3,filename1);%�״�ִ��ʱ��Ҫ�����µ��ļ��У��ٴ�ִ�пɲ���
    %ÿ��40������
    for j=1:40
       if k<10
           filename2=sprintf('s0%d-%d',k,j);
       end
       if k>=10
           filename2=sprintf('s%d-%d',k,j);
       end
       x=load([pathname2,filename2]);
        m.data = x.data;
    %    m.labels  = x.labels;
    m1=reshape(data,[32 20*128]);
        m2=m1(:,1:1280);
        m3 = m1(:,1281:2560);
        m21=reshape(m2,[32 10*128]);
        m31 = reshape(m3,[32 10*128]);
        data1 = m21;
        data2 = m31;
        labels = x.labels;
        if k<10
            filename2=sprintf('s0%d-%d',k,j);
        end
        if k>=10
            filename2=sprintf('s%d-%d',k,j);
        end
        save([pathname4,filename2],'data1','data2','labels');
    end
end