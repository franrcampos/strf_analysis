# strf_analysis
Shannon's spring 2019 code for STRF/RTF/CRH analysis under Francisco

average_param.m bins parameter values by PeakBF frequency (0-2, 2-4, 2-4, 6-8 octaves) and outputs 4 valuesa: param_i (i=2:8:2), each representing the average value of the param values within the octaves i-2:i

strf_analysis takes in path of where data, paramfile, and sprfile are saved and outputs STRFs along with plots of various parameters vs PeakBF
