clear, clc, close all
%% Read Excel data
% Place this script in the same folder as the two Excel files, or change
% the filenames below to their full paths.
Inputs  = readmatrix('Reduced Data.xlsx');
Inputs2 = readmatrix('CNN_Data_Reduced.xlsx');

%% Figure 1: Mean Mean Error vs Parameters
figure;
hold on;
a1 = plot(Inputs(2:5, 5), Inputs(2:5, 6),'-or', Inputs(6:9, 5), Inputs(6:9, 6),'-oy',Inputs(10:13, 5), Inputs(10:13, 6),'-og',...
        Inputs(14:17, 5), Inputs(14:17, 6),'-ob', Inputs(18:21, 5), Inputs(18:21, 6),'-om',Inputs(22:25, 5), Inputs(22:25, 6), '-oc');
Mycolor = ["#d83034", "#ff9d3a", "#4ecb8d", "#c701ff", "#008dff", "#ff73b6"];
for i = 1:6
a1(i).Color = Mycolor(i);
end
a2 = plot(Inputs2(1:12, 6), Inputs2(1:12, 7), '-ok');
hold off;
legend('1 Qubit', '2 Qubits', '3 Qubits', ...
            '4 Qubits', '5 Qubits', '6 Qubits', 'CNN', 'Location', 'best');
xlim([0 530]);
ylabel('Mean L_1 Error');
xlabel('Number of Parameters');
grid on;

%% Figure 2: Minimum Mean Error vs Parameters
figure;
hold on;
b1 = plot(Inputs(2:5, 5), Inputs(2:5, 8),'-or', Inputs(6:9, 5), Inputs(6:9, 8),'-oy',Inputs(10:13, 5), Inputs(10:13, 8),'-og',...
        Inputs(14:17, 5), Inputs(14:17, 8),'-ob', Inputs(18:21, 5), Inputs(18:21, 8),'-om',Inputs(22:25, 5), Inputs(22:25, 8), '-oc');
for i = 1:6
b1(i).Color = Mycolor(i);
end
b2 = plot(Inputs2(1:12, 6), Inputs2(1:12, 9), '-ok');
hold off;
legend('1 Qubit', '2 Qubits', '3 Qubits', ...
            '4 Qubits', '5 Qubits', '6 Qubits', 'CNN', 'Location', 'best');
xlim([0 530]);
ylabel('Minimum L_1 Error');
xlabel('Parameters');
grid on;

%% Figure 3: Mean L_\infty Error vs Parameters
figure;
hold on;
c1 = plot(Inputs(2:5, 5), Inputs(2:5, 7),'-or', Inputs(6:9, 5), Inputs(6:9, 7),'-oy',Inputs(10:13, 5), Inputs(10:13, 7),'-og',...
        Inputs(14:17, 5), Inputs(14:17, 7),'-ob', Inputs(18:21, 5), Inputs(18:21, 7),'-om',Inputs(22:25, 5), Inputs(22:25, 7), '-oc');
for i = 1:6
c1(i).Color = Mycolor(i);
end
c2 = plot(Inputs2(1:12, 6), Inputs2(1:12, 8), '-ok');
legend('1 Qubit', '2 Qubits', '3 Qubits', ...
            '4 Qubits', '5 Qubits', '6 Qubits', 'CNN', 'Location', 'best');
xlim([0 530]);
ylabel('Mean L_\infty Error');
xlabel('Number of Parameters');
grid on;

%% Figure 4: Minimum Mean Error vs Parameters
figure;
hold on;
d1 = plot(Inputs(2:5, 5), Inputs(2:5, 9),'-or', Inputs(6:9, 5), Inputs(6:9, 9),'-oy',Inputs(10:13, 5), Inputs(10:13, 9),'-og',...
        Inputs(14:17, 5), Inputs(14:17, 9),'-ob', Inputs(18:21, 5), Inputs(18:21, 9),'-om',Inputs(22:25, 5), Inputs(22:25, 9), '-oc');
for i = 1:6
d1(i).Color = Mycolor(i);
end
d2 = plot(Inputs2(1:12, 6), Inputs2(1:12, 10), '-ok');
legend('1 Qubit', '2 Qubits', '3 Qubits', ...
            '4 Qubits', '5 Qubits', '6 Qubits', 'CNN', 'Location', 'best');
