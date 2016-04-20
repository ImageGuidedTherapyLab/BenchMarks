clear all
close all


SizeArray = [5000:5000:100000];
SizeArray = [1000:1000:10000];

FlopPerformance = zeros(1,length(SizeArray ));
TimePerformance = zeros(1,length(SizeArray ));

for iii = 1:length(SizeArray )
   timings = linpack_bench_backslash(SizeArray(iii));
   FlopPerformance(iii) = timings(4);
   TimePerformance(iii) = timings(3);
end


handle1=figure(1);
subplot(2,1,1),plot(SizeArray,TimePerformance );
ylabel('time [s]'  ) % axis
title('Linpack')
set(gca,'FontSize',16)
subplot(2,1,2),plot(SizeArray,FlopPerformance );
ylabel('MFLOPs') % axis
xlabel('N')
set(gca,'FontSize',16)

saveas(handle1,'linpack','png')

