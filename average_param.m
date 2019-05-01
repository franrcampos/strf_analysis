% Bins parameter values by PeakBF frequency: 0-2, 2-4, 2-4, 6-8 
% Inputs: PeakBF_params array and params array
% Outputs: param_i which represents avg param value from i-2 to i, 
% where i is upper bound of the particular bin of PeakBF frequency 
function [param_2, param_4, param_6, param_8]= average_param(PeakBF_params, params)
param_2 = 0;
count_2 = 0;
param_4 = 0;
count_4 = 0;
param_6 = 0;
count_6 = 0;
param_8 = 0;
count_8 = 0;
for i = 1:379
    if (PeakBF_params(i) >= 0 && PeakBF_params(i) < 2)
        param_2 = param_2 + params(i);
        count_2 = count_2 + 1;
    elseif (PeakBF_params(i) >= 2 && PeakBF_params(i) < 4)
        param_4 = param_4 + params(i);
        count_4 = count_4 + 1;
    elseif (PeakBF_params(i) >= 4 && PeakBF_params(i) < 6)
        param_6 = param_6 + params(i);
        count_6 = count_6 + 1;
    else
       param_8 =param_8 + params(i);
        count_8 = count_8 + 1;
    end
end
param_2 = param_2 / count_2;
param_4 = param_4 / count_4;
param_6 = param_6 / count_6;
param_8 = param_8 / count_8;