xlim([0 530]);
ylabel('Minimum L_\infty Error');
xlabel('Number of Parameters');
grid on;
%% Figure 5: Mean Mean Error vs Samples
figure;
hold on;
e1 = plot(Inputs(26:29, 3), Inputs(26:29, 6),'-or', Inputs(30:33, 3), Inputs(30:33, 6),'-oy',Inputs(34:37, 3), Inputs(34:37, 6),'-og',...
        Inputs(38:41, 3), Inputs(38:41, 6),'-ob', Inputs(42:45, 3), Inputs(42:45, 6),'-om',Inputs(46:49, 3), Inputs(46:49, 6), '-oc');
for i = 1:6
e1(i).Color = Mycolor(i);
end
e2 = plot(Inputs2(13:16, 5), Inputs2(13:16, 7),'--or', Inputs2(17:20, 5), Inputs2(17:20, 7),'--oy',Inputs2(21:24, 5), Inputs2(21:24, 7),'--og',...
        Inputs2(25:28, 5), Inputs2(25:28, 7),'--ob', Inputs2(29:32, 5), Inputs2(29:32, 7),'--om');
Mycolor2 = ["#d83034", "#ff9d3a", "#4ecb8d", "#c701ff", "#008dff"];
for i = 1:5
e2(i).Color = Mycolor2(i);
end
legend('1 Qubit (54 Parameters)', ...
    '2 Qubits (60 Parameters)', ...
    '3 Qubits (63 Parameters)', ...
    '4 Qubits (72 Parameters)', ...
    '5 Qubits (72 Parameters)', ...
    '6 Qubits (126 Parameters)', ...
    'CNN (51 Parameters)', ...
    'CNN (71 Parameters)', ...
    'CNN (103 Parameters)', ...
    'CNN (202 Parameters)', ...
    'CNN (521 Parameters)', 'Location', 'best');
xlim([10 40]);
ylim([0 40]);
ylabel('Mean L_1 Error');
xlabel('Samples');
grid on;

%% Figure 6: Minimum Mean Error vs Samples
figure;
hold on;
f1 = plot(Inputs(26:29, 3), Inputs(26:29, 8),'-or', Inputs(30:33, 3), Inputs(30:33, 8),'-oy',Inputs(34:37, 3), Inputs(34:37, 8),'-og',...
        Inputs(38:41, 3), Inputs(38:41, 8),'-ob', Inputs(42:45, 3), Inputs(42:45, 8),'-om',Inputs(46:49, 3), Inputs(46:49, 8), '-oc');
for i = 1:6
f1(i).Color = Mycolor(i);
end
f2 = plot(Inputs2(13:16, 5), Inputs2(13:16, 9),'--or', Inputs2(17:20, 5), Inputs2(17:20, 9),'--oy',Inputs2(21:24, 5), Inputs2(21:24, 9),'--og',...
        Inputs2(25:28, 5), Inputs2(25:28, 9),'--ob', Inputs2(29:32, 5), Inputs2(29:32, 9),'--om');
for i = 1:5
f2(i).Color = Mycolor2(i);
end
hold off;
legend('1 Qubit (54 Parameters)', ...
    '2 Qubits (60 Parameters)', ...
    '3 Qubits (63 Parameters)', ...
    '4 Qubits (72 Parameters)', ...
    '5 Qubits (72 Parameters)', ...
    '6 Qubits (126 Parameters)', ...
    'CNN (51 Parameters)', ...
    'CNN (71 Parameters)', ...
    'CNN (103 Parameters)', ...
    'CNN (202 Parameters)', ...
    'CNN (521 Parameters)', 'Location', 'best');
xlim([10 40]);
ylim([0 40]);
ylabel('Minimum L_1 Error');
xlabel('Samples');
grid on;

%% Figure 7: Mean L_\infty Error vs Samples
figure;
hold on;
g1 = plot(Inputs(26:29, 3), Inputs(26:29, 7),'-or', Inputs(30:33, 3), Inputs(30:33, 7),'-oy',Inputs(34:37, 3), Inputs(34:37, 7),'-og',...
        Inputs(38:41, 3), Inputs(38:41, 7),'-ob', Inputs(42:45, 3), Inputs(42:45, 7),'-om',Inputs(46:49, 3), Inputs(46:49, 7), '-oc');
