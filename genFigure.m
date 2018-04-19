file = csvread('heating.csv');
x = file(:, 1)';
y = file(:, 2)';

minSpace = 1;
maxSpace = 5000;

x = x(minSpace:maxSpace);
y = y(minSpace:maxSpace);

[p, sse] = Project_M4Algorithm_006_11(x, y, 1);

sY = thermocoupleModel_006_11(x, p(1), p(2), p(3), p(4), 1);


clf
subplot(1, 2, 1);
hold on
grid on
grid minor
title('Thermocouple Measurement over Time');
xlabel('Time (s)');
ylabel('Temperature (degrees C)');
plot(x, y);
hold off

subplot(1, 2, 2);
hold on
grid on
grid minor
title('Thermocouple Measurement over Time');
xlabel('Time (s)');
ylabel('Temperature (degrees C)');
plot(x, sY, '-r');
hold off