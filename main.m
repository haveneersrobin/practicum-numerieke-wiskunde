% Clear the variables, output and close all figures
clear;
clc;
close all;

% Load the given matrices
load('practicum.mat')

% %% Visualization of correctness of Gram-Schmidt
% % Gram-Schmidt 1
% disp('Gram-Schmidt 1 op A')
% [Qa1, Ra1] = gramschmidt1(A);
% disp('Gram-Schmidt 1 op B')
% [Qb1, Rb1] = gramschmidt1(B);
% 
% % Gram-Schmidt 2
% disp('Gram-Schmidt 2 op A')
% [Qa2, Ra2] = gramschmidt2(A);
% disp('Gram-Schmidt 2 op B')
% [Qb2, Rb2] = gramschmidt2(B);
% 
% % Running built-in qr for comparison
% [Qar, Rar] = qr(A);
% [Qbr, Rbr] = qr(B);
% 
% % Transform matrices to vector by placing all elements after one another
% Qa1V = Qa1(:)';
% Ra1V = Ra1(:)';
% 
% Qa2V = Qa2(:)';
% Ra2V = Ra2(:)';
% 
% Qb1V = Qb1(:)';
% Rb1V = Rb1(:)';
% 
% Qb2V = Qb2(:)';
% Rb2V = Rb2(:)';
% 
% QarV = Qar(:)';
% RarV = Rar(:)';
% 
% QbrV = Qbr(:)';
% RbrV = Rbr(:)';
% 
% % Calculate relative error (all positively scaled)
% RelQ1A = abs((abs(Qa1V) - abs(QarV))./(QarV));
% RelR1A = abs((abs(Ra1V) - abs(RarV))./(RarV));
% 
% RelQ2A = abs((abs(Qa2V) - abs(QarV))./(QarV));
% RelR2A = abs((abs(Ra2V) - abs(RarV))./(RarV));
% 
% RelQ1B = abs((abs(Qb1V) - abs(QbrV))./(QbrV));
% RelR1B = abs((abs(Rb1V) - abs(RbrV))./(RbrV));
% 
% RelQ2B = abs((abs(Qb2V) - abs(QbrV))./(QbrV));
% RelR2B = abs((abs(Rb2V) - abs(RbrV))./(RbrV));
% 
% % Draw the plot for comparison of Gram-Schmidt algorithms
% figure
% subplot(2,2,1);
% semilogy(RelQ1A);
% hold on;
% semilogy(RelQ2A);
% legend('Gram Schmidt 1', 'Gram Schmidt 2');
% title('Matrix A | Q ','FontWeight', 'light');
% hold off;
% 
% subplot(2,2,3);
% semilogy(RelR1A);
% hold on;
% semilogy(RelR2A);
% legend('Gram Schmidt 1', 'Gram Schmidt 2');
% title('Matrix A | R','FontWeight', 'light');
% hold off;
% 
% subplot(2,2,2);
% semilogy(RelQ1B);
% hold on;
% semilogy(RelQ2B);
% legend('Gram Schmidt 1', 'Gram Schmidt 2');
% title('Matrix B | Q', 'FontWeight', 'light');
% hold off;
% 
% subplot(2,2,4);
% semilogy(RelR1B);
% hold on;
% semilogy(RelR2B);
% legend('Gram Schmidt 1', 'Gram Schmidt 2');
% title('Matrix B | R','FontWeight', 'light');
% hold off;
% 
% % Print to pdf
% %print('GramSchmidtRelError','-depsc');

%% QRstep visualization
% Calculate random array
[Q,~]=qr(rand(8)); 
A=Q*diag([1 2 4 8 16 256 512 2048])*Q';

number = 10;
for K = 1:number
    A=QRstep(A);
end







    
