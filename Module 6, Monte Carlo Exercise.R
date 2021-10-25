#Roger H Hayden III
#10/10/2021
#Statistical Methods and Data Analysis
#Monte Carlo Exercises - Module 6

# Sums of certain random variables will sometimes lead to other common random
# variables. The (a) iid Poisson(mean=2) and (b) iid exponential(rate=1/4) are two such
# random variables. For each case identify the resulting distribution from summing 3 of
# the iid random variables. I’ll describe what needs to be done next in terms of the
# Poisson. Convince yourself of the correctness of your resulting distribution through the
# following exercise. First, generate three random deviates from the Poisson distribution
# using rpois(). Add these to form a single random deviate of the sum of the three Poisson
# random variables. Establish a vector of 1000 of these. Using your distribution finding,
# generate 1000 random deviates for the sum of three iid Poisson random variables
# directly. With so many generated, a quick visual for agreement can be obtained by first
# sorting each vector, and then plotting them in an x-y plot. Points should fall along the
# line y=x.The Monte Carlo for (b) can be run in the same way; however, I recommend that you
# trim the extremes, because both distributions will provide a number of outliers that may
# disrupt the scale of your x-y plot. If v is your vector of random deviates a new vector
# with v[51:950] should trim enough data to facilitate a good plot result.

# Part A

t=rpois(1000,2)
u=rpois(1000,2)
v=rpois(1000,2)

x=t+u+v

y=rpois(1000,6)

x=sort(x)[51:950]
y=sort(y)[51:950]
plot(x,y)

#Part B

t=rexp(1000,rate=1/4)
u=rexp(1000,rate=1/4)
v=rexp(1000,rate=4) 

x=t+u+v

y=rexp(1000,rate=8)

x=sort(x)[51:950]
y=sort(y)[51:950]
plot(x,y)