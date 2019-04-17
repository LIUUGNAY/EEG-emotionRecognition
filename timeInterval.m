 m = struct('data','labels');
pathname1='E:\脑电数据集\截取数据\';
pathname3='E:\脑电数据集\分时间序列数据\';
%32个被试者
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