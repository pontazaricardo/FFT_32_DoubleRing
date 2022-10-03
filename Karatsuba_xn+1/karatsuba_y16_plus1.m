function result = karatsuba_y16_plus1(f,g,modulo)

    % Input: f,g of the form f=b0+b1y+...+b16y^16
    % Output: h=f*g reduced in Z[y]/<y^16+1>

    % f = (b0+b2z+b4z^2+b6z^3+...+b^14z^7) + (b1+b3z+b5z^2+b7z^3+...+b15z^7)y
    % f = C0+C1y
    % g = D0+D1y

    C0 = [f(0+1), f(2+1), f(4+1), f(6+1), f(8+1), f(10+1), f(12+1), f(14+1)];
    C1 = [f(1+1), f(3+1), f(5+1), f(7+1), f(9+1), f(11+1), f(13+1), f(15+1)];

    D0 = [g(0+1), g(2+1), g(4+1), g(6+1), g(8+1), g(10+1), g(12+1), g(14+1)];
    D1 = [g(1+1), g(3+1), g(5+1), g(7+1), g(9+1), g(11+1), g(13+1), g(15+1)];

    C0D0 = multiplication_x08_plus1(C0,D0,modulo);
    C1D1 = multiplication_x08_plus1(C1,D1,modulo);

    interTerm = multiplication_x08_plus1(C0+C1,D0+D1,modulo);
    middleTerm = mod(interTerm-C0D0-C1D1,modulo);

    % Convert to y domain

    % f*g = [C0D0+C1D1*z] + [(C0+C1)(D0+D1)-C0D0-C1D1]y
    C0D0_yDomain = [C0D0(1) 0 C0D0(2) 0 C0D0(3) 0 C0D0(4) 0 C0D0(5) 0 C0D0(6) 0 C0D0(7) 0 C0D0(8) 0];
    C1D1z_yDomain = [-C1D1(8) 0 C1D1(1) 0 C1D1(2) 0 C1D1(3) 0 C1D1(4) 0 C1D1(5) 0 C1D1(6) 0 C1D1(7) 0];
    middleTerm_yDomain = [0 middleTerm(1) 0 middleTerm(2) 0 middleTerm(3) 0 middleTerm(4) 0 middleTerm(5) 0 middleTerm(6) 0 middleTerm(7) 0 middleTerm(8)];

    result = mod(C0D0_yDomain+C1D1z_yDomain+middleTerm_yDomain,modulo);

end

