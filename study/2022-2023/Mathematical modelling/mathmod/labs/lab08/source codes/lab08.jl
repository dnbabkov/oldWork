using Plots, DifferentialEquations

# Начальные условия

M_0_1 = 6.8
M_0_2 = 6

p_cr = 35
N = 31
q = 1
τ1 = 18
τ2 = 23
p_1 = 11.5
p_2 = 8.7

a1 = p_cr / (τ1^2 * p_1^2 * N * q)
a2 = p_cr / (τ2^2 * p_2^2 * N * q)
b = p_cr / (τ1^2 * p_1^2 * τ2^2 * p_2^2 * N * q)
c1 = (p_cr - p_1) / (τ1 * p_1)
c2 = (p_cr - p_2) / (τ2 * p_2)

timespan = (0, 20)
dt = 0.01

# Система ОДУ:
# Первый случай:

function ode_fn_1(du, u, p, t)
	M_1, M_2 = u
	du[1] = (M_1/c1) - (b/c1^2) * M_1 * M_2 - (a1/c1^2) * M_1^2
	du[2] = ((c2 * M_2) / c1^2) - (b/c1^2) * M_1 * M_2 - (a2/c1^2) * M_2^2
end

prob1 = ODEProblem(ode_fn_1, [M_0_1, M_0_2], timespan)

# Решение системы ОДУ

sol1 = solve(prob1, dtmax = dt)

diffM1_1 = [u[1] for u in sol1.u]
diffM2_1 = [u[2] for u in sol1.u]
diffT1 = [timestamp for timestamp in sol1.t]

# Второй случай:

function ode_fn_2(du, u, p, t)
	M_1, M_2 = u
	du[1] = (M_1/c1) - (b/c1 + 0.00067) * M_1 * M_2 / c1 - (a1/c1^2) * M_1^2
	du[2] = ((c2 * M_2) / c1^2) - (b/c1^2) * M_1 * M_2 - (a2/c1^2) * M_2^2
end

prob2 = ODEProblem(ode_fn_2, [M_0_1, M_0_2], timespan)

# Решение системы ОДУ

sol2 = solve(prob2, dtmax = dt)

diffM1_2 = [u[1] for u in sol2.u]
diffM2_2 = [u[2] for u in sol2.u]
diffT2 = [timestamp for timestamp in sol2.t]

# Построение графиков M1 и M2:

# Первый случай

plt1 = plot(
	diffT1,
	diffM1_1,
	label = "Оборотные средства фирмы 1"
)

plot!(
	diffT1,
	diffM2_1,
	label = "Оборотные средства фирмы 2"
)

# Второй случай

plt2 = plot(
	diffT2,
	diffM1_2,
	label = "Оборотные средства фирмы 1"
)

plot!(
	diffT2,
	diffM2_2,
	label = "Оборотные средства фирмы 2"
)