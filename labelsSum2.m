%把每个被试者40次实验的，每个波段的‘属性标签矩阵’合起来
%存到“四种标签合并”

pathname1='E:\脑电数据集\四种标签分类\';
pathname3='E:\脑电数据集\四种标签合并\';
 Theta.HAHV.valence=[];
    Alpha.HAHV.valence=[];
    Beta1.HAHV.valence=[];
    Beta2.HAHV.valence=[];
    Theta.HAHV.arousal=[];
    Alpha.HAHV.arousal=[];
    Beta1.HAHV.arousal=[];
    Beta2.HAHV.arousal=[];
    
    Theta.HALV.valence=[];
    Alpha.HALV.valence=[];
    Beta1.HALV.valence=[];
    Beta2.HALV.valence=[];
    Theta.HALV.arousal=[];
    Alpha.HALV.arousal=[];
    Beta1.HALV.arousal=[];
    Beta2.HALV.arousal=[];
    
    Theta.LAHV.valence=[];
    Alpha.LAHV.valence=[];
    Beta1.LAHV.valence=[];
    Beta2.LAHV.valence=[];
    Theta.LAHV.arousal=[];
    Alpha.LAHV.arousal=[];
    Beta1.LAHV.arousal=[];
    Beta2.LAHV.arousal=[];
    
    Theta.LALV.valence=[];
    Alpha.LALV.valence=[];
    Beta1.LALV.valence=[];
    Beta2.LALV.valence=[];
    Theta.LALV.arousal=[];
    Alpha.LALV.arousal=[];
    Beta1.LALV.arousal=[];
    Beta2.LALV.arousal=[];
    
