using Plots, DifferentialEquations

# Задаём начальные условия
x_0 = 7.0
y_0 = 29.0
tspan = (0, 20)
dt = 0.01

# Задаём и решаем систему ОДУ

function ode_fn(du, u, p, t)
	x, y = u
	du[1] = -0.81 * x + 0.048 * x * y
	du[2] = 0.76 * y - 0.038 * x * y
end

prob = ODEProblem(ode_fn, [x_0, y_0], tspan)
sol = solve(prob, dtmax = dt)

diffX = [u[1] for u in sol.u]
diffY = [u[2] for u in sol.u]
diffT = [timestamp for timestamp in sol.t]

# Выводим на график изменение числа хищников от числа жертв

plt = plot(
	diffY,
	diffX,
	xlabel = "Число жертв",
	ylabel = "Число хищников"
)

# Выводим на график изменение числа хищников и жертв от времени

plt2 = plot(
	diffT,
	diffY,
	label = "Количество хищников"
)

plot!(
	diffT,
	diffX,
	label = "Количество жертв"
)