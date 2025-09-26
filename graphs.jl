
using Plots
using GraphRecipes, Graphs

#Equation for graph plotting in  sinx, and cosx
x=0:0.1:10pi
values=[cos.(x),sin.(x)]
plot(x, values[1], label="cos(x)")
plot!(x, values[2], label="sin(x)")

#Plotting the heart equation:
r=0:0.1:2pi
x_domain=-1:0.01:1
x_para=16*sin.(r.*r.*r)
y_para = 13 * cos.(r) .- 5 * cos.(2 .* r) .- 2 * cos.(3 .* r) .- cos.(4 .* r)
y1 = (abs.(x_domain).^(2/3)) - (1 .- x_domain.^2).^(1/2)
y2 = (abs.(x_domain).^(2/3)) + (1 .- x_domain.^2).^(1/2)

values1=[y1, y2]
plot(x_domain, values1[1], label="heart bottom")
plot!(x_domain, values1[2], label="heart top")

#Plotting Lissajous Curves:
A=1
B=1

t=LinRange(0,10,500)
#this creates a vector array that breaks 0 to 10 in 499 points and adds them into an array called t
a=2*pi
b=pi
δ=pi/2

x=A*sin.(a.*t.+ δ)
y=B*sin.(b.*t)

plot(x,y, label="Lissajous Curves", title="Lissajous Curves")



#Plotting Butterfly:
theta = LinRange(0, 12*pi, 10000) 
r = @. exp(sin(theta)) - 2*cos(4*theta) + sin((2*theta - pi)/24)^5


x = @. r * cos(theta)
y = @. r * sin(theta)

plot(x, y, 
    label="Butterfly Curve", 
    title="Fay's Butterfly Curve" 
    )

#Rose Curves:

theta = LinRange(0, 2*pi, 1000)
a = 1
n = 5 # Try integer values like 2, 3, 4, 5, or rational like 7/3
r = @. a * cos(n * theta)
x = @. r * cos(theta)
y = @. r * sin(theta)
plot(x, y, aspect_ratio=:equal, title="Rose Curve (n=$n)",label="Rose Curve", linecolor=:magenta)


