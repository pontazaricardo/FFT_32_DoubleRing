function result = karatsuba_512(f,g)
    % Input: f, g of size 512 (polynomial a0+a1t+...+a_511t^511 = [a0,a1,..,a511]
    % Output: product f*g (a0+a1t+...+a_1022t^1022) = [a0,a1,...,a_13,a_14]
    % Output size(1,63)
    
    A0 = f([1:256]);
    A1 = f([257:512]);
    
    B0 = g([1:256]);
    B1 = g([257:512]);
    
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
    
    
    product_align01 = [A0B0 zeros(1,32)];
    product_align02 = [zeros(1,16) middle_coefficient zeros(1,16)];
    product_align03 = [zeros(1,32) A1B1 ];
    
    result = product_align01+product_align02+product_align03;

end
