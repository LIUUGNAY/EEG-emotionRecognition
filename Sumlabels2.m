
%把32个被试者波段合并

pathname1='E:\脑电数据集\标签合并\';
pathname3='E:\脑电数据集\所有波段合并\';
%32个被试者

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

for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
        filename=sprintf('s0%d',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
        filename=sprintf('s%d',k);
    end
%     pathname2=[pathname1,filename1];   
%     pathname4=[pathname3,filename1];   
     mkdir(pathname3);     %首次执行时需要创建新的文件夹

       x=load([pathname1,filename]);  

       
       valTheta1=x.Theta.PLV1.valence;
       valAlpha1=x.Alpha.PLV1.valence;
       valBeta11=x.Beta1.PLV1.valence;
       valBeta21=x.Beta2.PLV1.valence;
       
       aroTheta1=x.Theta.PLV1.arousal;
       aroAlpha1=x.Alpha.PLV1.arousal;
       aroBeta11=x.Beta1.PLV1.arousal;
       aroBeta21=x.Beta2.PLV1.arousal;
       
       Theta.PLV1.valence=[Theta.PLV1.valence;valTheta1];
       Alpha.PLV1.valence=[Alpha.PLV1.valence;valAlpha1];
       Beta1.PLV1.valence=[Beta1.PLV1.valence;valBeta11];
       Beta2.PLV1.valence=[Beta2.PLV1.valence;valBeta21];
       
       Theta.PLV1.arousal=[Theta.PLV1.arousal;aroTheta1];
       Alpha.PLV1.arousal=[Alpha.PLV1.arousal;aroAlpha1];
       Beta1.PLV1.arousal=[Beta1.PLV1.arousal;aroBeta11];
       Beta2.PLV1.arousal=[Beta2.PLV1.arousal;aroBeta21];
       
       
      valTheta2=x.Theta.PLV2.valence;
       valAlpha2=x.Alpha.PLV2.valence;
       valBeta12=x.Beta1.PLV2.valence;
       valBeta22=x.Beta2.PLV2.valence;
       
       aroTheta2=x.Theta.PLV2.arousal;
       aroAlpha2=x.Alpha.PLV2.arousal;
       aroBeta12=x.Beta1.PLV2.arousal;
       aroBeta22=x.Beta2.PLV2.arousal;
       
       Theta.PLV2.valence=[Theta.PLV2.valence;valTheta2];
       Alpha.PLV2.valence=[Alpha.PLV2.valence;valAlpha2];
       Beta1.PLV2.valence=[Beta1.PLV2.valence;valBeta12];
       Beta2.PLV2.valence=[Beta2.PLV2.valence;valBeta22];
       
       Theta.PLV2.arousal=[Theta.PLV2.arousal;aroTheta2];
       Alpha.PLV2.arousal=[Alpha.PLV2.arousal;aroAlpha2];
       Beta1.PLV2.arousal=[Beta1.PLV2.arousal;aroBeta12];
       Beta2.PLV2.arousal=[Beta2.PLV2.arousal;aroBeta22];
       
       
    save([pathname3,'sumBandAttribute'],'Theta','Alpha','Beta1','Beta2');

end

