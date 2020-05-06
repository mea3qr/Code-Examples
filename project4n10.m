ten = binornd(10, 0.5, 10000, 1)
p_hat_10 = ten/10
L_10_trad = p_hat_10 - 1.96*sqrt(p_hat_10.*(1-p_hat_10)/10)
H_10_trad = p_hat_10 + 1.96*sqrt(p_hat_10.*(1-p_hat_10)/10)
i = [1:10000]
x_10_trad = L_10_trad(i) <= 0.5 & 0.5<= H_10_trad(i)
S_10_trad = sum(x_10_trad)
percentage_10_trad = S_10_trad/10000
width_10_trad = mean(H_10_trad - L_10_trad)
p_tilde_10 = (ten+2)/(10+4)
L_10_AG = p_tilde_10 - 1.96*sqrt(p_tilde_10.*(1-p_tilde_10)/(10+4))
H_10_AG = p_tilde_10 + 1.96*sqrt(p_tilde_10.*(1-p_tilde_10)/(10+4))
x_10_AG = L_10_AG(i) <= 0.5 & 0.5<= H_10_AG(i)
S_10_AG = sum(x_10_AG)
percentage_10_AG = S_10_AG/10000
width_10_AG = mean(H_10_AG - L_10_AG)
