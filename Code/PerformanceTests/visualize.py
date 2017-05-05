import numpy as np
import matplotlib.pyplot as pp
import pandas as pd
import seaborn
from pandas import Series

# -------------- Configuration -------------- #
title = 'VByte Compression with Encrypted Data (Regular vs. SGX)'
file1 = 'x64/Release/decompress_enc_u.csv'
file2 = 'x64/Simulation/decompress_enc_t.csv'
label1 = 'Regular'
label2 = 'Inside SGX enclave'
xAxis = 'Data'
xLabel = 'Byte of data'
yAxis = 'MIOPS'
yLabel = 'Million integer operations per second'
windowSize = 50
# ------------------------------------------- #

spy1 = pd.read_csv(file1)
spy2 = pd.read_csv(file2)
#spy3 = pd.read_csv("../Simulation/decompression_t_b.csv")
#spy4 = pd.read_csv("../Simulation/decompression_t_s.csv")

spy1.set_index(xAxis, inplace=True)
spy2.set_index(xAxis, inplace=True)
#spy3.set_index(xAxis, inplace=True)s
#spy4.set_index(xAxis, inplace=True)

diff = spy1.subtract(spy2)

#diff = pd.concat([spy1, spy2]).groupby(level=0).transform(Series.diff)
#diff.set_index(xAxis, inplace=True)

spy1[yAxis].rolling(window=windowSize).mean().plot(figsize=(16,12), label=label1)
spy2[yAxis].rolling(window=windowSize).mean().plot(figsize=(16,12), label=label2)
diff[yAxis].rolling(window=windowSize * 5).mean().plot(figsize=(16,12), label='Difference')
#spy3[yAxis].rolling(window=windowSize).mean().plot(figsize=(16,12), label="sgx bulk processing")
#spy4[yAxis].rolling(window=windowSize).mean().plot(figsize=(16,12), label="sgx single processing")

pp.title(title)
pp.xlabel(xLabel)
pp.ylabel(yLabel)
pp.legend(loc='upper left')
pp.show();