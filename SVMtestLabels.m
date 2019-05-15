%将数据按类别进行合并
%Arousal：HAHV & LAHV ; LALV & HALV
%Valence: HAHV & HALV ; LAHV & LALV

clear global accuracy;

x=load('E:\脑电数据集\四种标签合并\difEmoSumLabels.mat');

%Arousal
%---Theta
Theta1v2aro=[x.Theta.HAHV.arousal;x.Theta.LAHV.arousal];
Theta3v4aro=[x.Theta.LALV.arousal;x.Theta.HALV.arousal];
%---Alpha
Alpha1v2aro=[x.Alpha.HAHV.arousal;x.Alpha.LAHV.arousal];
Alpha3v4aro=[x.Alpha.LALV.arousal;x.Alpha.HALV.arousal];
%---Beta1
Beta11v2aro=[x.Beta1.HAHV.arousal;x.Beta1.LAHV.arousal];
Beta13v4aro=[x.Beta1.LALV.arousal;x.Beta1.HALV.arousal];
%---Beta1
Beta21v2aro=[x.Beta2.HAHV.arousal;x.Beta2.LAHV.arousal];
Beta23v4aro=[x.Beta2.LALV.arousal;x.Beta2.HALV.arousal];

%Valence
%---Theta
Theta1v4val=[x.Theta.HAHV.valence;x.Theta.HALV.valence];
Theta2v3val=[x.Theta.LAHV.valence;x.Theta.LALV.valence];
%---Alpha
Alpha1v4val=[x.Alpha.HAHV.valence;x.Alpha.HALV.valence];
Alpha2v3val=[x.Alpha.LAHV.valence;x.Alpha.LALV.valence];
%---Beta1
Beta11v4val=[x.Beta1.HAHV.valence;x.Beta1.HALV.valence];
Beta12v3val=[x.Beta1.LAHV.valence;x.Beta1.LALV.valence];
%---Beta1
Beta21v4val=[x.Beta2.HAHV.valence;x.Beta2.HALV.valence];
Beta22v3val=[x.Beta2.LAHV.valence;x.Beta2.LALV.valence];

%Arousal
%---Theta1v2
Theta1v2aroclu=Theta1v2aro(:, 1);
Theta1v2aroass=Theta1v2aro(:, 2);
Theta1v2aroglo=Theta1v2aro(:, 3);
Theta1v2aroloc=Theta1v2aro(:, 4);
Theta1v2aropat=Theta1v2aro(:, 5);
Theta1v2aromod=Theta1v2aro(:, 6);
Theta1v2arobet=Theta1v2aro(:, 7);
Theta1v2aroatt=Theta1v2aro(:, 1:7);
Theta1v2arolabel=Theta1v2aro(:, 8);
%---Theta3v4
Theta3v4aroclu=Theta3v4aro(:, 1);
Theta3v4aroass=Theta3v4aro(:, 2);
Theta3v4aroglo=Theta3v4aro(:, 3);
Theta3v4aroloc=Theta3v4aro(:, 4);
Theta3v4aropat=Theta3v4aro(:, 5);
Theta3v4aromod=Theta3v4aro(:, 6);
Theta3v4arobet=Theta3v4aro(:, 7);
Theta3v4aroatt=Theta3v4aro(:, 1:7);
Theta3v4arolabel=Theta3v4aro(:, 8);

%---Alpha1v2
Alpha1v2aroclu=Alpha1v2aro(:, 1);
Alpha1v2aroass=Alpha1v2aro(:, 2);
Alpha1v2aroglo=Alpha1v2aro(:, 3);
Alpha1v2aroloc=Alpha1v2aro(:, 4);
Alpha1v2aropat=Alpha1v2aro(:, 5);
Alpha1v2aromod=Alpha1v2aro(:, 6);
Alpha1v2arobet=Alpha1v2aro(:, 7);
Alpha1v2aroatt=Alpha1v2aro(:, 1:7);
Alpha1v2arolabel=Alpha1v2aro(:, 8);
%---Alpha3v4
Alpha3v4aroclu=Alpha3v4aro(:, 1);
Alpha3v4aroass=Alpha3v4aro(:, 2);
Alpha3v4aroglo=Alpha3v4aro(:, 3);
Alpha3v4aroloc=Alpha3v4aro(:, 4);
Alpha3v4aropat=Alpha3v4aro(:, 5);
Alpha3v4aromod=Alpha3v4aro(:, 6);
Alpha3v4arobet=Alpha3v4aro(:, 7);
Alpha3v4aroatt=Alpha3v4aro(:, 1:7);
Alpha3v4arolabel=Alpha3v4aro(:, 8);

