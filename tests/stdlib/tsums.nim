import std/sums
from math import pow

var epsilon = 1.0
while 1.0 + epsilon != 1.0:
  epsilon /= 2.0
let data = @[1.0, epsilon, -epsilon]
assert sumKbn(data) == 1.0
# assert sumPairs(data) != 1.0 # known to fail in 64 bits
assert (1.0 + epsilon) - epsilon != 1.0

var tc1: seq[float]
for n in 1 .. 1000:
  tc1.add 1.0 / n.float
assert sumKbn(tc1) == 7.485470860550345
assert sumPairs(tc1) == 7.485470860550345

var tc2: seq[float]
for n in 1 .. 1000:
  tc2.add pow(-1.0, n.float) / n.float
assert sumKbn(tc2) == -0.6926474305598203
assert sumPairs(tc2) == -0.6926474305598204
