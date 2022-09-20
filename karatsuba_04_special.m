function result = karatsuba_04_special(f00,f01,f02,g00,g01,g02)
    % Input: f00,f01,f02,g00,g01,g02 where the polynomials to multiply are
    %    f = f00 + f01*z + f02*z^2
    %    g = g00 + g01*z + g02*z^2
    % Output: product h = f*g  = h00 + h01*z + ... + h04*z^4
    % Output size(1,63)

    f = [f00, f01, f02]
    g = [g00, g01, g02] %both f and g are of size 512*3 = 1536

    A0 = f([1:768]);
    A1 = f([769:1536]);
    
    B0 = g([1:768]);
    B1 = g([769:1536]);
    
    %% Prepare products
    
    A0B0 = textbook_multiplication_total(A0,B0);  %dim 3+3 - 7 items in array
    A1B1 = textbook_multiplication_total(A1,B1);

    %A0B0 = karatsuba_16(A0,B0);  %dim 3+3 - 7 items in array
    %A1B1 = karatsuba_16(A1,B1);
    
    sum_A0A1 = A0+A1;
    sum_B0B1 = B0+B1;
    
    product_sums = textbook_multiplication_total(sum_A0A1,sum_B0B1);
    %product_sums = karatsuba_16(sum_A0A1,sum_B0B1);

    middle_coefficient = product_sums - A0B0 - A1B1;
    
    %% Align products and add
    %   [0,1,2,3,4,5,6]
    %           [0,1,2,3,4,5,6]
    %                   [0,1,2,3,4,5,6]
    
    
    product_align01 = [A0B0 zeros(1,1536)];
    product_align02 = [zeros(1,768) middle_coefficient zeros(1,768)];
    product_align03 = [zeros(1,1536) A1B1 ];
    
    result = product_align01+product_align02+product_align03;
    

end
