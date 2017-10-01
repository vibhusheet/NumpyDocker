import numpy as np

def random_array(a, b):
	return np.random.random((a, b))

a = random_array(2,2)
b = random_array(2,2)
print(np.dot(a,b))
