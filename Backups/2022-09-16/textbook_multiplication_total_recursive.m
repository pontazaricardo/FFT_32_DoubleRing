function result = textbook_multiplication_total_recursive(list, modulo)

    %Input: cell array, ex: list = {[1,2,3],[4,5],[6,7,8,9]}
        % NOTE: modulo = 0 => No modulo
        
    %Output: product of all the polynomials

    totalOfPolynomials = size(list,2)

    result = mod(cell2mat(list(1)),modulo);

    for i=2:totalOfPolynomials
        result = textbook_multiplication_total02(result, mod(cell2mat(list(i)),modulo));
        result = mod(result,modulo);
    end

end

