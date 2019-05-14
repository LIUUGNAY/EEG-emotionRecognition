%简单交叉验证
%将特征与标签逐一分离
%计算每个特征的准确率

x=load('E:\脑电数据集\所有波段合并\sumBandAttribute.mat');

xxTheVal=x.Theta.PLV2.valence;
xxTheAro=x.Theta.PLV2.arousal;
xxAlpVal=x.Alpha.PLV2.valence;
xxAlpAro=x.Alpha.PLV2.arousal;
xxBe1Val=x.Beta1.PLV2.valence;
xxBe1Aro=x.Beta1.PLV2.arousal;
xxBe2Val=x.Beta2.PLV2.valence;
xxBe2Aro=x.Beta2.PLV2.arousal;

dataTheValclu=xxTheVal(:, 1);
dataTheValass=xxTheVal(:, 2);
dataTheValglo=xxTheVal(:, 3);
dataTheValloc=xxTheVal(:, 4);
dataTheValpat=xxTheVal(:, 5);
dataTheValmod=xxTheVal(:, 6);
dataTheValbet=xxTheVal(:, 7);
dataTheVal=xxTheVal(:, 1:7);
labelTheVal=xxTheVal(:, 8);

dataTheAroclu=xxTheAro(:, 1);
dataTheAroass=xxTheAro(:, 2);
dataTheAroglo=xxTheAro(:, 3);
dataTheAroloc=xxTheAro(:, 4);
dataTheAropat=xxTheAro(:, 5);
dataTheAromod=xxTheAro(:, 6);
dataTheArobet=xxTheAro(:, 7);
dataTheAro=xxTheAro(:, 1:7);
labelTheAro=xxTheAro(:, 8);


dataAlpValclu=xxAlpVal(:, 1);
dataAlpValass=xxAlpVal(:, 2);
dataAlpValglo=xxAlpVal(:, 3);
dataAlpValloc=xxAlpVal(:, 4);
dataAlpValpat=xxAlpVal(:, 5);
dataAlpValmod=xxAlpVal(:, 6);
dataAlpValbet=xxAlpVal(:, 7);
dataAlpVal=xxAlpVal(:, 1:7);
labelAlpVal=xxAlpVal(:, 8);

dataAlpAroclu=xxAlpAro(:, 1);
dataAlpAroass=xxAlpAro(:, 2);
dataAlpAroglo=xxAlpAro(:, 3);
dataAlpAroloc=xxAlpAro(:, 4);
dataAlpAropat=xxAlpAro(:, 5);
dataAlpAromod=xxAlpAro(:, 6);
dataAlpArobet=xxAlpAro(:, 7);
dataAlpAro=xxAlpAro(:, 1:7);
labelAlpAro=xxAlpAro(:, 8);


dataBe1Valclu=xxBe1Val(:, 1);
dataBe1Valass=xxBe1Val(:, 2);
dataBe1Valglo=xxBe1Val(:, 3);
dataBe1Valloc=xxBe1Val(:, 4);
dataBe1Valpat=xxBe1Val(:, 5);
dataBe1Valmod=xxBe1Val(:, 6);
dataBe1Valbet=xxBe1Val(:, 7);
dataBe1Val=xxBe1Val(:, 1:7);
labelBe1Val=xxBe1Val(:, 8);

dataBe1Aroclu=xxBe1Aro(:, 1);
dataBe1Aroass=xxBe1Aro(:, 2);
dataBe1Aroglo=xxBe1Aro(:, 3);
dataBe1Aroloc=xxBe1Aro(:, 4);
dataBe1Aropat=xxBe1Aro(:, 5);
dataBe1Aromod=xxBe1Aro(:, 6);
dataBe1Arobet=xxBe1Aro(:, 7);
dataBe1Aro=xxBe1Aro(:, 1:7);
labelBe1Aro=xxBe1Aro(:, 8);

dataBe2Valclu=xxBe2Val(:, 1);
dataBe2Valass=xxBe2Val(:, 2);
dataBe2Valglo=xxBe2Val(:, 3);
dataBe2Valloc=xxBe2Val(:, 4);
dataBe2Valpat=xxBe2Val(:, 5);
dataBe2Valmod=xxBe2Val(:, 6);
dataBe2Valbet=xxBe2Val(:, 7);
dataBe2Val=xxBe2Val(:, 1:7);
labelBe2Val=xxBe2Val(:, 8);

