

RMS1=RMS_S3;
RMS2=RMS_S2;
RMS3=RMS_S1;
YMatrix1=[s1,mean(s1).*ones(size(s1)),(mean(s1)+RMS1).*ones(size(s1)),(mean(s1)-RMS1).*ones(size(s1))];
YMatrix2=[s2,mean(s2).*ones(size(s2)),(mean(s2)+RMS2).*ones(size(s2)),(mean(s2)-RMS2).*ones(size(s2))];
YMatrix3=[s3,mean(s3).*ones(size(s3)),(mean(s3)+RMS3).*ones(size(s3)),(mean(s3)-RMS3).*ones(size(s3))];

% Create figure
figure1 = figure('PaperSize',[20.98 29.68],'Color',[1 1 1]);

% Create axes
axes1 = axes('Parent',figure1,'XTick',zeros(1,0),...
    'Position',[0.13 0.6555 0.775 0.2695],...
    'LineWidth',2,...
    'FontSize',14);


% Create multiple lines using matrix input to plot
pplot1 = plot(YMatrix1,'Parent',axes1,'Color',[1 0 0],'LineWidth',2);
set(pplot1(1),'Color',[0 0 1],'DisplayName','Noise like time series',...
    'LineWidth',0.5);
set(pplot1(2),'LineStyle','--','DisplayName','Mean');
set(pplot1(3),'DisplayName','+/- 1 RMS');

% Create axes
axes2 = axes('Parent',figure1,'YTick',[-4 -2 0 2 4],'XTick',zeros(1,0),...
    'Position',[0.13 0.3876 0.775 0.2687],...
    'LineWidth',2,...
    'FontSize',14);


% Create multiple lines using matrix input to plot
pplot2 = plot(YMatrix2,'Parent',axes2,'Color',[1 0 0],'LineWidth',2);
set(pplot2(1),'Color',[0 0 1],'LineWidth',0.5);
set(pplot2(2),'LineStyle','--');

% Create ylabel
ylabel('Amplitude(measurement units)','FontSize',14);

% Create axes
axes3 = axes('Parent',figure1,'YTick',[-4 -2 0 2 4],...
    'Position',[0.13 0.1198 0.775 0.2692],...
    'LineWidth',2,...
    'FontSize',14);




% Create multiple lines using matrix input to plot
pplot3 = plot(YMatrix3,'Parent',axes3,'Color',[1 0 0],'LineWidth',2);
set(pplot3(1),'Color',[0 0 1],'LineWidth',0.5);
set(pplot3(2),'LineStyle','--');

% Create xlabel
xlabel('sample number','FontSize',14);



% Create legend
legend1 = legend(axes1,'Noise like time series','Mean','+/- 1 RMS');
set(legend1,'Position',[0.6322 0.8219 0.2066 0.1059]);

% Create textbox
annotation(figure1,'textbox',[0.83 0.8246 0.1822 0.04038],...
    'String',{'s1'},...
    'FontSize',14,...
    'FitBoxToText','off',...
    'LineStyle','none');

% Create textbox
annotation(figure1,'textbox',[0.83 0.525 0.1934 0.04038],...
    'String',{'s2'},...
    'FontSize',14,...
    'FitBoxToText','off',...
    'LineStyle','none');

% Create textbox
annotation(figure1,'textbox',[0.83 0.2453 0.1057 0.04038],...
    'String',{'s3'},...
    'FontSize',14,...
    'FitBoxToText','off',...
    'LineStyle','none');

clear pplot1 pplot2 pplot3 legend1 axes1 figure1 axes2 figure2 axes3 figure3 ans YMatrix1 YMatrix2 YMatrix3 RMS1 RMS2 RMS3

