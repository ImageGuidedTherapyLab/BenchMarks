

SizeArray = [5000:5000:100000];

FlopPerformance = zeros(length(SizeArray ));
TimePerformance = zeros(length(SizeArray ));

for iii = 1:length(SizeArray )
   timings = linpack_bench_backslash(SizeArray(iii));
   FlopPerformance = timings(4);
   TimePerformance = timings(3);
end


handle1=figure(1);
plot(SizeArray,FlopPerformance )
hold
set(gca,'FontSize',16)
xlabel('N')
ylabel('MFLOPs')
legend('linpack', 'Location','SouthEast')
saveas(handle1,'linpack','png')

