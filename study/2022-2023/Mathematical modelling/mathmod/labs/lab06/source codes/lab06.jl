using Plots, DifferentialEquations

# Начальные условия

N = 15089
I0 = 95
R0 = 45
S0 = N - I0 - R0
tspan = (0, 20)
dt = 0.01
α = 0.35
β = 0.24

# Система ОДУ для I(0) <= I*

function ode_fn_1(du, u, p, t)
	S, I, R = u
	du[1] = 0
	du[2] = - β * I
	du[3] = β * I
end

prob1 = ODEProblem(ode_fn_1, [S0, I0, R0], tspan)

# Решение системы ОДУ

sol1 = solve(prob1, dtmax = dt)

diffS1 = [u[1] for u in sol1.u]
diffI1 = [u[2] for u in sol1.u]
diffR1 = [u[3] for u in sol1.u]
diffT1 = [timestamp for timestamp in sol1.t]

# График изменения численности групп

plt1 = plot(
	diffT1,
	diffI1,
	label = "Заражённые"
)

plot!(
	diffT1,
	diffR1,
	label = "Выздоровевшие"
)

plot!(
	diffT1,
	diffS1,
	label = "Восприимчивые"
)

# Система ОДУ для I(0) > I*

function ode_fn_2(du, u, p, t)
	S, I, R = u
	du[1] = - α * S
	du[2] = α * S - β * I
	du[3] = β * I
end

prob2 = ODEProblem(ode_fn_2, [S0, I0, R0], tspan)

# Решение системы ОДУ

sol2 = solve(prob2, dtmax = dt)

diffS2 = [u[1] for u in sol2.u]
diffI2 = [u[2] for u in sol2.u]
diffR2 = [u[3] for u in sol2.u]
diffT2 = [timestamp for timestamp in sol1.t]

# График изменения численности групп

plt2 = plot(
	diffT2,
	diffI2,
	label = "Заражённые"
)

plot!(
	diffT2,
	diffR2,
	label = "Выздоровевшие"
)

plot!(
	diffT2,
	diffS2,
	label = "Восприимчивые"
)