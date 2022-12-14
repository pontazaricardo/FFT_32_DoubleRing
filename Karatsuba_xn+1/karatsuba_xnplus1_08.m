function result = karatsuba_xnplus1_08(f,g)
 % Input: f, g of size 8 (polynomial a0+a1t+...+a7t^7 = [a0,a1,..,a7]
    % Output: 
    %   product f*g (a0+a1t+...+a_13t^13+a_14t^14) =
    %       [a0,a1,...,a_13,a_14] IN Z[x]/<x^8+1> (NOT x^8-1)
    % Output size(1,15)
    
    A0 = f([1:4]);
    A1 = f([5:8]);
    
    B0 = g([1:4]);
    B1 = g([5:8]);
    
    %% Prepare products
    
    A0B0 = textbook_multiplication_total(A0,B0);  %dim 3+3 - 7 items in array
    A1B1 = textbook_multiplication_total(A1,B1);
    
    sum_A0A1 = A0+A1;
    sum_B0B1 = B0+B1;
    
    product_sums = textbook_multiplication_total(sum_A0A1,sum_B0B1);
    middle_coefficient = product_sums - A0B0 - A1B1;
    
    %% Align products and add
    %   [0,1,2,3,4,5,6]
    %           [0,1,2,3,4,5,6]
    %                   [0,1,2,3,4,5,6]
    
    
    product_align01 = [A0B0 zeros(1,8)];
    product_align02 = [zeros(1,4) middle_coefficient zeros(1,4)];
    product_align03 = [zeros(1,8) A1B1 ];
    
    result = product_align01+product_align02+product_align03;

end

