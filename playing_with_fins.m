%% WK7 PROBLEM 4 DESIGNING WITH Fins
clear all
Q_dot = 14;
T_max = 62+273.15;
Ta = 25+273.15;
h = 24; 
W = 0.025;
L = 0.025;
K = 167;
n = linspace(1,100, 100);
q_dot = zeros(100,1);
for i = 1:100
    q_dot(i) = W*n(i)*sqrt(h*K*0.025/n(i))*(T_max-Ta)*tanh(sqrt(4*h*n(i)/(0.25*K))*L);
end
figure()
plot(n, q_dot)
hold on
plot(n, 14*ones(100, 1))

del = 0.025/82

