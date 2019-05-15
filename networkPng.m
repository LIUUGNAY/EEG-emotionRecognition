x =load('E:\脑电数据集\分标签二值化矩阵\s01\s01-1\6.mat');
A = x.Theta.HAHV.PLV1;
flag = 2;
netplot(A,flag);