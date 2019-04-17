m = struct('data','labels');
pathname1='E:\脑电数据集\预处理数据集\data_preprocessed_matlab\data_preprocessed_matlab\';
for k=1:32
    if k<10
        filename1=sprintf('s0%d',k);
    end
    if k>=10
        filename1=sprintf('s%d',k);
    end
    x=load([pathname1,filename1]);
    m.data=x.data;
    m.labels = x.labels;
    m1=reshape(m.data,[40 40 63 128]);
    mm1= reshape(m.labels,[40 4]);
    if k<10
        pathname=sprintf('s0%d\\',k);
    end
    if k>=10
        pathname=sprintf('s%d\\',k);
    end
    pathname2=['E:\脑电数据集\截取数据\',pathname];
    mkdir('E:\脑电数据集\截取数据\',pathname);
    for i=1:40
        m2=m1(i,1:32,24:43,:);
        mm2= mm1(i,:);
        m3=reshape(m2,[32 20*128]);
        mm3 = reshape(mm2,[1 4]);
        data = m3;
        labels = mm3;
        if k<10
            filename2=sprintf('s0%d-%d',k,i);
        end
        if k>=10
            filename2=sprintf('s%d-%d',k,i);
        end
        save([pathname2,filename2],'data','labels');
    end
end