for i = 1:6
g1(i).Color = Mycolor(i);
end
g2 = plot(Inputs2(13:16, 5), Inputs2(13:16, 8),'--or', Inputs2(17:20, 5), Inputs2(17:20, 8),'--oy',Inputs2(21:24, 5), Inputs2(21:24, 8),'--og',...
        Inputs2(25:28, 5), Inputs2(25:28, 8),'--ob', Inputs2(29:32, 5), Inputs2(29:32, 8),'--om');
for i = 1:5
g2(i).Color = Mycolor2(i);
end
legend('1 Qubit (54 Parameters)', ...
    '2 Qubits (60 Parameters)', ...
    '3 Qubits (63 Parameters)', ...
    '4 Qubits (72 Parameters)', ...
    '5 Qubits (72 Parameters)', ...
    '6 Qubits (126 Parameters)', ...
    'CNN (51 Parameters)', ...
    'CNN (71 Parameters)', ...
    'CNN (103 Parameters)', ...
    'CNN (202 Parameters)', ...
    'CNN (521 Parameters)', 'Location', 'best');
xlim([10 40]);

ylabel('Mean L_\infty Error');
xlabel('Samples');
grid on;

%% Figure 8: Minimum L_\infty Error vs Samples
figure;
hold on;
h1 = plot(Inputs(26:29, 3), Inputs(26:29, 7),'-or', Inputs(30:33, 3), Inputs(30:33, 7),'-oy',Inputs(34:37, 3), Inputs(34:37, 7),'-og',...
        Inputs(38:41, 3), Inputs(38:41, 7),'-ob', Inputs(42:45, 3), Inputs(42:45, 7),'-om',Inputs(46:49, 3), Inputs(46:49, 7), '-oc');
for i = 1:6
h1(i).Color = Mycolor(i);
end
h2 = plot(Inputs2(13:16, 5), Inputs2(13:16, 10),'--or', Inputs2(17:20, 5), Inputs2(17:20, 10),'--oy',Inputs2(21:24, 5), Inputs2(21:24, 10),'--og',...
        Inputs2(25:28, 5), Inputs2(25:28, 10),'--ob', Inputs2(29:32, 5), Inputs2(29:32, 10),'--om');
for i = 1:5
h2(i).Color = Mycolor2(i);
end
hold off;
legend('1 Qubit (54 Parameters)', ...
    '2 Qubits (60 Parameters)', ...
    '3 Qubits (63 Parameters)', ...
    '4 Qubits (72 Parameters)', ...
    '5 Qubits (72 Parameters)', ...
    '6 Qubits (126 Parameters)', ...
    'CNN (51 Parameters)', ...
    'CNN (71 Parameters)', ...
    'CNN (103 Parameters)', ...
    'CNN (202 Parameters)', ...
    'CNN (521 Parameters)', 'Location', 'best');
xlim([10 40]);

ylabel('Minimum L_\infty Error');
xlabel('Samples');
grid on;

% %% Figure 9: Mean Mean Error vs Layers
% figure;
% hold on;
% plot(Inputs(2:5, 4), Inputs(2:5, 6),'-or', Inputs(6:9, 4), Inputs(6:9, 6),'-oy', Inputs(10:13, 4), Inputs(10:13, 6),'-og',...
%         Inputs(14:17, 4), Inputs(14:17, 6),'-ob', Inputs(18:21, 4), Inputs(18:21, 6),'-om', Inputs(22:25, 4), Inputs(22:25, 6), '-oc');
% hold off;
% legend('1 Qubit', '2 Qubits', '3 Qubits', ...
%             '4 Qubits', '5 Qubits', '6 Qubits', 'CNN', 'Location', 'best');
% ylabel('Mean Mean Error');
% xlabel('Parameters');
% grid on;
% 
% %% Figure 10: Minimum Mean Error vs Layers
% figure;
% hold on;
% plot(Inputs(2:5, 4), Inputs(2:5, 7),'-or', Inputs(6:9, 4), Inputs(6:9, 7),'-oy',Inputs(10:13, 4), Inputs(10:13, 7),'-og',...
%         Inputs(14:17, 4), Inputs(14:17, 7),'-ob', Inputs(18:21, 4), Inputs(18:21, 7),'-om',Inputs(22:25, 4), Inputs(22:25, 7), '-oc');
% hold off;
% legend('1 Qubit', '2 Qubits', '3 Qubits', ...
%             '4 Qubits', '5 Qubits', '6 Qubits', 'CNN', 'Location', 'best');
% ylabel('Minimum Mean Error');
% xlabel('Parameters');
% grid on;

