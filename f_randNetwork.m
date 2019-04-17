function ttr = f_randNetwork(tt)
% % % Function for randomize a network.
% INPUTS:  tt = conectivity network matrix to be randomiced
% OUTPUTS: ttr = random conectivity network matrix
% 
% JohannM
% Madrid. (2014)
% ..............................................................................

nlinks = length(tt)*(length(tt) - 1)/2; %amount of links in upper triangular matrix
ttriu = triu(tt, 1);                    %triangular links of a network matrix
a = sort(ttriu(:), 'descend');          %sorting triangular elements in a vector
a = a(1:nlinks);                        %taking just the first NLINKS of upper triangular
ar = a(randperm(length(a)));            %resorting in a random way all links

ttr = zeros(size(tt));                  %filling the new random network matrix
link = 0;
for r = 1 : length(tt)
    for c = 1 : length(tt)
        if c > r                        %filling just the upper triangular part of matrix
            link = link + 1;
            ttr(r, c) = ar(link);
        end
    end
end
ttr = ttr + ttr';                       %taking the adjacency matrix.
return