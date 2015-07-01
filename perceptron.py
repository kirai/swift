
#test of genkiness
#yes!
# XOR perceptron
from random import choice
from numpy import array, dot, random

step_function = lambda x: 0 if x < 0 else 1

training_data = [
    (array([0,0,1]), 0),
	(array([0,0,2]), 0),
	(array([0,0,3]), 0),
    (array([0,1,1]), 1),
    (array([1,0,1]), 1),
    (array([1,1,1]), 1),
]

w = random.rand(3)
errors = []
eta = 0.1
n = 100

for i in xrange(n):
    x, expected = choice(training_data)
    result = dot(w, x)
    error = expected - step_function(result)
#   errors.append(error)
#    w += eta * error * w
    w += eta * error

for x, _ in training_data:
    result = dot(x, w)
    print("{}: {} -> {}".format(x[:2], result, step_function(result)))
