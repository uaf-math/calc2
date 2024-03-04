# draw the "bifurcation" diagram for the logistic map/equation
#     a_{n+1} = r a_n (1 - a_n)

import numpy as np
import matplotlib.pyplot as plt

# set up resolution etc.
interval = (2.8, 4)      # r range
accuracy = 0.0001        # resolution in r
reps = 600               # number of iterations
discard = 400            # keep after this

# generate figure line-by-line
fig, ax = plt.subplots()
fig.set_size_inches(16, 9)
lims = np.zeros(reps)
lims[0] = 1.0/3.0
N = reps - discard
for r in np.arange(interval[0], interval[1], accuracy):
    for i in range(reps - 1):
        lims[i + 1] = r * lims[i] * (1 - lims[i])
    # plot last N points
    ax.plot([r] * N, lims[discard:], "b.", markersize=0.1)
ax.set(xlabel="r", ylabel="x")
plt.show()
