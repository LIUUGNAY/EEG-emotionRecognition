
x = load('E:\�Ե����ݼ�\ǰPLV����\s01\s01-1.mat');
thr = 0.12;
mkdir('E:\�Ե����ݼ�\��ֵ������\s01\');
y= f_ThresholdSimple(x.postAlpha);
save('E:\�Ե����ݼ�\��ֵ������\s01\s01-1','y');
figure;
imagesc(y);


