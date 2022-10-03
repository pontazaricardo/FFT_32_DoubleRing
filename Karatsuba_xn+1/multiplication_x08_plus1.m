function result = multiplication_x08_plus1(f,g,modulo)
     
    % Input: f,g of the form f=a0+a1z+...+a7z^7
    % Output: h=f*g reduced in Z[z]/<z^8+1>
    
    a00 = f(1);
    a01 = f(2);
    a02 = f(3);
    a03 = f(4);
    a04 = f(5);
    a05 = f(6);
    a06 = f(7);
    a07 = f(8);

    b00 = g(1);
    b01 = g(2);
    b02 = g(3);
    b03 = g(4);
    b04 = g(5);
    b05 = g(6);
    b06 = g(7);
    b07 = g(8);

    %modulo = 2048;
    
    term00 = mod(- a07*b01 - a06*b02 - a05*b03 - a04*b04 - a03*b05 - a02*b06 - a01*b07 + a00*b00 , modulo);
    term01 = mod(- a07*b02 - a06*b03 - a05*b04 - a04*b05 - a03*b06 - a02*b07 + a01*b00 + a00*b01 , modulo);
    term02 = mod(- a07*b03 - a06*b04 - a05*b05 - a04*b06 - a03*b07 + a02*b00 + a01*b01 + a00*b02 , modulo);
    term03 = mod(- a07*b04 - a06*b05 - a05*b06 - a04*b07 + a03*b00 + a02*b01 + a01*b02 + a00*b03 , modulo);
    term04 = mod(- a07*b05 - a06*b06 - a05*b07 + a04*b00 + a03*b01 + a02*b02 + a01*b03 + a00*b04 , modulo);
    term05 = mod(- a07*b06 - a06*b07 + a05*b00 + a04*b01 + a03*b02 + a02*b03 + a01*b04 + a00*b05 , modulo);
    term06 = mod(- a07*b07 + a06*b00 + a05*b01 + a04*b02 + a03*b03 + a02*b04 + a01*b05 + a00*b06 , modulo);
    term07 = mod(a07*b00 + a06*b01 + a05*b02 + a04*b03 + a03*b04 + a02*b05 + a01*b06 + a00*b07 , modulo);

    result = [term00, term01, term02, term03, term04, term05, term06, term07];

end

