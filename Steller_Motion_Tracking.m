load starData
nObs = size(spectra,1)
lambdaStart = 630.02 % Enter starting wavelength( Can change )
lambdaDelta = 0.14   % Enter wavelength step ( Can change)

lambdaEnd = lambdaStart + (nObs-1)*lambdaDelta
lambda = (lambdaStart:lambdaDelta:lambdaEnd)

s = spectra(:,2)

plot(lambda,s,".-")
title("Steller Spectrum")
xlabel("Wavelength")
ylabel("Intensity")

[sHa,idx] = min(s)
lambdaHa = lambda(idx)

hold on
plot(lambdaHa,sHa, "rs",markersize=8)

z =lambdaHa/656.28-1
speed = z*299792.458
