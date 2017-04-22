import numpy as np
import matplotlib.pyplot as pp
import pandas as pd
import seaborn
from pandas import Series

# -------------- Configuration -------------- #
title = 'VByte Decompression'
file1 = '../Simulation/decompression_u_b.csv'
file2 = '../Simulation/decompression_u_s.csv'
label1 = 'regular bulk processing'
label2 = 'regular single processing'
xAxis = 'Data'
xLabel = 'No of 8 bit values'
yAxis = 'IOPS'
yLabel = 'Integer operations per second'
windowSize = 50
# ------------------------------------------- #

spy1 = pd.read_csv(file1)
spy2 = pd.read_csv(file2)
#spy3 = pd.read_csv("../Simulation/decompression_t_b.csv")
#spy4 = pd.read_csv("../Simulation/decompression_t_s.csv")

spy1.set_index(xAxis, inplace=True)
spy2.set_index(xAxis, inplace=True)
#spy3.set_index(xAxis, inplace=True)
#spy4.set_index(xAxis, inplace=True)

spy1[yAxis].rolling(window=windowSize).mean().plot(figsize=(16,12), label=label1)
spy2[yAxis].rolling(window=windowSize).mean().plot(figsize=(16,12), label=label2)
#spy3[yAxis].rolling(window=windowSize).mean().plot(figsize=(16,12), label="sgx bulk processing")
#spy4[yAxis].rolling(window=windowSize).mean().plot(figsize=(16,12), label="sgx single processing")

pp.title(title)
pp.xlabel(xLabel)
pp.ylabel(yLabel)
pp.legend(loc='upper left')
pp.show();