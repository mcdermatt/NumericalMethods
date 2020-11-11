#Matt McDermott
#Numerical Methods HW #4

import numpy as np

def powerMethod(A,x,runLen,unityComponent):
	# print(A,x,runLen)

	for _ in range(runLen):		
		xNext = np.dot(A,x)
		lam = np.amax(abs(xNext))
		if x[unityComponent] != 0:
			x = xNext/(x[unityComponent])

	return x, lam


if __name__ == "__main__":

	# A = np.array([[1, 1, 2],
	# 			  [2, 1, 1],
	# 			  [1, 1, 3]])

	# x0 = np.array([[1],[0],[0]])

	A = np.array([[-1, 2/3, 0, 1/3 ],
				  [1, -4/3, 1, -2/3],
				  [1, 4/3, -1, -1/3],
				  [0, -1/3, 0, 1/3]])

	x0 = np.array([[1],[0],[0],[0]])
	
	runLen = 12
	unityComponent = 0

	x, lam = powerMethod(A,x0,runLen,unityComponent)
	print("problem 1: x = ", x, '  Lambda = ', lam)
	print(x/x[0])

	# A = np.array([[0.8,-0.6],
	# 			  [-0.2,0.4]])

	# x0 = np.array([[0],[1]])
	
	# runLen = 500
	# unityComponent = 1

	# x, lam = powerMethod(A,x0,runLen,unityComponent)
	# print("problem 2: x = ", x, '  Lambda = ', lam)