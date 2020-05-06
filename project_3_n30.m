sample3 = exprnd(10, 30, 10000)
mean_dist4 = mean(sample3)
histogram(mean_dist4)
mean4 = mean(mean_dist4)
stdv4 = std(mean_dist4)
std_dist = std(sample3)
L = mean_dist4 - 1.96*std_dist/sqrt(30)
H = mean_dist4 + 1.96*std_dist/sqrt(30)
i = [1:10000]
x = L(i) <= 10 & 10 <= H(i)
S = sum(x)
percentage = S/10000