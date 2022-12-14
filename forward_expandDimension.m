function f_11_1536_out = forward_expandDimension(f_11_in)
    
    % Input: f_11_in - array of 677 elements modulo 2048
    % Output: f_11_1536_out - array of 1536 elements modulo 2048

    % We must convert the arrays to dim 1536
    f_11_1536_out = [f_11_in zeros(1,1536-677)];
end

