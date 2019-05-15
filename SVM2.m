%对“标签F”操作
%把每个被试者40次实验的，每个波段的‘属性标签矩阵’合起来
%存到“标签合并F”

pathname1='E:\脑电文件夹\标签分类\';
pathname3='E:\脑电数据集\四种标签合并\';
%32个被试者

for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
        filename11=sprintf('s0%d',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
        filename11=sprintf('s%d',k);
    end
    pathname2=[pathname1,filename1];    %'E:\脑电数据集\网络属性均值再平均\s01\'
    pathname4=[pathname3,filename1];    %'E:\脑电数据集\标签\s01\'
%     mkdir(pathname3,filename1);     %首次执行时需要创建新的文件夹

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

       xx=load([pathname2,filename2]);  
       
 
       
       if (strcmp(type,'HAHV')==1)
       valTheta=xx.Theta.HAHV.val;
       valAlpha=xx.Alpha.HAHV.val;
       valBeta1=xx.Beta1.HAHV.val;
       valBeta2=xx.Beta2.HAHV.val;
       
       aroTheta=xx.Theta.HAHV.aro;
       aroAlpha=xx.Alpha.HAHV.aro;
       aroBeta1=xx.Beta1.HAHV.aro;
       aroBeta2=xx.Beta2.HAHV.aro;
       
              %HAHV    
       Theta.HAHV.valence=[Theta.HAHV.valence;valTheta];
       Alpha.HAHV.valence=[Alpha.HAHV.valence;valAlpha];
       Beta1.HAHV.valence=[Beta1.HAHV.valence;valBeta1];
       Beta2.HAHV.valence=[Beta2.HAHV.valence;valBeta2];
       
       Theta.HAHV.arousal=[Theta.HAHV.arousal;aroTheta];
       Alpha.HAHV.arousal=[Alpha.HAHV.arousal;aroAlpha];
       Beta1.HAHV.arousal=[Beta1.HAHV.arousal;aroBeta1];
       Beta2.HAHV.arousal=[Beta2.HAHV.arousal;aroBeta2];
%        save([pathname3,filename11],'Theta','Alpha','Beta1','Beta2','type');
       end
       
       if (strcmp(type,'HALV')==1)
       valTheta=xx.Theta.HALV.val;
       valAlpha=xx.Alpha.HALV.val;
       valBeta1=xx.Beta1.HALV.val;
       valBeta2=xx.Beta2.HALV.val;
       
       aroTheta=xx.Theta.HALV.aro;
       aroAlpha=xx.Alpha.HALV.aro;
       aroBeta1=xx.Beta1.HALV.aro;
       aroBeta2=xx.Beta2.HALV.aro;
       
              %HALV    
       Theta.HALV.valence=[Theta.HALV.valence;valTheta];
       Alpha.HALV.valence=[Alpha.HALV.valence;valAlpha];
       Beta1.HALV.valence=[Beta1.HALV.valence;valBeta1];
       Beta2.HALV.valence=[Beta2.HALV.valence;valBeta2];
       
       Theta.HALV.arousal=[Theta.HALV.arousal;aroTheta];
       Alpha.HALV.arousal=[Alpha.HALV.arousal;aroAlpha];
       Beta1.HALV.arousal=[Beta1.HALV.arousal;aroBeta1];
       Beta2.HALV.arousal=[Beta2.HALV.arousal;aroBeta2];
%        save([pathname3,filename11],'Theta','Alpha','Beta1','Beta2','type');
       end
       
       if (strcmp(type,'LAHV')==1)
       valTheta=xx.Theta.LAHV.val;
       valAlpha=xx.Alpha.LAHV.val;
       valBeta1=xx.Beta1.LAHV.val;
       valBeta2=xx.Beta2.LAHV.val;
       
       aroTheta=xx.Theta.LAHV.aro;
       aroAlpha=xx.Alpha.LAHV.aro;
       aroBeta1=xx.Beta1.LAHV.aro;
       aroBeta2=xx.Beta2.LAHV.aro;
       
              %LAHV    
       Theta.LAHV.valence=[Theta.LAHV.valence;valTheta];
       Alpha.LAHV.valence=[Alpha.LAHV.valence;valAlpha];
       Beta1.LAHV.valence=[Beta1.LAHV.valence;valBeta1];
       Beta2.LAHV.valence=[Beta2.LAHV.valence;valBeta2];
       
       Theta.LAHV.arousal=[Theta.LAHV.arousal;aroTheta];
       Alpha.LAHV.arousal=[Alpha.LAHV.arousal;aroAlpha];
       Beta1.LAHV.arousal=[Beta1.LAHV.arousal;aroBeta1];
       Beta2.LAHV.arousal=[Beta2.LAHV.arousal;aroBeta2];
%        save([pathname3,filename11],'Theta','Alpha','Beta1','Beta2','type');
       end
       
       if (strcmp(type,'LALV')==1)
       valTheta=xx.Theta.LALV.val;
       valAlpha=xx.Alpha.LALV.val;
       valBeta1=xx.Beta1.LALV.val;
       valBeta2=xx.Beta2.LALV.val;
       
       aroTheta=xx.Theta.LALV.aro;
       aroAlpha=xx.Alpha.LALV.aro;
       aroBeta1=xx.Beta1.LALV.aro;
       aroBeta2=xx.Beta2.LALV.aro;
       
              %LALV    
       Theta.LALV.valence=[Theta.LALV.valence;valTheta];
       Alpha.LALV.valence=[Alpha.LALV.valence;valAlpha];
       Beta1.LALV.valence=[Beta1.LALV.valence;valBeta1];
       Beta2.LALV.valence=[Beta2.LALV.valence;valBeta2];
       
       Theta.LALV.arousal=[Theta.LALV.arousal;aroTheta];
       Alpha.LALV.arousal=[Alpha.LALV.arousal;aroAlpha];
       Beta1.LALV.arousal=[Beta1.LALV.arousal;aroBeta1];
       Beta2.LALV.arousal=[Beta2.LALV.arousal;aroBeta2];
%        save([pathname3,filename11],'Theta','Alpha','Beta1','Beta2','type');
       end
       
       save([pathname3,filename11],'Theta','Alpha','Beta1','Beta2','type');
       

    end
    

end