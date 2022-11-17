using Plots

function f(x, y)
    r = sqrt(x^2 + y^2)
    return cos(r) / (1 + r)
end 

x = range(0, 2π, length=100)
y = range(0, 2π, length=100)
heatmap(x, y, f, c = :jet, title= "f(r) = cos(r)/(1+r)")
