classdef PLVjisuan < handle
   
    methods (Static)
        
        function output = resting_siPLV_whole_brain_func(seed_data,lh_clean_data,rh_clean_data,Fs,freqs, lh_meg_data,rh_meg_data)

            width=7;
            buffer=2000;
            %ncy=10;

            output = cell(0);

            for j = freqs
                tic
                seed_ROI_complex_values=conj(pitt.exp.plv.PLV.traces2Phases_normalized((seed_data),j,Fs,width));
                [1 toc]

                lh_complex_values=pitt.exp.plv.PLV.traces2Phases_normalized((lh_clean_data),j,Fs,width);
                [2 toc]
                
                [3 toc]
                lh_diff_vectors=zeros(size(lh_clean_data));
                for i = 1:size(lh_clean_data,1)
                    lh_diff_vectors(i,:)=lh_complex_values(i,:).*(seed_ROI_complex_values);
                end
                [4 toc]

                clear seed_ROI_complex_values_lh_rep_mat lh_complex_values
                lh_single_int_PLV=abs(mean(lh_diff_vectors(:,buffer:(end-buffer)),2));
                clear lh_diff_vectors
                [5 toc]
                rh_complex_values=pitt.exp.plv.PLV.traces2Phases_normalized((rh_clean_data),j,Fs,width);
                [6 toc]
                
                seed_ROI_complex_values_rh_rep_mat=repmat(seed_ROI_complex_values,size(rh_clean_data,1),1);

                [7 toc]
                rh_diff_vectors=rh_complex_values.*(seed_ROI_complex_values_rh_rep_mat);
                [8 toc]


                clear rh_complex_values seed_ROI_complex_values_rh_rep_mat

                rh_single_int_PLV=abs(mean(rh_diff_vectors(:,buffer:(end-buffer)),2));
                [9 toc]

                clear rh_diff_vectors

                lh_single_int_PLV_rep_mat=repmat(lh_single_int_PLV,1,10);
                rh_single_int_PLV_rep_mat=repmat(rh_single_int_PLV,1,10);

                lh_meg_data = [];
                rh_meg_data = [];
                
                lh_meg_data.data=lh_single_int_PLV_rep_mat;
                rh_meg_data.data=rh_single_int_PLV_rep_mat;
                
                lh_meg_data.tmin=0;
                rh_meg_data.tmin=0;

                output{j} = lh_meg_data;
                %{
                eval(sprintf('mne_write_stc_file(''single_int_PLV_Decomp_%d_%s_%s_%s_%s-lh.stc'',lh_meg_data);',j,experiment, subject, stem,  label));
                eval(sprintf('mne_write_stc_file(''single_int_PLV_Decomp_%d_%s_%s_%s_%s-rh.stc'',rh_meg_data);',j,experiment, subject, stem,  label));
                %}
                'frequency of decomposition:', j %#ok<NOPTS>

            end
        
        end
        
        
        
        
        function output = resting_plv_pairewise_multiple_freq( seed_data, reference_data, Fs, Freqs, width )
            
            if( nargin == 4 )
                width = 7;
            end
            
            buffer  = 2000;
            
            output = cell(0);
            
            for j = Freqs
                seed_complex_values     = conj(pitt.exp.plv.PLV.traces2Phases_normalized((seed_data),j,Fs,width));
                ref_complex_values      = pitt.exp.plv.PLV.traces2Phases_normalized((reference_data),j,Fs,width);
                
                diff_vectors            = seed_complex_values .* ref_complex_values;
                int_PLV                 = abs(mean(diff_vectors(:,buffer:(end-buffer)),2));
                
                output{j}               = int_PLV;
            end
        end
        
        function output = resting_plv_pairwise_stacked( data, Fs, Freqs )
            output = pitt.exp.plv.PLV.resting_plv_pairewise_multiple_freq( data(1,:), data(2,:), Fs, Freqs );
        end
        
        
        function procdata = preprocess_data( data, Fs, Freqs )
            
            width = 7;
            
            
            procdata = cell(size(data,1),1);
            
            for i=1:size(data,1)
                
                procdata{i} = cell(0);
                
                for j = Freqs
                   procdata{i}{j} = pitt.exp.plv.PLV.traces2Phases_normalized((data(i,:)),j,Fs,width);
                end
                
            end
            
            
        end
        
        function procvertex = preprocess_single_vertex( data, Fs, Freqs )
            
            width = 7;
            
            for j = Freqs
               procvertex{j} = pitt.exp.plv.PLV.traces2Phases_normalized((data),j,Fs,width);
            end
            
        end
        
        
        function output = resting_plv_pairewise_multiple_freq_complex( seed_complex_data, reference_complex_data, Fs, Freqs )
            
            width   = 7;
            buffer  = 2000;
            
            if( length( seed_complex_data{Freqs(1)} ) < buffer )
               error( 'Data width too small compared to buffer' ); 
            end
            
            output = cell(0);
