using Plots
using DifferentialEquations

tspan = (0, 33)
dt = 0.05
x0 = [1.3]
y0 = [0.3]

function harmonicOscillator(ddu, du, u, ω, t)
	ddu .= -3.3 * u
end

prob = SecondOrderODEProblem(harmonicOscillator, y0, x0, tspan)
sol = solve(prob, dtmax = dt)
diffX = [u[1] for u in sol.u]
diffY = [u[2] for u in sol.u]

plt = plot(
	diffY,
	diffX,
	xlabel = "x",
	ylabel = "y"
)

function harmonicOscillator2(ddu, du, u, ω, t)
	ddu .= -3*du -0.3*u
end

prob2 = SecondOrderODEProblem(harmonicOscillator2, y0, x0, tspan)
sol2 = solve(prob2, dtmax = dt)
diffX2 = [u[1] for u in sol2.u]
diffY2 = [u[2] for u in sol2.u]

plt2 = plot(
	diffY2,
	diffX2,
	xlabel = "x",
	ylabel = "y"
)

function harmonicOscillator3(ddu, du, u, ω, t)
	ddu .= - 3.3 * du .- 3 * u .+ 3.3 * sin(3 * t)
end

prob3 = SecondOrderODEProblem(harmonicOscillator3, y0, x0, tspan)
sol3 = solve(prob3, dtmax = dt)
diffX3 = [u[1] for u in sol3.u]
diffY3 = [u[2] for u in sol3.u]

plt3 = plot(
	diffY3,
	diffX3,
	xlabel = "x",
	ylabel = "y"
)