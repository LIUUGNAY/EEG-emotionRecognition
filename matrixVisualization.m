

x = load('E:\脑电数据集\不分波段-PLV矩阵\s01\s01-1.mat');
figure;
imagesc(x.HAHV.PLV1);
figure;
imagesc(x.LAHV.PLV1);
figure;
imagesc(x.HALV.PLV1);
figure;
imagesc(x.LALV.PLV1);

