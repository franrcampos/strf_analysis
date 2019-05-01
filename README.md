# strf_analysis
Shannon's spring 2019 code for STRF/RTF/CRH analysis under Francisco

STRF_vi.m files (i=2:5 and represents the numbered version of the code) extract arrays of various STRF params (PLI, DSI, bTMF, bSMF, BW, Delay, Duration, FmUpperCutoff, RDUpperCutoff) from existing STRF data from given rez_merged, TrigA, and TrigB data from data_from_Shannon.mat file

STRF_vi_plots.m files (i=4:5 and represents the numbered version of the code) plot various STRF params vs. PeakBF where the PeakBF is binned by increments of 2 octaves. In each bin, the values of the param are averaged and outputted as a single number through the average_param.m file.

average_param.m bins parameter values by PeakBF frequency (0-2, 2-4, 2-4, 6-8 octaves) and outputs 4 valuesa: param_i (i=2:8:2), each representing the average value of the param values within the octaves i-2:i

STRF_vi_workspace.m files (i=4:5) contain the results of running respective STRF_vi.m files and are needed to successfully plot the histograms of various params vs PeakBF (histograms obtained by running STRF_vi_plots.m files)
