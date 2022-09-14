function result = textbook_multiplication_total02(f,g)
    % Input: f, g of dimension n (a0+a1x+...+a_{n-1}x^{n-1}) = [a0,a1,...,a_{n-1}]
    % Output: h = f*g
    
    dimensionF = size(f,2);
    dimensionG = size(g,2);
    
    result = zeros(1, dimensionF+dimensionG -1);
    
    for i=0:dimensionF-1
        for j=0:dimensionG-1
            result(i+j+1) = result(i+j+1)+f(i+1)*g(j+1);
        end
    end
    

end

