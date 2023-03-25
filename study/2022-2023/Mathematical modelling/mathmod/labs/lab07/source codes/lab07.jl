using Plots, DifferentialEquations

# Начальные условия

N = 1670
n0 = 12
timespan = (0, 30)
dt = 0.01

# Для первого случая

α1_1 = 0.013
α2_1 =  0.000033

# Для второго случая

α1_2 = 0.0000132
α2_2 =  0.32

# Для третьего случая

α1_3 = 0.8
α2_3 =  0.15

# ОДУ

# Первый случай

ode_fn1(x, p, t) = (α1_1 + α2_1 * x) * (N - x)
prob1 = ODEProblem(ode_fn1, n0, timespan)
sol1 = solve(prob1, dtmax = dt)

diffX1 = [u[1] for u in sol1.u]
diffT1 = [timestamp for timestamp in sol1.t]

# Второй случай

ode_fn2(x, p, t) = (α1_2 + α2_2 * x) * (N - x)
prob2 = ODEProblem(ode_fn2, n0, timespan)
sol2 = solve(prob2, dtmax = dt)

diffX2 = [u[1] for u in sol2.u]
diffT2 = [timestamp for timestamp in sol2.t]

# Третий случай

ode_fn3(x, p, t) = (α1_3 * t + α2_3 * sin(t) * x) * (N - x)
prob3 = ODEProblem(ode_fn3, n0, timespan)
sol3 = solve(prob3, dtmax = dt)

diffX3 = [u[1] for u in sol3.u]
diffT3 = [timestamp for timestamp in sol3.t]

# График первого случая

plt1 = plot(
	diffT1,
	diffX1
)

# График второго случая

plt2 = plot(
	diffT2,
	diffX2
)

# График третьего случая

plt3 = plot(
	diffT3,
	diffX3
)