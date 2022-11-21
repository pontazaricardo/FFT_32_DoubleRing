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

    % Original FFT Correct BEGIN =================

%      term00 = mod(- a07*b01 - a06*b02 - a05*b03 - a04*b04 - a03*b05 - a02*b06 - a01*b07 + a00*b00 , modulo);
%      term01 = mod(- a07*b02 - a06*b03 - a05*b04 - a04*b05 - a03*b06 - a02*b07 + a01*b00 + a00*b01 , modulo);
%      term02 = mod(- a07*b03 - a06*b04 - a05*b05 - a04*b06 - a03*b07 + a02*b00 + a01*b01 + a00*b02 , modulo);
%      term03 = mod(- a07*b04 - a06*b05 - a05*b06 - a04*b07 + a03*b00 + a02*b01 + a01*b02 + a00*b03 , modulo);
%      term04 = mod(- a07*b05 - a06*b06 - a05*b07 + a04*b00 + a03*b01 + a02*b02 + a01*b03 + a00*b04 , modulo);
%      term05 = mod(- a07*b06 - a06*b07 + a05*b00 + a04*b01 + a03*b02 + a02*b03 + a01*b04 + a00*b05 , modulo);
%      term06 = mod(- a07*b07 + a06*b00 + a05*b01 + a04*b02 + a03*b03 + a02*b04 + a01*b05 + a00*b06 , modulo);
%      term07 = mod(  a07*b00 + a06*b01 + a05*b02 + a04*b03 + a03*b04 + a02*b05 + a01*b06 + a00*b07 , modulo);
% 
%     result = [term00, term01, term02, term03, term04, term05, term06, term07];

    % Original FFT Correct ENDS =================

    % ROTATION TO ADDAPT NEON STYLE

    term00_new = mod([- a07*b01, - a07*b02, - a07*b03, - a07*b04, - a07*b05, - a07*b06, - a07*b07, + a07*b00], modulo);
    term01_new = mod([- a06*b02, - a06*b03, - a06*b04, - a06*b05, - a06*b06, - a06*b07, + a06*b00, + a06*b01], modulo);
    term02_new = mod([- a05*b03, - a05*b04, - a05*b05, - a05*b06, - a05*b07, + a05*b00, + a05*b01, + a05*b02], modulo);
    term03_new = mod([- a04*b04, - a04*b05, - a04*b06, - a04*b07, + a04*b00, + a04*b01, + a04*b02, + a04*b03], modulo);
    term04_new = mod([- a03*b05, - a03*b06, - a03*b07, + a03*b00, + a03*b01, + a03*b02, + a03*b03, + a03*b04], modulo);
    term05_new = mod([- a02*b06, - a02*b07, + a02*b00, + a02*b01, + a02*b02, + a02*b03, + a02*b04, + a02*b05], modulo);
    term06_new = mod([- a01*b07, + a01*b00, + a01*b01, + a01*b02, + a01*b03, + a01*b04, + a01*b05, + a01*b06], modulo);
    term07_new = mod([+ a00*b00, + a00*b01, + a00*b02, + a00*b03, + a00*b04, + a00*b05, + a00*b06, + a00*b07], modulo);

    result = mod(term00_new + term01_new + term02_new + term03_new + term04_new + term05_new + term06_new + term07_new, modulo);

end

