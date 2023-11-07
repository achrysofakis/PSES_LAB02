clear all;
close all;

%%erwthma B
num = [0, 0.2, 0]; %0z^2+0,2z+0(αριθμητής)
den = [1, -0.7, -0.18];%z^2-0,7z-0,18(παρανομαστής)
sys = tf(num, den, 1); % Το 1 δηλώνει ότι η μεταφορά είναι συνεχής.

zeros = roots(num); %μηδενικά(αριθμητής)
poles = roots(den); %πόλοι(παρανομαστής)

zplane(zeros,poles);%diagramma mhdenikwn-polwn

%%erwthma D
freqz(num,den,-pi:pi/128:pi);%diagramma Bode kai fashs

%%erwthma E
new_denominator = conv(den, [1, -1]); % pollaplasiazoume ton paranomasth me to (z - 1)
new_sys = tf(num, new_denominator);      % Create the new system

new_poles = roots(new_denominator);

%zplane(zeros,new_poles);%neo diagramma mhdenikwn-polwn

freqz(num, new_denominator,-pi:pi/128:pi); % Σχεδίαση της συχνοτικής απόκρισης