for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
         filename11=sprintf('s%d',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
         filename11=sprintf('s%d',k);
    end
    pathname2=[pathname1,filename1];    %'E:\脑电数据集\二值化矩阵\s01\'
    pathname4=[pathname3,filename1];    %'E:\脑电数据集\网络属性\s01\'
    mkdir(pathname3);     %首次执行时需要创建新的文件夹
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
    %   mkdir(pathname4,filename3);
       pathname5=[pathname2,filename3];   %'E:\脑电数据集\二值化矩阵\s01\s01-1'
     %  pathname6=[pathname4,filename3];    %'E:\脑电数据集\网络属性\s01\s01-1'
       i = 8;
      filename4=sprintf('%d',i);
           x=load([pathname5,filename4]);
       
       valTheta1=x.Theta.HAHV.PLV1.val;
       valAlpha1=x.Alpha.HAHV.PLV1.val;
       valBeta11=x.Beta1.HAHV.PLV1.val;
       valBeta21=x.Beta2.HAHV.PLV1.val;
       
       aroTheta1=x.Theta.HAHV.PLV1.aro;
       aroAlpha1=x.Alpha.HAHV.PLV1.aro;
       aroBeta11=x.Beta1.HAHV.PLV1.aro;
       aroBeta21=x.Beta2.HAHV.PLV1.aro;
       
              %HAHV    
       Theta.HAHV.valence=[Theta.HAHV.valence;valTheta1];
       Alpha.HAHV.valence=[Alpha.HAHV.valence;valAlpha1];
       Beta1.HAHV.valence=[Beta1.HAHV.valence;valBeta11];
       Beta2.HAHV.valence=[Beta2.HAHV.valence;valBeta21];
       
       Theta.HAHV.arousal=[Theta.HAHV.arousal;aroTheta1];
       Alpha.HAHV.arousal=[Alpha.HAHV.arousal;aroAlpha1];
       Beta1.HAHV.arousal=[Beta1.HAHV.arousal;aroBeta11];
       Beta2.HAHV.arousal=[Beta2.HAHV.arousal;aroBeta21];
%        save([pathname3,filename11],'Theta','Alpha','Beta1','Beta2','type');
       
       
       valTheta2=x.Theta.HALV.PLV1.val;
       valAlpha2=x.Alpha.HALV.PLV1.val;
       valBeta12=x.Beta1.HALV.PLV1.val;
       valBeta22=x.Beta2.HALV.PLV1.val;
       
       aroTheta2=x.Theta.HALV.PLV1.aro;
       aroAlpha2=x.Alpha.HALV.PLV1.aro;
       aroBeta12=x.Beta1.HALV.PLV1.aro;
       aroBeta22=x.Beta2.HALV.PLV1.aro;
       
              %HALV    
       Theta.HALV.valence=[Theta.HALV.valence;valTheta2];
       Alpha.HALV.valence=[Alpha.HALV.valence;valAlpha2];
       Beta1.HALV.valence=[Beta1.HALV.valence;valBeta12];
       Beta2.HALV.valence=[Beta2.HALV.valence;valBeta22];
       
       Theta.HALV.arousal=[Theta.HALV.arousal;aroTheta2];
       Alpha.HALV.arousal=[Alpha.HALV.arousal;aroAlpha2];
       Beta1.HALV.arousal=[Beta1.HALV.arousal;aroBeta12];
       Beta2.HALV.arousal=[Beta2.HALV.arousal;aroBeta22];

       valTheta3=x.Theta.LAHV.PLV1.val;
       valAlpha3=x.Alpha.LAHV.PLV1.val;
       valBeta13=x.Beta1.LAHV.PLV1.val;
       valBeta23=x.Beta2.LAHV.PLV1.val;
       
       aroTheta3=x.Theta.LAHV.PLV1.aro;
       aroAlpha3=x.Alpha.LAHV.PLV1.aro;
       aroBeta13=x.Beta1.LAHV.PLV1.aro;
       aroBeta23=x.Beta2.LAHV.PLV1.aro;
       
              %LAHV    
       Theta.LAHV.valence=[Theta.LAHV.valence;valTheta3];
       Alpha.LAHV.valence=[Alpha.LAHV.valence;valAlpha3];
       Beta1.LAHV.valence=[Beta1.LAHV.valence;valBeta13];
       Beta2.LAHV.valence=[Beta2.LAHV.valence;valBeta23];
       
       Theta.LAHV.arousal=[Theta.LAHV.arousal;aroTheta3];
       Alpha.LAHV.arousal=[Alpha.LAHV.arousal;aroAlpha3];
       Beta1.LAHV.arousal=[Beta1.LAHV.arousal;aroBeta13];
       Beta2.LAHV.arousal=[Beta2.LAHV.arousal;aroBeta23];
       
       valTheta4=x.Theta.LALV.PLV1.val;
       valAlpha4=x.Alpha.LALV.PLV1.val;
       valBeta14=x.Beta1.LALV.PLV1.val;
       valBeta24=x.Beta2.LALV.PLV1.val;
       
       aroTheta4=x.Theta.LALV.PLV1.aro;
       aroAlpha4=x.Alpha.LALV.PLV1.aro;
       aroBeta14=x.Beta1.LALV.PLV1.aro;
       aroBeta24=x.Beta2.LALV.PLV1.aro;
       
              %LALV    
       Theta.LALV.valence=[Theta.LALV.valence;valTheta4];
       Alpha.LALV.valence=[Alpha.LALV.valence;valAlpha4];
       Beta1.LALV.valence=[Beta1.LALV.valence;valBeta14];
       Beta2.LALV.valence=[Beta2.LALV.valence;valBeta24];
       
       Theta.LALV.arousal=[Theta.LALV.arousal;aroTheta4];
       Alpha.LALV.arousal=[Alpha.LALV.arousal;aroAlpha4];
       Beta1.LALV.arousal=[Beta1.LALV.arousal;aroBeta14];
       Beta2.LALV.arousal=[Beta2.LALV.arousal;aroBeta24];
%       
       
       save([pathname3,'difEmoSumLabels'],'Theta','Alpha','Beta1','Beta2');
       

    end
    

end