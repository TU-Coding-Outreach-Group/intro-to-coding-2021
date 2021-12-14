import pandas as pd

data = {'trial' : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], 'rt' : [2.5, 4, 8.7, 1.2, 7.8, 3, 4.5, 6, 2, 2.3, 7.9, 1.2, 1.4, 5, 2.3, 4.1, 3, 4.7, 1.8, 2]}
df = pd.DataFrame(data=data)

n = 10
while n < 20:
    print(df.iloc[n]['rt'])
    n += 1