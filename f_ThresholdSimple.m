function [mtnew] = f_ThresholdSimple(matrix,thr)
% % % Thresholding matrix due to certain threshold. It takes all elements below
% threshold (thr) as zero, surviving just links higher and equal than (thr)
%   Inputs: matrix      weighted or binary connectivity matrix
%           thr         0 <= weight treshold <= 1
%
%   Output: mt          thresholded connectivity matrix
%           nlinks      number of links higher than or equal threshold
%
% JohannM.
% Paris(2014)
% ..............................................................................

mt = matrix;
mt(mt < thr) = 0;
mt(mt > thr) = 1;
mtnew = mt;
% nlinks = numel(find(triu(mtnew, 1)));
return