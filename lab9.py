# Consider the scores of ten students in SMIP and DBMS and Compute the Spearman rank 
# correlation and Interpret the results using Python programming. 
# 3 
#  SMIP 70 46 94 34 20 86 18 12 56 64 42  
# DBMS 60 66 90 46 16 98 24 08 32 54 62


#pip insatll scipy
import scipy.stats as stats

smip_data = [70,46,94,34,20,86,18,12,56,64,42]
dbms_data = [60,66,90,46,16,98,24,8,32,54,62]

cor,p = stats.spearmanr(smip_data,dbms_data)

print(f"Spearmans Rank Correlation Coeffecient : {cor:.3f}")
print(f"p-Value : {p:.3f}")