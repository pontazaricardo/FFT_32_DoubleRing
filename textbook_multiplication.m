function h_result = textbook_multiplication(f,g)
    
    % Input: f,g arrays of same size
    % Output: h = f*g, where size(h) = (1,sizeOfArrays*2);

    sizeOfArrays = size(f,2);
    temp_result = zeros(1,sizeOfArrays*2);

    for i=1:sizeOfArrays
        for j=1:sizeOfArrays
            i1= i-1;
            j1 = j-1;
            temp_result(i1+j1+1) = temp_result(i1+j1+1)+f(i1+1)*g(j1+1);
        end
    end
    
    %temp_result;

    h_result = zeros(1,sizeOfArrays);

    for i=1:sizeOfArrays
        h_result(i) = temp_result(i);
    end

    for i=sizeOfArrays : sizeOfArrays*2-1
        h_result(i-sizeOfArrays+1)=h_result(i-sizeOfArrays+1)+temp_result(i+1);
    end


end
