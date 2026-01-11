load starData
nObs = size(spectra,1)
lambdaStart = 630.02 % Enter starting wavelength( Can change )
lambdaDelta = 0.14   % Enter wavelength step ( Can change)

lambdaEnd = lambdaStart + (nObs-1)*lambdaDelta
lambda = (lambdaStart:lambdaDelta:lambdaEnd)

s = spectra(:,2)
