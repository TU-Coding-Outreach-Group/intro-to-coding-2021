# Use a for loop to check whether data exists for all subjects
for subj in DE201 DE202 DE203 DE204 DE205 DE206 DE207 DE208 DE209 DE210; do
    if (! -e ${subj}/${subj}_dbdm_run_1.csv); then
        echo ${subj}
    fi
done