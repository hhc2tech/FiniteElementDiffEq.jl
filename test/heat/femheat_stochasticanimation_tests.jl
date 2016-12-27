#######
##FEM Stochastic Heat Animation Test
#######

#Generates an animation for a solution of the heat equation
#Uses Plots.jl, requires matplotlib >=1.5
using FiniteElementDiffEq, Plots#, ImageMagick
prob = prob_femheat_stochasticbirthdeath

sol = solve(prob,alg=:SemiImplicitCrankNicholson,save_timeseries=true,solver=:LU)

println("Generating Animation")
#animate(sol::FEMSolution;zlims=(0,3),cbar=false)

# Returns true if nothing error'd
true
