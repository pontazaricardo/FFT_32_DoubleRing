function result = karatsuba_y32_plus1(f,g,modulo)
    % Input: f,g of the form f=a0+a1y+...+a31y^31
    % Output: h=f*g reduced in Z[y]/<y^32+1>

    % f = (a00+a02y+a04y^2+a06y^3+...+a28y^14+a30y^15) + (a01+a03y+a05y^2+a07y^3+...+a29y^14+a31y^15)x
    % f = A0+A1x
    % g = B0+B1x

    A0 = [f(0+1), f(2+1), f(4+1), f(6+1), f(8+1), f(10+1), f(12+1), f(14+1), f(16+1), f(18+1), f(20+1), f(22+1), f(24+1), f(26+1), f(28+1), f(30+1)];
    A1 = [f(1+1), f(3+1), f(5+1), f(7+1), f(9+1), f(11+1), f(13+1), f(15+1), f(17+1), f(19+1), f(21+1), f(23+1), f(25+1), f(27+1), f(29+1), f(31+1)];

    B0 = [g(0+1), g(2+1), g(4+1), g(6+1), g(8+1), g(10+1), g(12+1), g(14+1), g(16+1), g(18+1), g(20+1), g(22+1), g(24+1), g(26+1), g(28+1), g(30+1)];
    B1 = [g(1+1), g(3+1), g(5+1), g(7+1), g(9+1), g(11+1), g(13+1), g(15+1), g(17+1), g(19+1), g(21+1), g(23+1), g(25+1), g(27+1), g(29+1), g(31+1)];

    A0B0 = karatsuba_y16_plus1(A0,B0,modulo);
    A1B1 = karatsuba_y16_plus1(A1,B1,modulo);

    interTerm = karatsuba_y16_plus1(A0+A1,B0+B1,modulo);
    middleTerm = mod(interTerm-A0B0-A1B1,modulo);

    % Convert to y domain

    % f*g = [A0B0+A1B1*z] + [(A0+A1)(B0+B1)-A0B0-A1B1]y
    A0B0_xDomain = [A0B0(1) 0 A0B0(2) 0 A0B0(3) 0 A0B0(4) 0 A0B0(5) 0 A0B0(6) 0 A0B0(7) 0 A0B0(8) 0 A0B0(9) 0 A0B0(10) 0 A0B0(11) 0 A0B0(12) 0 A0B0(13) 0 A0B0(14) 0 A0B0(15) 0 A0B0(16) 0];
    A1B1_xDomain = [-A1B1(16) 0 A1B1(1) 0 A1B1(2) 0 A1B1(3) 0 A1B1(4) 0 A1B1(5) 0 A1B1(6) 0 A1B1(7) 0 A1B1(8) 0 A1B1(9) 0 A1B1(10) 0 A1B1(11) 0 A1B1(12) 0 A1B1(13) 0 A1B1(14) 0 A1B1(15) 0]; % A1B1*y where y=x^2 so we rotate on x^32+1
    middleTerm_xDomain = [0 middleTerm(1) 0 middleTerm(2) 0 middleTerm(3) 0 middleTerm(4) 0 middleTerm(5) 0 middleTerm(6) 0 middleTerm(7) 0 middleTerm(8) 0 middleTerm(9) 0 middleTerm(10) 0 middleTerm(11) 0 middleTerm(12) 0 middleTerm(13) 0 middleTerm(14) 0 middleTerm(15) 0 middleTerm(16)]; %rotate 1 as we must multiply by x

    result = mod(A0B0_xDomain+A1B1_xDomain+middleTerm_xDomain,modulo);
end

