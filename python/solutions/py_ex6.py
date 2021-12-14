import pandas as pd

subjects = ['DE249', 'DE258', 'DE214']

for k in subjects:
    dbdm_run1 = pd.read_csv(f'/Users/lizbeard/Desktop/intro-to-coding-2021/misc/logs/{k}/{k}_dbdm_run_1.csv')
    dbdm_run2 = pd.read_csv(f'/Users/lizbeard/Desktop/intro-to-coding-2021/misc/logs/{k}/{k}_dbdm_run_2.csv') 
    ebdm_run1 = pd.read_csv(f'/Users/lizbeard/Desktop/intro-to-coding-2021/misc/logs/{k}/{k}_ebdm_run_1.csv') 
    ebdm_run2 = pd.read_csv(f'/Users/lizbeard/Desktop/intro-to-coding-2021/misc/logs/{k}/{k}_ebdm_run_2.csv')

dbdm_run1_clean = dbdm_run1.dropna()
dbdm_run2_clean = dbdm_run2.dropna()
ebdm_run1_clean = ebdm_run1.dropna()
ebdm_run2_clean = ebdm_run2.dropna()
    
ebdm_concat = pd.concat((ebdm_run1_clean, ebdm_run2_clean))
    
ebdm_concat_avg = ebdm_concat.groupby(level=0).mean()
print(ebdm_concat_avg)