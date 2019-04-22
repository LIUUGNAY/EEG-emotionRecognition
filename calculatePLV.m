function [ NormNetwork1] = calculatePLV( culture)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明

phases = size(culture, 1);     % size将返回矩阵的行数
%  C = nchoosek(v,k), 其中v是一个长度为n的行向量，创建一个矩阵，该矩阵的行由每次从v中的n个元素取出k个取值的所有可能组合构成。
posiblecouple_phases = nchoosek(1 : phases, 2);

Network1 = zeros(phases, phases);   %返回一个phase * phase的零矩阵
for comb = 1 : size(posiblecouple_phases, 1)    %r=size(A,1)该语句返回的是矩阵A的行数， c=size(A,2) 该语句返回的是矩阵A的列数
   pair_phases = culture(posiblecouple_phases(comb, :), :);
   x1 =  pair_phases(1, :);
   x2 = pair_phases(2, :);
    x1h=imag(hilbert(x1));
	x2h=imag(hilbert(x2));
    f1=atan(x1h./x1);
    f2=atan(x2h./x2);
    f=f1-f2;
    	result=abs(mean(exp(1i*f)));
    r_c = posiblecouple_phases(comb, :); 
    Network1(r_c(1), r_c(2)) = result;
end
 NormNetwork1 = Network1 + Network1';
end

