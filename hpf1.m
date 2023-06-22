function Hd = hpf1
%HPF1 Returns a discrete-time filter object.
%high freq

% MATLAB Code
% Generated by MATLAB(R) 9.12 and Signal Processing Toolbox 9.0.
% Generated on: 03-Aug-2022 23:36:04

% FIR Window Highpass filter designed using the FIR1 function.

% All frequency values are in Hz.
Fs = 44100;  % Sampling Frequency

N    = 1001;      % Order
Fc   = 3000;     % Cutoff Frequency
flag = 'scale';  % Sampling Flag

% Create the window vector for the design algorithm.
win = blackman(N+1);

% Calculate the coefficients using the FIR1 function.
b  = fir1(N, Fc/(Fs/2), 'high', win, flag, 'h');
Hd = dfilt.dffir(b);

% [EOF]
