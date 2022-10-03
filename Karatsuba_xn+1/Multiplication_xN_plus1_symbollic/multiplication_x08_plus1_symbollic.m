syms a00 a01 a02 a03 a04 a05 a06 a07 a08 x y z
syms b00 b01 b02 b03 b04 b05 b06 b07 b08

product = expand((a00+a01*z+a02*z^2+a03*z^3+a04*z^4+a05*z^5+a06*z^6+a07*z^7)*(b00+b01*z+b02*z^2+b03*z^3+b04*z^4+b05*z^5+b06*z^6+b07*z^7));
collect(polynomialReduce(product,z^8+1),z)

coefficients = coeffs(collect(polynomialReduce(product,z^8+1),z),z)

