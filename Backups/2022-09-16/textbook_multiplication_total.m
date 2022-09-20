function result = textbook_multiplication_total(f,g)
    % Input: f, g of dimension n (a0+a1x+...+a_{n-1}x^{n-1}) = [a0,a1,...,a_{n-1}]
    % Output: h = f*g
    
    dimension = size(f,2);
    
    result = zeros(1,2*dimension-1);
    
    for i=0:dimension-1
        for j=0:dimension-1
            result(i+j+1) = result(i+j+1)+f(i+1)*g(j+1);
        end
    end
    

end

