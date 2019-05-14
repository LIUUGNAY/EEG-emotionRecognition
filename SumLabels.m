
%把每个被试者40次实验每个波段的‘属性标签矩阵’合起来
%存到“标签合并”

pathname1='E:\脑电数据集\标签分类\';
pathname3='E:\脑电数据集\标签合并\';
%32个被试者

for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
        filename=sprintf('s0%d',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
        filename=sprintf('s%d',k);
    end
    pathname2=[pathname1,filename1];    %'E:\脑电数据集\网络属性均值再平均\s01\'
    pathname4=[pathname3,filename1];    %'E:\脑电数据集\标签\s01\'
     mkdir(pathname3);     %首次执行时需要创建新的文件夹

  Theta.PLV1.valence=[];
Alpha.PLV1.valence=[];
Beta1.PLV1.valence=[];
Beta2.PLV1.valence=[];
Theta.PLV1.arousal=[];
Alpha.PLV1.arousal=[];
Beta1.PLV1.arousal=[];
Beta2.PLV1.arousal=[];

Theta.PLV2.valence=[];
Alpha.PLV2.valence=[];
Beta1.PLV2.valence=[];
Beta2.PLV2.valence=[];
Theta.PLV2.arousal=[];
Alpha.PLV2.arousal=[];
Beta1.PLV2.arousal=[];
Beta2.PLV2.arousal=[];
    
    %每人40次试验
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
       
       valTheta1=x.Theta.PLV1.val;
       valAlpha1=x.Alpha.PLV1.val;
       valBeta11=x.Beta1.PLV1.val;
       valBeta21=x.Beta2.PLV1.val;
       
       aroTheta1=x.Theta.PLV1.aro;
       aroAlpha1=x.Alpha.PLV1.aro;
       aroBeta11=x.Beta1.PLV1.aro;
       aroBeta21=x.Beta2.PLV1.aro;
       
       Theta.PLV1.valence=[Theta.PLV1.valence;valTheta1];
       Alpha.PLV1.valence=[Alpha.PLV1.valence;valAlpha1];
       Beta1.PLV1.valence=[Beta1.PLV1.valence;valBeta11];
       Beta2.PLV1.valence=[Beta2.PLV1.valence;valBeta21];
       
       Theta.PLV1.arousal=[Theta.PLV1.arousal;aroTheta1];
       Alpha.PLV1.arousal=[Alpha.PLV1.arousal;aroAlpha1];
       Beta1.PLV1.arousal=[Beta1.PLV1.arousal;aroBeta11];
       Beta2.PLV1.arousal=[Beta2.PLV1.arousal;aroBeta21];
       
      valTheta2=x.Theta.PLV2.val;
       valAlpha2=x.Alpha.PLV2.val;
       valBeta12=x.Beta1.PLV2.val;
       valBeta22=x.Beta2.PLV2.val;
       
       aroTheta2=x.Theta.PLV2.aro;
       aroAlpha2=x.Alpha.PLV2.aro;
       aroBeta12=x.Beta1.PLV2.aro;
       aroBeta22=x.Beta2.PLV2.aro;
       
       Theta.PLV2.valence=[Theta.PLV2.valence;valTheta2];
       Alpha.PLV2.valence=[Alpha.PLV2.valence;valAlpha2];
       Beta1.PLV2.valence=[Beta1.PLV2.valence;valBeta12];
       Beta2.PLV2.valence=[Beta2.PLV2.valence;valBeta22];
      
       Theta.PLV2.arousal=[Theta.PLV2.arousal;aroTheta2];
       Alpha.PLV2.arousal=[Alpha.PLV2.arousal;aroAlpha2];
       Beta1.PLV2.arousal=[Beta1.PLV2.arousal;aroBeta12];
       Beta2.PLV2.arousal=[Beta2.PLV2.arousal;aroBeta22];

    end
    
    save([pathname3,filename],'Theta','Alpha','Beta1','Beta2');

end
