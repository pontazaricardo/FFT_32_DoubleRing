function f_split01 = forward_split01_b(f_11_1536)

    f_split01 = zeros(3,512);

    for i0=0:511
        for i1=0:2
            i = mod(171*3*i0+2*512*i1,1536);
            
            f_split01(i1+1,i0+1) = f_11_1536(i+1);
            
        end
    end

end

