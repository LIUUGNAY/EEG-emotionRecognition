 z=load('E:\�Ե����ݼ�\��ʱ����������\s01\s01-1.mat'); 
 pathname1='E:\�Ե����ݼ�\��ʱ����������\';
 pathname3='E:\�Ե����ݼ�\PLV����\';
 for k=1:32
    if k<10
        filename1=sprintf('s0%d\\',k);
    end
    if k>=10
        filename1=sprintf('s%d\\',k);
    end
    pathname2=[pathname1,filename1];
    pathname4=[pathname3,filename1];
    mkdir(pathname3,filename1);%�״�ִ��ʱ��Ҫ�����µ��ļ��У��ٴ�ִ�пɲ���
    %ÿ��40������
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
       
       %����ǰ10������ݣ�data1������PLV1
   %    n=1280;
      culture = z1;             
phases = size(culture, 1);     % size�����ؾ��������
%  C = nchoosek(v,k), ����v��һ������Ϊn��������������һ�����󣬸þ��������ÿ�δ�v�е�n��Ԫ��ȡ��k��ȡֵ�����п�����Ϲ��ɡ�
posiblecouple_phases = nchoosek(1 : phases, 2);

Network1 = zeros(phases, phases);
for comb = 1 : size(posiblecouple_phases, 1)
    pair_phases = culture(posiblecouple_phases(comb, :), :);
    deltaPhases = pair_phases(1, :) - pair_phases(2, :);
    %real and imaginary part of phasor  ������ʵ�����鲿
    real = cos(deltaPhases);
    imag = sin(deltaPhases);
    %time average of real and imaginary components   ʵ�����鲿��ʱ��ƽ��ֵ
    mean_real = mean(real);
    mean_imag = mean(imag);
    % components to the power two  �����ݵķ���
    powreal = mean_real^2;
    powimag = mean_imag^2;
    % sum of the second power of real and imaginary sums   ʵ����͵Ķ�����֮��
    sumpows = powreal + powimag;
    % % local synchronizations per couple of phases or squared root of sum of the second power of real and imaginary sums (amplitutes)
    %%ÿ����λ�ľֲ�ͬ����ʵ��������֮�͵�ƽ����(���)
    r = sqrt(sumpows);
    %%%% OUTPUTs
    % all local kuram parameters into a network
    r_c = posiblecouple_phases(comb, :);    %localizing row and column to storage R value
    Network1(r_c(1), r_c(2)) = r;
end
 NormNetwork1 = Network1 + Network1';
      



       %�����10������ݣ�data2������PLV2
       % n=1280;
           culture = z2;              %culture day phases
phases = size(culture, 1);     %neurons in culture day size�����ؾ��������
%    C = nchoosek(v,k), ����v��һ������Ϊn��������������һ�����󣬸þ��������ÿ�δ�v�е�n��Ԫ��ȡ��k��ȡֵ�����п�����Ϲ��ɡ�
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
