#Matt McDermott
#Numerical Methods HW 5

import numpy as np

def QR(a,runLen):

	A = a
	for _ in range(runLen):

		a1 = A[:,0]
		a2 = A[:,1]

		q1 = - a1/np.linalg.norm(a1)
		# print("q1 = ", q1)

		a2Prime = a2 - q1.T.dot(a2)*q1
		# print("a2' = ",a2Prime)

		q2 = a2Prime/np.linalg.norm(a2Prime)
		Q = np.stack([q1,q2]).T
		# print("Q =  " ,Q)

		# R = np.array([[np.linalg.norm(a1), q1.dot(a1)],[0, np.linalg.norm(a2)]])
		R = np.array([[q1.dot(a1), q1.T.dot(a2)],[0, q2.dot(a2Prime)]])
		# print("R = ", R)

		A = R.dot(Q)
		print("A = ", A)


	ans = np.array([A[0,0], A[1,1]])

	return(ans)

if __name__ == "__main__":

	A = np.array([[2,3],[1,4]])
	runLen = 10

	ans = QR(A,runLen)
	print("ans = ", ans )