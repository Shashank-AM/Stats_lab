import pandas as pd
import matplotlib.pyplot as plt
from statsmodels.tsa.holtwinters import ExponentialSmoothing

df = pd.read_csv("AustraliaDrugSales.csv",parse_dates=['date'])
df.set_index('date', inplace=True)
df.index.freq = 'MS'

model = ExponentialSmoothing(
    df['value'],
    trend='add',
    seasonal='add',
    seasonal_periods=12
).fit()

# print(model.summary())
forecast = model.forecast(24)

plt.plot(df.index,df['value'],label='Observerd',color='blue')
plt.plot(model.fittedvalues.index, model.fittedvalues, label='Fitted', color='red')
plt.plot(forecast.index, forecast,label='Forecast',color='green')
plt.legend()
plt.title("Monthly Drug Sales in Australia")
plt.xlabel("Date")
plt.ylabel("Sales")
plt.show()
