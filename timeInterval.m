 m = struct();
pathname1='E:\�Ե����ݼ�\��Ƶ�κ�����\';

pathname3 = 'E:\�Ե����ݼ�\��ʱ�κ�����\';

%32��������
for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
    end
    pathname2=[pathname1,filename1];
    pathname5=[pathname3,filename1];
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
        m.Alpha = x.Alpha;
       m.Beta1  = x.Beta1;
       m.Beta2 = x.Beta2;
       m.Theta = x.Theta;
       labels = x.labels;
       
    mAl=reshape(m.Alpha,[32 20*128]);
    mBe1 = reshape(m.Beta1,[32 20*128]);
    mBe2 = reshape(m.Beta2,[32 20*128]);
    mTh = reshape(m.Theta,[32 20*128]);
    
        mpostAl=mAl(:,1:1280);
        mpostBe1=mBe1(:,1:1280);
        mpostBe2=mBe2(:,1:1280);
        mpostTh=mTh(:,1:1280);
        Theta.data1 = reshape(mpostTh,[32 10*128]);
         Alpha.data1 = reshape(mpostAl,[32 10*128]);
         Beta1.data1 = reshape(mpostBe1,[32 10*128]);
         Beta2.data1 = reshape(mpostBe2,[32 10*128]);
         
         
        mlastAl = mAl(:,1281:2560);
        mlastBe1 = mBe1(:,1281:2560);
        mlastBe2 = mBe2(:,1281:2560);
        mlastTh = mTh(:,1281:2560);
        Theta.data2 = reshape(mlastTh,[32 10*128]);
        Alpha.data2 = reshape(mlastAl,[32 10*128]);
        Beta1.data2 = reshape(mlastBe1,[32 10*128]);
        Beta2.data2 = reshape(mlastBe2,[32 10*128]);

        if k<10
            filename2=sprintf('s0%d-%d',k,j);
        end
        if k>=10
            filename2=sprintf('s%d-%d',k,j);
        end
        save([pathname5,filename2],'Theta','Alpha','Beta1','Beta2','labels');
        
    end
end