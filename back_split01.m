function f_11_1536_out = back_split01(f_split01_in)
    % Input: array of the form (3,512)
    % Output: Must return an array of 1536
    
    %Note: 
    % p0 = 2^9  and p0^(-1) mod p1 = (2^9)^(-1) mod 3 = 2
    % p1 = 3    and p1^(-1) mod p0 = 3^(-1) mod 512 = 171
    % index = i0: position 2^9 (y) and i1: position 3 (z) -> 
    % x^index = (y^i0)(z^i1)

    % index = mod(171*3*i0 + 2*512*i1, 1536)

    f_11_1536_out = zeros(1,1536);

    for i1=0:2
        for i0=0:511
            index = mod(171*3*i0 + 2*512*i1,1536);

            f_11_1536_out(index+1) = f_split01_in(i1+1, i0+1);

        end
    end
    




end

