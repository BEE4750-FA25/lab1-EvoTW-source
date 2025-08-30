function multiple_return_values(x, y)
    return (x+y, x*y)
end

x = [1, 2, 3, 4, 5]
y = [6, 7, 8, 9, 10]

# Material balance equation
M1 = 0.2.*x
M2 = 0.005.*y.^2
M = M1 .- M2 

@show M;

output = multiple_return_values.(x, y)
a = [out[1] for out in output]
b = [out[2] for out in output]
@show a;
@show b;