dataBe2Aroclu=xxBe2Aro(:, 1);
dataBe2Aroass=xxBe2Aro(:, 2);
dataBe2Aroglo=xxBe2Aro(:, 3);
dataBe2Aroloc=xxBe2Aro(:, 4);
dataBe2Aropat=xxBe2Aro(:, 5);
dataBe2Aromod=xxBe2Aro(:, 6);
dataBe2Arobet=xxBe2Aro(:, 7);
dataBe2Aro=xxBe2Aro(:, 1:7);
labelBe2Aro=xxBe2Aro(:, 8);

global accuracy;

SVMtest7fun(dataTheValclu,labelTheVal);
SVMtest7fun(dataTheValass,labelTheVal);
SVMtest7fun(dataTheValglo,labelTheVal);
SVMtest7fun(dataTheValloc,labelTheVal);
SVMtest7fun(dataTheValpat,labelTheVal);
SVMtest7fun(dataTheValmod,labelTheVal);
SVMtest7fun(dataTheValbet,labelTheVal);

SVMtest7fun(dataTheAroclu,labelTheAro);
SVMtest7fun(dataTheAroass,labelTheAro);
SVMtest7fun(dataTheAroglo,labelTheAro);
SVMtest7fun(dataTheAroloc,labelTheAro);
SVMtest7fun(dataTheAropat,labelTheAro);
SVMtest7fun(dataTheAromod,labelTheAro);
SVMtest7fun(dataTheArobet,labelTheAro);


SVMtest7fun(dataAlpValclu,labelAlpVal);
SVMtest7fun(dataAlpValass,labelAlpVal);
SVMtest7fun(dataAlpValglo,labelAlpVal);
SVMtest7fun(dataAlpValloc,labelAlpVal);
SVMtest7fun(dataAlpValpat,labelAlpVal);
SVMtest7fun(dataAlpValmod,labelAlpVal);
SVMtest7fun(dataAlpValbet,labelAlpVal);

SVMtest7fun(dataAlpAroclu,labelAlpAro);
SVMtest7fun(dataAlpAroass,labelAlpAro);
SVMtest7fun(dataAlpAroglo,labelAlpAro);
SVMtest7fun(dataAlpAroloc,labelAlpAro);
SVMtest7fun(dataAlpAropat,labelAlpAro);
SVMtest7fun(dataAlpAromod,labelAlpAro);
SVMtest7fun(dataAlpArobet,labelAlpAro);


SVMtest7fun(dataBe1Valclu,labelBe1Val);
SVMtest7fun(dataBe1Valass,labelBe1Val);
SVMtest7fun(dataBe1Valglo,labelBe1Val);
SVMtest7fun(dataBe1Valloc,labelBe1Val);
SVMtest7fun(dataBe1Valpat,labelBe1Val);
SVMtest7fun(dataBe1Valmod,labelBe1Val);
SVMtest7fun(dataBe1Valbet,labelBe1Val);

SVMtest7fun(dataBe1Aroclu,labelBe1Aro);
SVMtest7fun(dataBe1Aroass,labelBe1Aro);
SVMtest7fun(dataBe1Aroglo,labelBe1Aro);
SVMtest7fun(dataBe1Aroloc,labelBe1Aro);
SVMtest7fun(dataBe1Aropat,labelBe1Aro);
SVMtest7fun(dataBe1Aromod,labelBe1Aro);
SVMtest7fun(dataBe1Arobet,labelBe1Aro);


SVMtest7fun(dataBe2Valclu,labelBe2Val);
SVMtest7fun(dataBe2Valass,labelBe2Val);
SVMtest7fun(dataBe2Valglo,labelBe2Val);
SVMtest7fun(dataBe2Valloc,labelBe2Val);
SVMtest7fun(dataBe2Valpat,labelBe2Val);
SVMtest7fun(dataBe2Valmod,labelBe2Val);
SVMtest7fun(dataBe2Valbet,labelBe2Val);

SVMtest7fun(dataBe2Aroclu,labelBe2Aro);
SVMtest7fun(dataBe2Aroass,labelBe2Aro);
SVMtest7fun(dataBe2Aroglo,labelBe2Aro);
SVMtest7fun(dataBe2Aroloc,labelBe2Aro);
SVMtest7fun(dataBe2Aropat,labelBe2Aro);
SVMtest7fun(dataBe2Aromod,labelBe2Aro);
SVMtest7fun(dataBe2Arobet,labelBe2Aro);
