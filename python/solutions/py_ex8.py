import pandas as pd

# which 10 subjects do we want to clean data for?
subjects = ['DE220', 'DE221', 'DE222', 'DE223', 'DE224', 'DE225', 'DE226', 'DE227', 'DE228', 'DE229', 'DE230']

for sub in subjects:
    
    # let's add in a note so we know which subject is being worked on
    print('Working on ', sub)
    
    # read in participant data
    dbdm_run1 = pd.read_csv(f'/Users/lizbeard/Desktop/intro-to-coding-2021/misc/logs/{k}/{k}_dbdm_run_1.csv')
    dbdm_run2 = pd.read_csv(f'/Users/lizbeard/Desktop/intro-to-coding-2021/misc/logs/{k}/{k}_dbdm_run_2.csv') 
    ebdm_run1 = pd.read_csv(f'/Users/lizbeard/Desktop/intro-to-coding-2021/misc/logs/{k}/{k}_ebdm_run_1.csv') 
    ebdm_run2 = pd.read_csv(f'/Users/lizbeard/Desktop/intro-to-coding-2021/misc/logs/{k}/{k}_ebdm_run_2.csv')
    
    # remove null responses
    dbdm_run1_clean = dbdm_run1.dropna()
    dbdm_run2_clean = dbdm_run2.dropna()
    ebdm_run1_clean = ebdm_run1.dropna()
    ebdm_run2_clean = ebdm_run2.dropna()
    
    # concatinate across runs
    dbdm_concat = pd.concat((dbdm_run1_clean, dbdm_run2_clean))
    ebdm_concat = pd.concat((ebdm_run1_clean, ebdm_run2_clean))

    # save csvs
    dbdm_concat.to_csv(f'/Users/lizbeard/Desktop/intro-to-coding-2021/misc/logs/{sub}/{sub}_dbdm.csv')
    ebdm_concat.to_csv(f'/Users/lizbeard/Desktop/intro-to-coding-2021/misc/logs/{sub}/{sub}_ebdm.csv')