function f_split01 = forward_split01_good01(f)

    f_split01 = zeros(3,2);

    for i=0:5
        index_y = mod(i,3);
        index_z = mod(i,2);

        index_z_corrected = index_z+1;

        if(index_y==0)
            f_split01(1,index_z_corrected) = f(i+1);
            %g_split01(1,index_y_corrected) = g_16_1536(i+1);
        elseif(index_y==1)
            f_split01(2,index_z_corrected) = f(i+1);
            %g_split01(2,index_y_corrected) = g_16_1536(i+1);
        else
            f_split01(3,index_z_corrected) = f(i+1);
            %g_split01(3,index_y_corrected) = g_16_1536(i+1);
        end
    end

end

