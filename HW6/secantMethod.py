import numpy as np 

#Matt McDermott
#Numerical Methods homework 6 question 3.39

def Step(Xn, Xn_prev):

	Xn_next = Xn - (np.e**Xn - 2*Xn - 2)/((np.e**Xn - 2*Xn - 2) - (np.e**Xn_prev - 2*Xn_prev - 2)/(Xn - Xn_prev))

	return(Xn_next)


if __name__ == "__main__":

	Xn = 2
	Xn_prev = 1

	for i in range(100):

		Xn_next = Step(Xn, Xn_prev)
		print(Xn_next)

		Xn_prev = Xn
		Xn = Xn_next