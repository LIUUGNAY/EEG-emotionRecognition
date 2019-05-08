
x = load('E:\脑电数据集\前PLV矩阵\s01\s01-1.mat');
thr = 0.12;
mkdir('E:\脑电数据集\二值化矩阵\s01\');
y= f_ThresholdSimple(x.postAlpha);
save('E:\脑电数据集\二值化矩阵\s01\s01-1','y');
figure;
imagesc(y);


