% pathname='E:\�Ե����ݼ�\��Ƶ�κ�����\s01-1\';
% x=load('E:\�Ե����ݼ�\��ȡ����\s01\s01-1.mat');
% xx=x.data;

n=6;    %�ֽ���Ϊ6�㣨����(0,0)��һ�㣩����ײ��Ƶ�ʿ��Ϊ 1 Hz

pathname1='E:\�Ե����ݼ�\��ȡ����\';
pathname3='E:\�Ե����ݼ�\��Ƶ�κ�����\';
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
       xx=x.data;
       labels = x.labels;
       Theta=[];    %4-7Hz,(6,4)-(6,7)
       Alpha=[];    %8-12Hz,(6,8)-(6,12)
       Beta1=[];    %13-19Hz,(6,13)-(6,19)
       Beta2=[];    %20-30Hz,(6,20)-(6,30)
       %����Ϊ32*2560���ָ��32��1*2560���ֱ�Ƶ�ʷֶκ��ٺϳ�һ������ľ���
       for i=1:32
           A=xx(i,:);
           wpt=wpdec(A,n,'db20');
          % plot(wpt);
           %Theta
           cfs01=wprcoef(wpt,[6 4]);
           cfs02=wprcoef(wpt,[6 5]);
           cfs03=wprcoef(wpt,[6 6]);
           cfs04=wprcoef(wpt,[6 7]);
           cfs0=cfs01+cfs02+cfs03+cfs04;
           Theta=[Theta;cfs0];
           %Alpha
           cfs11=wprcoef(wpt,[6 8]);
           cfs12=wprcoef(wpt,[6 9]);
           cfs13=wprcoef(wpt,[6 10]);
           cfs14=wprcoef(wpt,[6 11]);
           cfs15=wprcoef(wpt,[6 12]);
           cfs1=cfs11+cfs12+cfs13+cfs14+cfs15;
           Alpha=[Alpha;cfs1];
           %Beta1
           cfs21=wprcoef(wpt,[6 13]);
           cfs22=wprcoef(wpt,[6 14]);
           cfs23=wprcoef(wpt,[6 15]);
           cfs24=wprcoef(wpt,[6 16]);
           cfs25=wprcoef(wpt,[6 17]);
           cfs26=wprcoef(wpt,[6 18]);
           cfs27=wprcoef(wpt,[6 19]);
           cfs2=cfs21+cfs22+cfs23+cfs24+cfs25+cfs26+cfs27;
           Beta1=[Beta1;cfs2];
           %Beta2
           cfs31=wprcoef(wpt,[6 20]);
           cfs32=wprcoef(wpt,[6 21]);
           cfs33=wprcoef(wpt,[6 22]);
           cfs34=wprcoef(wpt,[6 23]);
           cfs35=wprcoef(wpt,[6 24]);
           cfs36=wprcoef(wpt,[6 25]);
           cfs37=wprcoef(wpt,[6 26]);
           cfs38=wprcoef(wpt,[6 27]);
           cfs39=wprcoef(wpt,[6 28]);
            cfs310=wprcoef(wpt,[6 29]);
           cfs311=wprcoef(wpt,[6 30]);
           cfs3=cfs31+cfs32+cfs33+cfs34+cfs35+cfs36+cfs37+cfs38+cfs39+cfs310+cfs311;
           Beta2=[Beta2;cfs3];
           %����
           save([pathname4,filename2],'Theta','Alpha','Beta1','Beta2','labelsx');
%            save([pathname4,filename2],'Alpha');
%            save([pathname4,filename2],'Beta1');
%            save([pathname4,filename2],'Beta2');
       end

    end

end