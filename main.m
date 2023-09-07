% "A multi-agent optimization algorithm and its application to training multilayer perceptron models" Evolving Systems (2023). 
% https://doi.org/10.1007/s12530-023-09518-9
% Anupam Yadav, Department of Mathematics, NIT Jalandhar
% anupuam@gmail.com


clear all;clc;
rand('seed', sum(100*clock));
for i=4
func_num=i
rng('default');
rng(1);
 N=30;
 max_it=500; 
 FCheck=1; 
 R=1;
 chValueInitial=20;
 Rpower=2;
 Rnorm=2;
 tag=1; % 1: minimization, 0: maximization
[Fbest,Lbest,BestValues,MeanValues]=GAEFA_HK(func_num,N,max_it,FCheck,tag,R,Rnorm);Fbest,
[Fbest_1,Lbest_1,BestValues_1,MeanValues_1]=AEFA(func_num,N,max_it,FCheck,tag,Rpower);Fbest_1

figure
hold on 
semilogy(BestValues_1,'Color','k','LineWidth',2.5)
semilogy(BestValues,'Color','r','LineWidth',2.5)
xlabel('\fontsize{12}\bf Iteration Numbers');
ylabel('\fontsize{12}\bf Best-so-far');
axis tight
% grid on
set(gca,'fontweight','bold','fontsize',12)
box on
legend('\fontsize{10}\bf AEFA', '\fontsize{10}\bf GAEFA-HK')
end