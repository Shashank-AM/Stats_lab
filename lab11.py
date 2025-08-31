# Consider the Australian Drug Sales dataset and develop a Python code to perform Time 
# Series Analysis and visualize using plots.

# pip install pandas matplotlib statsmodels
import pandas as pd
import matplotlib.pyplot as plt
from statsmodels.tsa.holtwinters import ExponentialSmoothing

df = pd.read_csv("AusAntidiabeticDrug.csv",parse_dates=['ds'])
df.set_index('ds', inplace=True)
df.index.freq = 'MS'

model = ExponentialSmoothing(
    df['y'],
    trend='add',
    seasonal='add',
    seasonal_periods=12
).fit()

# print(model.summary())
forecast = model.forecast(24)

plt.plot(df.index, df['y'], label='Observed', color='blue')
plt.plot(model.fittedvalues.index, model.fittedvalues, label='Fitted', color='red')
plt.plot(forecast.index, forecast,label='Forecast',color='green')
plt.legend()
plt.title("Monthly Drug Sales in Australia")
plt.xlabel("Date")
plt.ylabel(   "Sales")
plt.show()
