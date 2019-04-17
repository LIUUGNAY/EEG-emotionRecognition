 z=load('E:\脑电数据集\分时间序列数据\s01\s01-1.mat'); 
 pathname1='E:\脑电数据集\分时间序列数据\';
 pathname3='E:\脑电数据集\PLV矩阵\';
 for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
    end
    pathname2=[pathname1,filename1];
    pathname4=[pathname3,filename1];
    mkdir(pathname3,filename1);%首次执行时需要创建新的文件夹，再次执行可不用
    %每人40次试验
    for j=1:40
       if k<10
           filename2=sprintf('s0%d-%d',k,j);
       end
       if k>=10
           filename2=sprintf('s%d-%d',k,j);
       end
       x=load([pathname2,filename2]);
       z1=x.data1;
       z2=x.data2;
       
       %处理前10秒的数据（data1），算PLV1
   %    n=1280;
      culture = z1;             
phases = size(culture, 1);     % size将返回矩阵的行数
%  C = nchoosek(v,k), 其中v是一个长度为n的行向量，创建一个矩阵，该矩阵的行由每次从v中的n个元素取出k个取值的所有可能组合构成。
posiblecouple_phases = nchoosek(1 : phases, 2);

Network1 = zeros(phases, phases);
for comb = 1 : size(posiblecouple_phases, 1)
    pair_phases = culture(posiblecouple_phases(comb, :), :);
    deltaPhases = pair_phases(1, :) - pair_phases(2, :);
    %real and imaginary part of phasor  相量的实部和虚部
    real = cos(deltaPhases);
    imag = sin(deltaPhases);
    %time average of real and imaginary components   实部和虚部的时间平均值
    mean_real = mean(real);
    mean_imag = mean(imag);
    % components to the power two  二次幂的分量
    powreal = mean_real^2;
    powimag = mean_imag^2;
    % sum of the second power of real and imaginary sums   实和虚和的二次幂之和
    sumpows = powreal + powimag;
    % % local synchronizations per couple of phases or squared root of sum of the second power of real and imaginary sums (amplitutes)
    %%每对相位的局部同步或实数和虚数之和的平方根(振幅)
    r = sqrt(sumpows);
    %%%% OUTPUTs
    % all local kuram parameters into a network
    r_c = posiblecouple_phases(comb, :);    %localizing row and column to storage R value
    Network1(r_c(1), r_c(2)) = r;
end
 NormNetwork1 = Network1 + Network1';
      



       %处理后10秒的数据（data2），算PLV2
       % n=1280;
           culture = z2;              %culture day phases
phases = size(culture, 1);     %neurons in culture day size将返回矩阵的行数
%    C = nchoosek(v,k), 其中v是一个长度为n的行向量，创建一个矩阵，该矩阵的行由每次从v中的n个元素取出k个取值的所有可能组合构成。
posiblecouple_phases = nchoosek(1 : phases, 2);  

Network2 = zeros(phases, phases);
for comb = 1 : size(posiblecouple_phases, 1)
    pair_phases = culture(posiblecouple_phases(comb, :), :);
    deltaPhases = pair_phases(1, :) - pair_phases(2, :);
    %real and imaginary part of phasor
    real = cos(deltaPhases);
    imag = sin(deltaPhases);
    %time average of real and imaginary components
    mean_real = mean(real);
    mean_imag = mean(imag);
    % components to the power two
    powreal = mean_real^2;
    powimag = mean_imag^2;
    % sum of the second power of real and imaginary sums
    sumpows = powreal + powimag;
    % % local synchronizations per couple of phases or squared root of sum of the second power of real and imaginary sums (amplitutes)
    r = sqrt(sumpows);
    %%%% OUTPUTs
    % all local kuram parameters into a network
    r_c = posiblecouple_phases(comb, :);    %localizing row and column to storage R value
    Network2(r_c(1), r_c(2)) = r;
end
 NormNetwork2 = Network2 + Network2';
      save([pathname4,filename2],'NormNetwork1','NormNetwork2');
    end
 end