%---Beta11v2
Beta11v2aroclu=Beta11v2aro(:, 1);
Beta11v2aroass=Beta11v2aro(:, 2);
Beta11v2aroglo=Beta11v2aro(:, 3);
Beta11v2aroloc=Beta11v2aro(:, 4);
Beta11v2aropat=Beta11v2aro(:, 5);
Beta11v2aromod=Beta11v2aro(:, 6);
Beta11v2arobet=Beta11v2aro(:, 7);
Beta11v2aroatt=Beta11v2aro(:, 1:7);
Beta11v2arolabel=Beta11v2aro(:, 8);
%---Beta13v4
Beta13v4aroclu=Beta13v4aro(:, 1);
Beta13v4aroass=Beta13v4aro(:, 2);
Beta13v4aroglo=Beta13v4aro(:, 3);
Beta13v4aroloc=Beta13v4aro(:, 4);
Beta13v4aropat=Beta13v4aro(:, 5);
Beta13v4aromod=Beta13v4aro(:, 6);
Beta13v4arobet=Beta13v4aro(:, 7);
Beta13v4aroatt=Beta13v4aro(:, 1:7);
Beta13v4arolabel=Beta13v4aro(:, 8);

%---Beta21v2
Beta21v2aroclu=Beta21v2aro(:, 1);
Beta21v2aroass=Beta21v2aro(:, 2);
Beta21v2aroglo=Beta21v2aro(:, 3);
Beta21v2aroloc=Beta21v2aro(:, 4);
Beta21v2aropat=Beta21v2aro(:, 5);
Beta21v2aromod=Beta21v2aro(:, 6);
Beta21v2arobet=Beta21v2aro(:, 7);
Beta21v2aroatt=Beta21v2aro(:, 1:7);
Beta21v2arolabel=Beta21v2aro(:, 8);
%---Beta23v4
Beta23v4aroclu=Beta23v4aro(:, 1);
Beta23v4aroass=Beta23v4aro(:, 2);
Beta23v4aroglo=Beta23v4aro(:, 3);
Beta23v4aroloc=Beta23v4aro(:, 4);
Beta23v4aropat=Beta23v4aro(:, 5);
Beta23v4aromod=Beta23v4aro(:, 6);
Beta23v4arobet=Beta23v4aro(:, 7);
Beta23v4aroatt=Beta23v4aro(:, 1:7);
Beta23v4arolabel=Beta23v4aro(:, 8);


%Valence
%---Theta1v4
Theta1v4valclu=Theta1v4val(:, 1);
Theta1v4valass=Theta1v4val(:, 2);
Theta1v4valglo=Theta1v4val(:, 3);
Theta1v4valloc=Theta1v4val(:, 4);
Theta1v4valpat=Theta1v4val(:, 5);
Theta1v4valmod=Theta1v4val(:, 6);
Theta1v4valbet=Theta1v4val(:, 7);
Theta1v4valatt=Theta1v4val(:, 1:7);
Theta1v4vallabel=Theta1v4val(:, 8);
%---Theta2v3
Theta2v3valclu=Theta2v3val(:, 1);
Theta2v3valass=Theta2v3val(:, 2);
Theta2v3valglo=Theta2v3val(:, 3);
Theta2v3valloc=Theta2v3val(:, 4);
Theta2v3valpat=Theta2v3val(:, 5);
Theta2v3valmod=Theta2v3val(:, 6);
Theta2v3valbet=Theta2v3val(:, 7);
Theta2v3valatt=Theta2v3val(:, 1:7);
Theta2v3vallabel=Theta2v3val(:, 8);

%---Alpha1v4
Alpha1v4valclu=Alpha1v4val(:, 1);
Alpha1v4valass=Alpha1v4val(:, 2);
Alpha1v4valglo=Alpha1v4val(:, 3);
Alpha1v4valloc=Alpha1v4val(:, 4);
Alpha1v4valpat=Alpha1v4val(:, 5);
Alpha1v4valmod=Alpha1v4val(:, 6);
Alpha1v4valbet=Alpha1v4val(:, 7);
Alpha1v4valatt=Alpha1v4val(:, 1:7);
Alpha1v4vallabel=Alpha1v4val(:, 8);
%---Alpha2v3
Alpha2v3valclu=Alpha2v3val(:, 1);
Alpha2v3valass=Alpha2v3val(:, 2);
Alpha2v3valglo=Alpha2v3val(:, 3);
Alpha2v3valloc=Alpha2v3val(:, 4);
Alpha2v3valpat=Alpha2v3val(:, 5);
Alpha2v3valmod=Alpha2v3val(:, 6);
Alpha2v3valbet=Alpha2v3val(:, 7);
Alpha2v3valatt=Alpha2v3val(:, 1:7);
Alpha2v3vallabel=Alpha2v3val(:, 8);

