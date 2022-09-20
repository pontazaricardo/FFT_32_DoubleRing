function f_split01 = forward_split01(f_11_1536)

    f_split01 = zeros(3,512);

    for i=0:1535
        index_y = mod(i,2^9);
        index_z = mod(i,3);

        index_y_corrected = index_y+1;

        if(index_z==0)
            f_split01(1,index_y_corrected) = f_11_1536(i+1);
            %g_split01(1,index_y_corrected) = g_16_1536(i+1);
        elseif(index_z==1)
            f_split01(2,index_y_corrected) = f_11_1536(i+1);
            %g_split01(2,index_y_corrected) = g_16_1536(i+1);
        else
            f_split01(3,index_y_corrected) = f_11_1536(i+1);
            %g_split01(3,index_y_corrected) = g_16_1536(i+1);
        end
    end

end

