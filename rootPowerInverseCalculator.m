function [expressionExpanded, powerOfZeta, inverse,inversePowerOfZeta] = rootPowerInverseCalculator(rootIndex, sign, power)
    
    % Inputs:
    %   - rootIndex: C0, C1, .... , C15 
    %       (Note: negatives are not needed in FFT)
    %   - sign = 0,1 (0=positive/odd ; 1=negative/even)
    %   C0, -C0, C1, -C1, C2, -C2, ....
    %   - power: Power of inverse (example: [C_1^4]^(-1)

    syms y

    exponents = [0,16,8,24,4,20,12,28,2,18,10,26,6,22,14,30,1,17,9,25,5,21,13,29,3,19,11,27,7,23,15,31];

    zeta = y^2;

    indexOfExponentToUse = 2*(rootIndex)+sign+1;
    exponentToUse = exponents(indexOfExponentToUse); % zeta will be elevated to zeta^exponentToUse
    
    expressionToEvaluate = polynomialReduce(expand((zeta^exponentToUse)^power),y^32+1);  % This has (zeta^exponentToUse) = C_i and (zeta^exponentToUse)^power = C_i^power
    
    powerOfZeta = exponentToUse;
    expressionExpanded = expressionToEvaluate;
    
    oneInRing = polynomialReduce(1,y^32+1);

    inverse = 0;

    for i=0:64 %It could be 32 but not sure, but for sure 64
        
        possibleInverse = polynomialReduce(expand(zeta^i),y^32+1);
        expressionTemp = polynomialReduce(expand(expressionToEvaluate * possibleInverse),y^32+1);
        %isequal(expressionTemp,oneInRing)

        if isequal(expressionTemp,oneInRing)

            inverse = possibleInverse;
            inversePowerOfZeta = i;
            break

        end

    end



    
    
end

