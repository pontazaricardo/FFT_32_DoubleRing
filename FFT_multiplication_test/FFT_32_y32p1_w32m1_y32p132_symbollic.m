for i=0:31

    disp([num2str(i,'product_%02d = mod( ...\n')])

    for j1=0:31
        for j2=0:31
            
            if(mod(j1+j2,32)==i)

                %j1=31 => NOT use +
                
                if(j1~=31)
                    disp(['      ' num2str(j1,'multiplication_x32_plus1(FN%02d')  num2str(j2,',FN%02d,2048) + ... \n')])
                else
                    disp(['      ' num2str(j1,'multiplication_x32_plus1(FN%02d')  num2str(j2,',FN%02d,2048) , 2048);\n')])
                end

            end
        end
    end

    disp(' ')
end


%disp(['d' num2str(10,'%02d') 'r'])