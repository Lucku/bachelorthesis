import numpy as np
import matplotlib.pyplot as pp
import pandas as pd
import seaborn

spy1 = pd.read_csv("../Simulation/iterate_u.csv")
spy2 = pd.read_csv('../Simulation/decompression_t.csv')

spy1.set_index('Data', inplace=True)
spy2.set_index('Data', inplace=True)

spy1['Time'].plot(figsize=(16,12), label='regular')
spy2['Time'].plot(figsize=(16,12), label='sgx')

pp.title('VByte Decompression')
pp.xlabel('No of 8 bit values (bulk)')
pp.ylabel('Time in nanoseconds')
pp.legend(loc='upper left')
pp.show();