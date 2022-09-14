function f_split01_out = back_split02(f_split02_in)
    % Input of the form (3,16,32)
    % Output of the form (3,512)
    % Transform y^16 = w
    
    f_split01_out = zeros(3,512);
    
    for cycle=1:3
        for index_w  = 1:32
            for index_y = 1:16
                index_output = index_y + (index_w-1)*16;

                f_split01_out(cycle, index_output) = f_split02_in(cycle,index_y, index_w);
            end
        end
    end


end

