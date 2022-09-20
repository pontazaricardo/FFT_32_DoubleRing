function f_split02_out = forward_split02(f_split01_in)
    f_split02_out = zeros(3,16,32); % x=1,2,3 , %z=0,...,15 (exponent of y) %y=0,...,31 (exponent of w), (zeros(row,column,row))

    for cycle=1:3
        for i=0:511
            index_y_schonage = mod(i,16); % y^16=w
            index_w_schonage = floor(i/16); % w^index
        
            f_split02_out(cycle,index_y_schonage+1,index_w_schonage+1) = f_split01_in(cycle,i+1);
        end
    end
end

