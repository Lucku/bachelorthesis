# -*- coding: utf-8 -*-

import numpy as np
import matplotlib.pyplot as pp
import pandas as pd
import seaborn
from pandas import Series

# -------------- Configuration -------------- #
title = u'Eval10'
file1 = 'decompression_enc_u_b.csv'
file2 = 'decompression_enc_t_b.csv'
label1 = u'Normal'
label2 = u'SGX Enclave'
xAxis = 'Data'
xLabel = 'Bytes'
yAxis = 'MIOPS'
yLabel = 'Millionen Integer Operationen je Sekunde'
windowSize = 50
fontsize = '20'
# ------------------------------------------- #

spy1 = pd.read_csv('x64/Real Results/' + file1)
spy2 = pd.read_csv('x64/Real Results/' + file2)
#spy3 = pd.read_csv("x64/Real Results/crypto_no_copy_t_b.csv")
#spy4 = pd.read_csv("../Simulation/decompression_t_s.csv")

spy1.set_index(xAxis, inplace=True)
spy2.set_index(xAxis, inplace=True)
#spy3.set_index(xAxis, inplace=True)s
#spy4.set_index(xAxis, inplace=True)

diff = spy1.subtract(spy2)

#diff = pd.concat([spy1, spy2]).groupby(level=0).transform(Series.diff)
#diff.set_index(xAxis, inplace=True)

spy1[yAxis].rolling(window=windowSize).mean().plot(figsize=(16,8), label=label1, fontsize=fontsize)
spy2[yAxis].rolling(window=windowSize).mean().plot(figsize=(16,8), label=label2)
diff[yAxis].rolling(window=windowSize * 5).mean().plot(figsize=(16,8), label='Differenz')
#spy3[yAxis].rolling(window=windowSize).mean().plot(figsize=(16,12), label="Innerhalb von SGX Enclave (Ohne Kopieren)", color='orange')
#spy4[yAxis].rolling(window=windowSize).mean().plot(figsize=(16,12), label="sgx single processing")

pp.rc('text', usetex=True)
pp.rcParams['font.sans-serif'] = "Univers"

#pp.title(title)
pp.xlabel(xLabel, fontsize=fontsize)
pp.ylabel(yLabel, fontsize=fontsize)
#pp.legend(loc='upper left', fontsize=fontsize)
pp.savefig('x64/Real Results/graphs/' + title + '.pdf')
pp.show();