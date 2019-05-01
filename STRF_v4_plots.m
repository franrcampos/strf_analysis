%% Section 1
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

% subplot(1,6,5)
% scatter(PLI_params, DSI_params);
% title('DSI vs PLI');
% subplot(1,6,6)
% scatter(DSI_params, PLI_params);
% title('PLI vs DSI');

%% Section 2
subplot(1,6,1)
scatter(PeakBF_params2, PLI_params2);
title('PeakBF vs PLI');
subplot(1,6,2)
scatter(PeakBF_params2, DSI_params2);
title('PeakBF vs DSI');
subplot(1,6,3)
scatter(PeakBF_params2, bTMF_params2);
title('PeakBF vs bTMF');
subplot(1,6,4)
scatter(PeakBF_params2, bSMF_params2);
title('PeakBF vs bSMF');
subplot(1,6,5)
scatter(PLI_params2, DSI_params2);
title('PLI vs DSI');
subplot(1,6,6)
scatter(DSI_params2, PLI_params2);
title('DSI vs PLI');

%% Combined (pt 1 and 2 give me the same?)
PeakBF_params_total = horzcat(PeakBF_params, PeakBF_params2);
PLI_params_total = horzcat(PLI_params, PLI_params2);
DSI_params_total = horzcat(DSI_params, DSI_params2);
bTMF_params_total = horzcat(bTMF_params, bTMF_params2);
bSMF_params_total = horzcat(bSMF_params, bSMF_params2);
subplot(1,4,1)
scatter(PeakBF_params_total, PLI_params_total);
title('PeakBF vs PLI');
subplot(1,4,2)
scatter(PeakBF_params_total, DSI_params_total);
title('PeakBF vs DSI');
subplot(1,4,3)
scatter(PeakBF_params_total, bTMF_params_total);
title('PeakBF vs bTMF');
subplot(1,4,4)
scatter(PeakBF_params_total, bSMF_params_total);
title('PeakBF vs bSMF');