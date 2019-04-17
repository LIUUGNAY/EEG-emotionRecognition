function NormNetwork = fPhaseLockingValue(cultivo)
% % % % % Calculates the local kuramoto parameters for different time series in nodes.
% % % % In other words, it is a normalized phase looking value correlation matrix of
% % % % several time series. This function uses a function
% % % % This could be usefull to get the phase looking value for a all
% group of time series and obtaining the non normalized matrix
% % % % FWEIGTHNORMALIZATIONJOHANN, which is a normalization between zero and one of all entries.
% % % % clear all;
% JohannM (Madrid 2013)
clc;

% load('/Users/johannmartinez/Desktop/Elche/NewDataElche/Phases/phases_neurons7', 'phases_neurons7');
% cultivo = phases_neurons7;

% % % INPUTS
culture = cultivo;              %culture day phases
phases = size(culture, 1);     %neurons in culture day size将返回矩阵的行数
posiblecouple_phases = nchoosek(1 : phases, 2);

network = zeros(phases, phases);
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
    network(r_c(1), r_c(2)) = r;
end
NormNetwork = network + network';