%             
%             % Add support for sub-sets of frequencies
%             avail = zeros( 1, max(Freqs) );
%             avail(Freqs) = 1;
%             
%             for i = 1:length(avail)
%                 if( avail(i) == 0 )
%                     output{i} = NaN;
%                 end
%             end
%             
            for j = Freqs
                seed_complex_values     = conj( seed_complex_data{j} );
                ref_complex_values      = reference_complex_data{j};
                
                diff_vectors            = seed_complex_values .* ref_complex_values;
                int_PLV                 = abs(mean(diff_vectors(:,buffer:(end-buffer)),2));
                
                output{j}               = int_PLV;
            end
        end
        
        function output = resting_plv_pairwise_complex_stacked( data, Fs, Freqs )
            output = pitt.exp.plv.PLV.resting_plv_pairewise_multiple_freq_complex( data{1}, data{2}, Fs, Freqs );
        end
        
        
        % function [PLF,timeVec,freqVec] = traces2Phases_normalized(S,freqVec,Fs,width);
        %
        % Calculates the phase locking factor for multiple trials using        
        % multiple trials by applying the Morlet wavelet method.                            
        %
        % Input
        % -----
        % S    : signals = time x trials
        % f    : frequencies over which to calculate spectrogram 
        % Fs   : sampling frequency
        % width: number of cycles in wavelet (> 5 advisable)  
        %
        % Output
        % ------
        % timeVec    : time
        % freqVec    : frequency
        % PLF    : phase-locking factor = frequency x time
        %
        %
        % Ole Jensen, August 1998
        function [PLF,timeVec,freqVec] = traces2Phases_normalized(S,freqVec,Fs,width)
            
            timeVec = (1:size(S,2))/Fs;

            B = zeros(size(S,1),size(S,2)); 

            for i=1:size(S,1)          
            %    fprintf(1,'%d ',i); 
                %for j=1:length(freqVec)
                    B(i,:) = pitt.exp.plv.PLV.phasevec(freqVec,detrend(S(i,:)),Fs,width);
                %end

            end
            % fprintf('\n'); 
            %B = B/size(S,1);     


            PLF = B;
        end
        
        % function y = phasevec(f,s,Fs,width)
        %
        % Return a the phase as a function of time for frequency f. 返回频率为f的相位随时间的变化。
        % The phase is calculated using Morlet's wavelets. 
        %
        % Fs: sampling frequency  采样频率
        % width : width of Morlet wavelet (>= 5 suggested).  莫尔利特小波的宽度(> = 5)。
        %
        % Ref: Tallon-Baudry et al., J. Neurosci. 15, 722-734 (1997)
        function y = phasevec(f,s,Fs,width)
        

            dt = 1/Fs;
            sf = f/width;
            st = 1/(2*pi*sf);

            t=-3.5*st:dt:3.5*st;
            m = pitt.exp.plv.PLV.morlet(f,t,width);

            y = conv(s,m);


            l = find(abs(y) == 0); 
            y(l) = 1;

            y = y./abs(y);
            y(l) = 0;

            y = y(ceil(length(m)/2):length(y)-floor(length(m)/2));
        end

        % function y = morlet(f,t,width)
        % 
        % Morlet's wavelet for frequency f and time t. 
        % The wavelet will be normalized so the total energy is 1.
        % width defines the ``width'' of the wavelet. 
        % A value >= 5 is suggested.
        %
        % Ref: Tallon-Baudry et al., J. Neurosci. 15, 722-734 (1997)
        %
        %
        % Ole Jensen, August 1998 
        function y = morlet(f,t,width)

            sf = f/width;
            st = 1/(2*pi*sf);
            A = 1/sqrt(st*sqrt(pi));
            y = A*exp(-t.^2/(2*st^2)).*exp(i*2*pi*f.*t);
        end
        
    end
    
    
end