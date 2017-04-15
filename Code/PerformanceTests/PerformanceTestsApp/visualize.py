import numpy as np
import matplotlib.pyplot as pp
import pandas as pd
import seaborn

spy = pd.read_csv('example.csv')

spy.set_index('Iterations', inplace=True)

spy['Time'].plot(figsize=(16,12))

pp.title('Iterating over a data 64 bit data array')
pp.ylabel('Time in nanoseconds')
pp.show();