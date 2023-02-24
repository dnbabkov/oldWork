using Plots
using DifferentialEquations

x_0 = 44200
y_0 = 54100
a1 = 0.312
b1 = 0.456
c1 = 0.256
h1 = 0.34
a2 = 0.318
b2 = 0.615
c2 = 0.312
h2 = 0.512

#Первый случай

function ode_fn1(du, u, p, t) #Система дифф. уравнений, моделирующая изменение численностей армий X и Y
	x, y = u
	du[1] = -a1 * x - b1 * y + sin(t + 3)
	du[2] = -c1 * x - h1 * y + cos(t + 7)
end

dt1 = 0.01
tspan = (0, 5)

prob1 = ODEProblem(ode_fn1, [x_0, y_0], tspan)
sol1 = solve(prob1, dtmax = dt1)

diffX1 = [u[1] for u in sol1.u]
diffY1 = [u[2] for u in sol1.u]
diffT1 = [timestamp for timestamp in sol1.t]

plt1 = plot( #График изменения численности армии страны Y
	diffT1,
	diffY1,
	label = "Армия страны Y"
)

plot!( #Добавление графика изменения численности армии X
	diffT1,
	diffX1,
	label = "Армия страны X"
)

# Второй случай

timespan = (0, 0.005)
dt2 = 0.01

function ode_fn2(du, u, p, t)
	x, y = u
	du[1] = -a2 * x - b2 * y + abs(cos(8 * t))
	du[2] = -c2 * x * y - h2 * y + abs(sin(6 * t))
end

prob2 = ODEProblem(ode_fn2, [x_0, y_0], timespan)

sol2 = solve(prob2, dtmax = dt2)

diffX2 = [u[1] for u in sol2.u]
diffY2 = [u[2] for u in sol2.u]
diffT2 = [timestamp for timestamp in sol2.t]

plt2 = plot(
	diffT2,
	diffX2,
	label = "Армия страны X"
)

plot!(
	diffT2,
	diffY2,
	label = "Армия страны Y"
)