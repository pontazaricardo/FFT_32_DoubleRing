syms a0 a1 a2 a3 a4 a5 a6 a7
syms b0 b1 b2 b3 b4 b5 b6 b7

syms x t

sympref('PolynomialDisplayStyle','ascend');

f = a0+a1*x+a2*x^2+a3*x^3
g = b0+b1*x+b2*x^2+b3*x^3

A0 = a0+a1*x
A1 = a2+a3*x

B0 = b0+b1*x
B1 = b2+b3*x

t = x^2

A0B0_symb = collect(polynomialReduce(expand(A0*B0),x^2+1),x)
A1B1_symb = collect(polynomialReduce(expand(A1*B1),x^2+1),x)

sum_A0A1 = A0+A1;
sum_B0B1 = B0+B1;
    
    
product_sums_symb = collect(polynomialReduce(expand(sum_A0A1 * sum_B0B1),x^2+1),x)
middle_coefficient_symb = collect(polynomialReduce(expand(product_sums_symb - A0B0_symb - A1B1_symb),x^2+1),x)

result = collect(polynomialReduce(expand(A0B0_symb+middle_coefficient_symb*t+A1B1_symb*t^2),x^4+1),x)

result_corroboration = collect(polynomialReduce(expand(f*g),x^4+1),x)


%h_normal_reduced_plusone = collect(polynomialReduce(expand(),x^8+1),x)


%coefficients = coeffs(collect(polynomialReduce(expand(A0*B0),x^8+1),x),x)

%collect(polynomialReduce(expand(A1*B1*t^2),x^8+1),x)