close all
clear all

%First let's filter a tetrode recording

%Acquisition rate (per sec)
acquisition_rate=24000;

%Which bandpass?
bandpass=2;
switch bandpass
    case 1 %Theta 2-12
        fpass=[2 12];
    case 2 %Beta 15-36
        fpass=[15 30];
    case 3 %Gamma1 35-65
        fpass=[35 65];
    case 4 %Gamma2 65-95
        fpass=[65 95];
    case 5 %Gamma 35-95
        fpass=[35 95];
    case 6 %Beta Gamma 10-95
        fpass=[10 95];
    case 7 %Theta, beta, gamma 1-95
        fpass=[3 95];
    case 8 %Spikes 300-3000
        fpass=[300 3000];
end

bpFilt = designfilt('bandpassiir','FilterOrder',20, ...
    'HalfPowerFrequency1',fpass(1),'HalfPowerFrequency2',fpass(2), ...
    'SampleRate',acquisition_rate);

load('/Users/restrepd/Documents/Neuro/NRSC7670 MATLAB class/piriform_cortex.mat')

figure(1)
plot(dataforallch)
title('raw voltage trace')

filtered_data=filtfilt(bpFilt,dataforallch);
figure(2)
plot(filtered_data)
title('raw voltage trace')


clear all

%Now let's find peaks in a sniff signal (intranasal pressure recording)
load('/Users/restrepd/Documents/Neuro/NRSC7670 MATLAB class/sniffs.mat')
close all
figure(1)
plot(filtLFP)
[pks,locs] = findpeaks(filtLFP,'MINPEAKHEIGHT',0.1*max(filtLFP),'MINPEAKDISTANCE',drg.draq_p.ActualRate*0.1);
hold on
plot(locs,pks,'or')

