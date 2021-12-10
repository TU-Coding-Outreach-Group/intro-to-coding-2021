# Solution 1: Copy over all of the individual subject files using a wildcard
cp -r ../misc/log/* subject_data/

# Solution 2: Copy over the higher level directory and then rename it
rm -r subject_data  # you need to remove this directory since it was already created
cp -r ../misc/log subject_data