%---Beta11v4
Beta11v4valclu=Beta11v4val(:, 1);
Beta11v4valass=Beta11v4val(:, 2);
Beta11v4valglo=Beta11v4val(:, 3);
Beta11v4valloc=Beta11v4val(:, 4);
Beta11v4valpat=Beta11v4val(:, 5);
Beta11v4valmod=Beta11v4val(:, 6);
Beta11v4valbet=Beta11v4val(:, 7);
Beta11v4valatt=Beta11v4val(:, 1:7);
Beta11v4vallabel=Beta11v4val(:, 8);
%---Beta12v3
Beta12v3valclu=Beta12v3val(:, 1);
Beta12v3valass=Beta12v3val(:, 2);
Beta12v3valglo=Beta12v3val(:, 3);
Beta12v3valloc=Beta12v3val(:, 4);
Beta12v3valpat=Beta12v3val(:, 5);
Beta12v3valmod=Beta12v3val(:, 6);
Beta12v3valbet=Beta12v3val(:, 7);
Beta12v3valatt=Beta12v3val(:, 1:7);
Beta12v3vallabel=Beta12v3val(:, 8);

%---Beta21v4
Beta21v4valclu=Beta21v4val(:, 1);
Beta21v4valass=Beta21v4val(:, 2);
Beta21v4valglo=Beta21v4val(:, 3);
Beta21v4valloc=Beta21v4val(:, 4);
Beta21v4valpat=Beta21v4val(:, 5);
Beta21v4valmod=Beta21v4val(:, 6);
Beta21v4valbet=Beta21v4val(:, 7);
Beta21v4valatt=Beta21v4val(:, 1:7);
Beta21v4vallabel=Beta21v4val(:, 8);
%---Beta22v3
Beta22v3valclu=Beta22v3val(:, 1);
Beta22v3valass=Beta22v3val(:, 2);
Beta22v3valglo=Beta22v3val(:, 3);
Beta22v3valloc=Beta22v3val(:, 4);
Beta22v3valpat=Beta22v3val(:, 5);
Beta22v3valmod=Beta22v3val(:, 6);
Beta22v3valbet=Beta22v3val(:, 7);
Beta22v3valatt=Beta22v3val(:, 1:7);
Beta22v3vallabel=Beta22v3val(:, 8);

global accuracy;

%Theta1v2aro
SVMtest7fun1(Theta1v2aroclu,Theta1v2arolabel);
SVMtest7fun1(Theta1v2aroass,Theta1v2arolabel);
SVMtest7fun1(Theta1v2aroglo,Theta1v2arolabel);
SVMtest7fun1(Theta1v2aroloc,Theta1v2arolabel);
SVMtest7fun1(Theta1v2aropat,Theta1v2arolabel);
SVMtest7fun1(Theta1v2aromod,Theta1v2arolabel);
SVMtest7fun1(Theta1v2arobet,Theta1v2arolabel);
SVMtest7fun1(Theta1v2aroatt,Theta1v2arolabel);
%Theta3v4aro
SVMtest7fun1(Theta3v4aroclu,Theta3v4arolabel);
SVMtest7fun1(Theta3v4aroass,Theta3v4arolabel);
SVMtest7fun1(Theta3v4aroglo,Theta3v4arolabel);
SVMtest7fun1(Theta3v4aroloc,Theta3v4arolabel);
SVMtest7fun1(Theta3v4aropat,Theta3v4arolabel);
SVMtest7fun1(Theta3v4aromod,Theta3v4arolabel);
SVMtest7fun1(Theta3v4arobet,Theta3v4arolabel);
SVMtest7fun1(Theta3v4aroatt,Theta3v4arolabel);

