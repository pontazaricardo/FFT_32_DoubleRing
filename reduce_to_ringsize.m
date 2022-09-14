function result = reduce_to_ringsize(f,dimension)
    
    result = zeros(1,dimension);
    sizeOfF = size(f,2);
    
    for i=0:sizeOfF-1
        index = mod(i,dimension)+1;

        result(index) = result(index)+f(i+1);
    end
end

