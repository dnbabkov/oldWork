using Plots
using DifferentialEquations

const k = 19.1 # Расстояние между лодкой и катером, когда туман развеялся
const vel_diff = 5.2 # Разница скоростей
xP0 = k # Расстояние между лодкой и катером, когда туман развеялся
x_firstInst = k/(vel_diff + 1) # Начальная точка первого случая
x_secondInst = k/(vel_diff - 1) # Начальная точка второго случая

function ode_fn(du, u, p, t) # Дифференциальное уравнение для вычисления траектроии катера
	r, teta = u
	du[1] = 1
	du[2] = sqrt(vel_diff^2 - 1) / du[1]
end

dt = 0.01 # Изменение времени
teta01 = 0
teta02 = π
tspan = (0, 5) # Продолжительность

prob1 = ODEProblem(ode_fn, [x_firstInst, teta01], tspan) # Задание начальных условий в дифф. уравнение для первого случая
sol = solve(prob1, dtmax = dt) # Решение дифф. уравнения

R1 = [u[1] for u in sol.u] # Изменение расстояния от центра
Θ1 = [u[2] for u in sol.u] # Изменение угла поворота относительно центра

boat_r = Float64[0, 8]
boat_θ = Float64[2 * π/3]

plt1 = plot( # Полярная система координат
	proj = :polar,
	aspect_ratio = :equal,
	dpi = 300,
	title = "Задача о погоне",
	legend = false
)
plot!( # Отрисовка траектории катера для первого случая
	plt1,
	Θ1,
	R1,
	label = "Траектория катера",
	color = :green
)
plot!( # Добавление траектории лодки
	plt1,
	boat_θ,
	boat_r,
	label = "Траектория лодки",
	color = :red
)

prob2 = ODEProblem(ode_fn, [x_secondInst, teta02], tspan) # Задание начальных условий в дифф. уравнение для второго случая
sol2 = solve(prob2, dtmax = dt) # Решение дифф. уравнения

R2 = [u[1] for u in sol2.u] # Изменение расстояния от центра
Θ2 = [u[2] for u in sol2.u] # Изменение угла поворота относительно центра

plt2 = plot( # Полярная система координат
	proj = :polar,
	aspect_ratio = :equal,
	dpi = 300,
	title = "Задача о погоне",
	legend = false
)
plot!( # Отрисовка траектории катера для второго случая
	plt2,
	Θ2,
	R2,
	label = "Траектория катера",
	color = :green
)
plot!( # Добавление траектории лодки
	plt2,
	boat_θ,
	boat_r,
	label = "Траектория лодки",
	color = :red
)