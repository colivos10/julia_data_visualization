using Plots

X = 0:0.05:2π
Y = Vector[sin.(X), cos.(X), sin.(2X) .* exp.(-.5X)]

p1 = plot(X, Y, lw=3, title="First plot", palette = :default)
p2 = plot(x->x, [x -> sin(x), x->cos(x)], 0, 2π, lw = 3, 
xlims=(0, 2π), title="Second plot", palette = :Accent_5)

#plot!(title= "First Plot", xlabel = "X", ylabel = "Y")

plot(p1, p2, layout=(1, 2), xlabel="X") # It affects both plots 

savefig("twoplots_row_palettes.png")