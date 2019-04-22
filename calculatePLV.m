function [ NormNetwork1] = calculatePLV( culture)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

phases = size(culture, 1);     % size�����ؾ��������
%  C = nchoosek(v,k), ����v��һ������Ϊn��������������һ�����󣬸þ��������ÿ�δ�v�е�n��Ԫ��ȡ��k��ȡֵ�����п�����Ϲ��ɡ�
posiblecouple_phases = nchoosek(1 : phases, 2);

Network1 = zeros(phases, phases);   %����һ��phase * phase�������
for comb = 1 : size(posiblecouple_phases, 1)    %r=size(A,1)����䷵�ص��Ǿ���A�������� c=size(A,2) ����䷵�ص��Ǿ���A������
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