%Alpha1v2aro
SVMtest7fun1(Alpha1v2aroclu,Alpha1v2arolabel);
SVMtest7fun1(Alpha1v2aroass,Alpha1v2arolabel);
SVMtest7fun1(Alpha1v2aroglo,Alpha1v2arolabel);
SVMtest7fun1(Alpha1v2aroloc,Alpha1v2arolabel);
SVMtest7fun1(Alpha1v2aropat,Alpha1v2arolabel);
SVMtest7fun1(Alpha1v2aromod,Alpha1v2arolabel);
SVMtest7fun1(Alpha1v2arobet,Alpha1v2arolabel);
SVMtest7fun1(Alpha1v2aroatt,Alpha1v2arolabel);
%Alpha3v4aro
SVMtest7fun1(Alpha3v4aroclu,Alpha3v4arolabel);
SVMtest7fun1(Alpha3v4aroass,Alpha3v4arolabel);
SVMtest7fun1(Alpha3v4aroglo,Alpha3v4arolabel);
SVMtest7fun1(Alpha3v4aroloc,Alpha3v4arolabel);
SVMtest7fun1(Alpha3v4aropat,Alpha3v4arolabel);
SVMtest7fun1(Alpha3v4aromod,Alpha3v4arolabel);
SVMtest7fun1(Alpha3v4arobet,Alpha3v4arolabel);
SVMtest7fun1(Alpha3v4aroatt,Alpha3v4arolabel);

%Beta11v2aro
SVMtest7fun1(Beta11v2aroclu,Beta11v2arolabel);
SVMtest7fun1(Beta11v2aroass,Beta11v2arolabel);
SVMtest7fun1(Beta11v2aroglo,Beta11v2arolabel);
SVMtest7fun1(Beta11v2aroloc,Beta11v2arolabel);
SVMtest7fun1(Beta11v2aropat,Beta11v2arolabel);
SVMtest7fun1(Beta11v2aromod,Beta11v2arolabel);
SVMtest7fun1(Beta11v2arobet,Beta11v2arolabel);
SVMtest7fun1(Beta11v2aroatt,Beta11v2arolabel);
%Beta13v4aro
SVMtest7fun1(Beta13v4aroclu,Beta13v4arolabel);
SVMtest7fun1(Beta13v4aroass,Beta13v4arolabel);
SVMtest7fun1(Beta13v4aroglo,Beta13v4arolabel);
SVMtest7fun1(Beta13v4aroloc,Beta13v4arolabel);
SVMtest7fun1(Beta13v4aropat,Beta13v4arolabel);
SVMtest7fun1(Beta13v4aromod,Beta13v4arolabel);
SVMtest7fun1(Beta13v4arobet,Beta13v4arolabel);
SVMtest7fun1(Beta13v4aroatt,Beta13v4arolabel);

%Beta21v2aro
SVMtest7fun1(Beta21v2aroclu,Beta21v2arolabel);
SVMtest7fun1(Beta21v2aroass,Beta21v2arolabel);
SVMtest7fun1(Beta21v2aroglo,Beta21v2arolabel);
SVMtest7fun1(Beta21v2aroloc,Beta21v2arolabel);
SVMtest7fun1(Beta21v2aropat,Beta21v2arolabel);
SVMtest7fun1(Beta21v2aromod,Beta21v2arolabel);
SVMtest7fun1(Beta21v2arobet,Beta21v2arolabel);
SVMtest7fun1(Beta21v2aroatt,Beta21v2arolabel);
%Beta23v4aro
SVMtest7fun1(Beta23v4aroclu,Beta23v4arolabel);
SVMtest7fun1(Beta23v4aroass,Beta23v4arolabel);
SVMtest7fun1(Beta23v4aroglo,Beta23v4arolabel);
SVMtest7fun1(Beta23v4aroloc,Beta23v4arolabel);
SVMtest7fun1(Beta23v4aropat,Beta23v4arolabel);
SVMtest7fun1(Beta23v4aromod,Beta23v4arolabel);
SVMtest7fun1(Beta23v4arobet,Beta23v4arolabel);
SVMtest7fun1(Beta23v4aroatt,Beta23v4arolabel);




%Theta1v4val
SVMtest7fun1(Theta1v4valclu,Theta1v4vallabel);
SVMtest7fun1(Theta1v4valass,Theta1v4vallabel);
SVMtest7fun1(Theta1v4valglo,Theta1v4vallabel);
SVMtest7fun1(Theta1v4valloc,Theta1v4vallabel);
SVMtest7fun1(Theta1v4valpat,Theta1v4vallabel);
SVMtest7fun1(Theta1v4valmod,Theta1v4vallabel);
SVMtest7fun1(Theta1v4valbet,Theta1v4vallabel);
SVMtest7fun1(Theta1v4valatt,Theta1v4vallabel);
%Theta2v3val
SVMtest7fun1(Theta2v3valclu,Theta2v3vallabel);
SVMtest7fun1(Theta2v3valass,Theta2v3vallabel);
SVMtest7fun1(Theta2v3valglo,Theta2v3vallabel);
SVMtest7fun1(Theta2v3valloc,Theta2v3vallabel);
SVMtest7fun1(Theta2v3valpat,Theta2v3vallabel);
SVMtest7fun1(Theta2v3valmod,Theta2v3vallabel);
SVMtest7fun1(Theta2v3valbet,Theta2v3vallabel);
SVMtest7fun1(Theta2v3valatt,Theta2v3vallabel);

