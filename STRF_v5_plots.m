% import STRF_v5_workspace.m for data points
% alternatively, run STRF_v5.m file
subplot(1,4,1)
[PLI_2, PLI_4, PLI_6, PLI_8] = average_param(PeakBF_params, PLI_params);
x = categorical({'0-2','2-4','4-6', '6-8'});
y = [PLI_2 PLI_4 PLI_6 PLI_8];
bar(x,y)
title('PLI vs PeakBF');

subplot(1,4,2)
[DSI_2, DSI_4, DSI_6, DSI_8] = average_param(PeakBF_params, DSI_params);
x = categorical({'0-2','2-4','4-6', '6-8'});
y = [DSI_2 DSI_4 DSI_6 DSI_8];
bar(x,y)
title('DSI vs PeakBF');

% may be perpetually 0 due to how RF is being constructed: follow-up with
% new data set updates
subplot(1,4,3)
[bTMF_2, bTMF_4, bTMF_6, bTMF_8] = average_param(PeakBF_params, bTMF_params);
x = categorical({'0-2','2-4','4-6', '6-8'});
y = [bTMF_2 bTMF_4 bTMF_6 bTMF_8];
bar(x,y)
title('bTMF vs PeakBF');

subplot(1,4,4)
[bSMF_2, bSMF_4, bSMF_6, bSMF_8] = average_param(PeakBF_params, bSMF_params);
x = categorical({'0-2','2-4','4-6', '6-8'});
y = [bSMF_2 bSMF_4 bSMF_6 bSMF_8];
bar(x,y)
title('bSMF vs PeakBF');

figure();

subplot(1,4,1)
[BW_2, BW_4, BW_6, BW_8] = average_param(PeakBF_params, BW_params);
x = categorical({'0-2','2-4','4-6', '6-8'});
y = [BW_2 BW_4 BW_6 BW_8];
bar(x,y)
title('BW vs PeakBF');

subplot(1,4,2)
[Delay_2, Delay_4, Delay_6, Delay_8] = average_param(PeakBF_params, Delay_params);
x = categorical({'0-2','2-4','4-6', '6-8'});
y = [Delay_2 Delay_4 Delay_6 Delay_8];
bar(x,y)
title('Delay vs PeakBF');

subplot(1,4,3)
[Duration_2, Duration_4, Duration_6, Duration_8] = average_param(PeakBF_params, Duration_params);
x = categorical({'0-2','2-4','4-6', '6-8'});
y = [Duration_2 Duration_4 Duration_6 Duration_8];
bar(x,y)
title('Duration vs PeakBF');

subplot(1,4,4)
[FmUpperCutoff_2, FmUpperCutoff_4, FmUpperCutoff_6, FmUpperCutoff_8] = average_param(PeakBF_params, FmUpperCutoff_params);
x = categorical({'0-2','2-4','4-6', '6-8'});
y = [FmUpperCutoff_2 FmUpperCutoff_4 FmUpperCutoff_6 FmUpperCutoff_8];
bar(x,y)
title('FmUpperCutoff vs PeakBF');

figure();

subplot(1,4,1)
[RDUpperCutoff_2, RDUpperCutoff_4, RDUpperCutoff_6, RDUpperCutoff_8] = average_param(PeakBF_params, RDUpperCutoff_params);
x = categorical({'0-2','2-4','4-6', '6-8'});
y = [RDUpperCutoff_2 RDUpperCutoff_4 RDUpperCutoff_6 RDUpperCutoff_8];
bar(x,y)
title('RDUpperCutoff vs PeakBF');

subplot(1,4,2)
scatter(PLI_params, DSI_params);
title('DSI vs PLI');

subplot(1,4,3)
scatter(DSI_params, PLI_params);
title('PLI vs DSI');
