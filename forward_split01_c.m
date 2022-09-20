function f_split01 = forward_split01_c(f_sizeTotal,sizeTotal)

    %Input: Get a polynomial of size sizeTotal, reduce it to R[y,z]/<y^512-1,z^3-1>

    f_split01 = zeros(3,512);

    for i=0:sizeTotal
        index_y = mod(i,2^9);
        index_z = mod(i,3);

        index_y_corrected = index_y+1;

        if(index_z==0)
            f_split01(1,index_y_corrected) = f_split01(1,index_y_corrected)+f_sizeTotal(i+1);
            %g_split01(1,index_y_corrected) = g_16_1536(i+1);
        elseif(index_z==1)
            f_split01(2,index_y_corrected) = f_split01(2,index_y_corrected)+f_sizeTotal(i+1);
            %g_split01(2,index_y_corrected) = g_16_1536(i+1);
        else
            f_split01(3,index_y_corrected) = f_split01(3,index_y_corrected)+f_sizeTotal(i+1);
            %g_split01(3,index_y_corrected) = g_16_1536(i+1);
        end
    end

end