%Alpha1v4val
SVMtest7fun1(Alpha1v4valclu,Alpha1v4vallabel);
SVMtest7fun1(Alpha1v4valass,Alpha1v4vallabel);
SVMtest7fun1(Alpha1v4valglo,Alpha1v4vallabel);
SVMtest7fun1(Alpha1v4valloc,Alpha1v4vallabel);
SVMtest7fun1(Alpha1v4valpat,Alpha1v4vallabel);
SVMtest7fun1(Alpha1v4valmod,Alpha1v4vallabel);
SVMtest7fun1(Alpha1v4valbet,Alpha1v4vallabel);
SVMtest7fun1(Alpha1v4valatt,Alpha1v4vallabel);
%Alpha2v3val
SVMtest7fun1(Alpha2v3valclu,Alpha2v3vallabel);
SVMtest7fun1(Alpha2v3valass,Alpha2v3vallabel);
SVMtest7fun1(Alpha2v3valglo,Alpha2v3vallabel);
SVMtest7fun1(Alpha2v3valloc,Alpha2v3vallabel);
SVMtest7fun1(Alpha2v3valpat,Alpha2v3vallabel);
SVMtest7fun1(Alpha2v3valmod,Alpha2v3vallabel);
SVMtest7fun1(Alpha2v3valbet,Alpha2v3vallabel);
SVMtest7fun1(Alpha2v3valatt,Alpha2v3vallabel);

%Beta11v4val
SVMtest7fun1(Beta11v4valclu,Beta11v4vallabel);
SVMtest7fun1(Beta11v4valass,Beta11v4vallabel);
SVMtest7fun1(Beta11v4valglo,Beta11v4vallabel);
SVMtest7fun1(Beta11v4valloc,Beta11v4vallabel);
SVMtest7fun1(Beta11v4valpat,Beta11v4vallabel);
SVMtest7fun1(Beta11v4valmod,Beta11v4vallabel);
SVMtest7fun1(Beta11v4valbet,Beta11v4vallabel);
SVMtest7fun1(Beta11v4valatt,Beta11v4vallabel);
%Beta12v3val
SVMtest7fun1(Beta12v3valclu,Beta12v3vallabel);
SVMtest7fun1(Beta12v3valass,Beta12v3vallabel);
SVMtest7fun1(Beta12v3valglo,Beta12v3vallabel);
SVMtest7fun1(Beta12v3valloc,Beta12v3vallabel);
SVMtest7fun1(Beta12v3valpat,Beta12v3vallabel);
SVMtest7fun1(Beta12v3valmod,Beta12v3vallabel);
SVMtest7fun1(Beta12v3valbet,Beta12v3vallabel);
SVMtest7fun1(Beta12v3valatt,Beta12v3vallabel);

%Beta21v4val
SVMtest7fun1(Beta21v4valclu,Beta21v4vallabel);
SVMtest7fun1(Beta21v4valass,Beta21v4vallabel);
SVMtest7fun1(Beta21v4valglo,Beta21v4vallabel);
SVMtest7fun1(Beta21v4valloc,Beta21v4vallabel);
SVMtest7fun1(Beta21v4valpat,Beta21v4vallabel);
SVMtest7fun1(Beta21v4valmod,Beta21v4vallabel);
SVMtest7fun1(Beta21v4valbet,Beta21v4vallabel);
SVMtest7fun1(Beta21v4valatt,Beta21v4vallabel);
%Beta22v3val
SVMtest7fun1(Beta22v3valclu,Beta22v3vallabel);
SVMtest7fun1(Beta22v3valass,Beta22v3vallabel);
SVMtest7fun1(Beta22v3valglo,Beta22v3vallabel);
SVMtest7fun1(Beta22v3valloc,Beta22v3vallabel);
SVMtest7fun1(Beta22v3valpat,Beta22v3vallabel);
SVMtest7fun1(Beta22v3valmod,Beta22v3vallabel);
SVMtest7fun1(Beta22v3valbet,Beta22v3vallabel);
SVMtest7fun1(Beta22v3valatt,Beta22v3vallabel);
