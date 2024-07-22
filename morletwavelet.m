% create morlet wavelet

srate = 500; % sampling rate in Hz
f = 10; % frequency of the sine wave in Hz
time = -1:1/srate:1; % time, from -1 to 1 second in steps of 1/sampling-rate

sine_wave = exp(2*pi*1i*f.*time); % complex wavelet

% make a Gaussian
s=6/(2*pi*f);
gaussian_win = exp(-time.^2./(2*s^2));

% and together they make a wavelet!
wavelet = sine_wave .* gaussian_win;

% make plots containing each component
figure()
subplot(311)
plot(time,real(sine_wave)) % only plot the real component
title('Sine wave')

subplot(312)
plot(time,gaussian_win) % plots the Gaussian window
title('Gaussian window')
 
subplot(313)
plot(time,real(wavelet)); % plots the wavelet
title('Wavelet')
xlabel('Time (ms)')
