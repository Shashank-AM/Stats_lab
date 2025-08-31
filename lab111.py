import pandas as pd
import matplotlib.pyplot as plt
from statsmodels.tsa.holtwinters import ExponentialSmoothing

data = pd.read_csv("AusAntidiabeticDrug.csv", parse_dates=['ds'])
data.set_index('ds',inplace=True)
data.index.freq= 'MS'

model = ExponentialSmoothing(
    data['y'],
    trend='add',
    seasonal='add',
    seasonal_periods=12
).fit()

forecast = model.forecast(24)

plt.plot(data.index, data['y'],color='blue',label='Observed')
plt.plot(model.fittedvalues.index, model.fittedvalues,color='red',label='Fitted')
plt.plot(forecast.index, forecast, color='green',label='Forecast')
plt.legend()
plt.show()

