clc;

setSymbolVariables = 1

if (setSymbolVariables==1)

    syms a_00_00 a_00_01 a_00_02 a_00_03 a_00_04 a_00_05 a_00_06 a_00_07 a_00_08 a_00_09 a_00_10 a_00_11 a_00_12 a_00_13 a_00_14 a_00_15 a_00_16 a_00_17 a_00_18 a_00_19 a_00_20 a_00_21 a_00_22 a_00_23 a_00_24 a_00_25 a_00_26 a_00_27 a_00_28 a_00_29 a_00_30 a_00_31
    syms a_01_00 a_01_01 a_01_02 a_01_03 a_01_04 a_01_05 a_01_06 a_01_07 a_01_08 a_01_09 a_01_10 a_01_11 a_01_12 a_01_13 a_01_14 a_01_15 a_01_16 a_01_17 a_01_18 a_01_19 a_01_20 a_01_21 a_01_22 a_01_23 a_01_24 a_01_25 a_01_26 a_01_27 a_01_28 a_01_29 a_01_30 a_01_31
    syms a_02_00 a_02_01 a_02_02 a_02_03 a_02_04 a_02_05 a_02_06 a_02_07 a_02_08 a_02_09 a_02_10 a_02_11 a_02_12 a_02_13 a_02_14 a_02_15 a_02_16 a_02_17 a_02_18 a_02_19 a_02_20 a_02_21 a_02_22 a_02_23 a_02_24 a_02_25 a_02_26 a_02_27 a_02_28 a_02_29 a_02_30 a_02_31
    syms a_03_00 a_03_01 a_03_02 a_03_03 a_03_04 a_03_05 a_03_06 a_03_07 a_03_08 a_03_09 a_03_10 a_03_11 a_03_12 a_03_13 a_03_14 a_03_15 a_03_16 a_03_17 a_03_18 a_03_19 a_03_20 a_03_21 a_03_22 a_03_23 a_03_24 a_03_25 a_03_26 a_03_27 a_03_28 a_03_29 a_03_30 a_03_31
    syms a_04_00 a_04_01 a_04_02 a_04_03 a_04_04 a_04_05 a_04_06 a_04_07 a_04_08 a_04_09 a_04_10 a_04_11 a_04_12 a_04_13 a_04_14 a_04_15 a_04_16 a_04_17 a_04_18 a_04_19 a_04_20 a_04_21 a_04_22 a_04_23 a_04_24 a_04_25 a_04_26 a_04_27 a_04_28 a_04_29 a_04_30 a_04_31
    syms a_05_00 a_05_01 a_05_02 a_05_03 a_05_04 a_05_05 a_05_06 a_05_07 a_05_08 a_05_09 a_05_10 a_05_11 a_05_12 a_05_13 a_05_14 a_05_15 a_05_16 a_05_17 a_05_18 a_05_19 a_05_20 a_05_21 a_05_22 a_05_23 a_05_24 a_05_25 a_05_26 a_05_27 a_05_28 a_05_29 a_05_30 a_05_31
    syms a_06_00 a_06_01 a_06_02 a_06_03 a_06_04 a_06_05 a_06_06 a_06_07 a_06_08 a_06_09 a_06_10 a_06_11 a_06_12 a_06_13 a_06_14 a_06_15 a_06_16 a_06_17 a_06_18 a_06_19 a_06_20 a_06_21 a_06_22 a_06_23 a_06_24 a_06_25 a_06_26 a_06_27 a_06_28 a_06_29 a_06_30 a_06_31
    syms a_07_00 a_07_01 a_07_02 a_07_03 a_07_04 a_07_05 a_07_06 a_07_07 a_07_08 a_07_09 a_07_10 a_07_11 a_07_12 a_07_13 a_07_14 a_07_15 a_07_16 a_07_17 a_07_18 a_07_19 a_07_20 a_07_21 a_07_22 a_07_23 a_07_24 a_07_25 a_07_26 a_07_27 a_07_28 a_07_29 a_07_30 a_07_31
    syms a_08_00 a_08_01 a_08_02 a_08_03 a_08_04 a_08_05 a_08_06 a_08_07 a_08_08 a_08_09 a_08_10 a_08_11 a_08_12 a_08_13 a_08_14 a_08_15 a_08_16 a_08_17 a_08_18 a_08_19 a_08_20 a_08_21 a_08_22 a_08_23 a_08_24 a_08_25 a_08_26 a_08_27 a_08_28 a_08_29 a_08_30 a_08_31
    syms a_09_00 a_09_01 a_09_02 a_09_03 a_09_04 a_09_05 a_09_06 a_09_07 a_09_08 a_09_09 a_09_10 a_09_11 a_09_12 a_09_13 a_09_14 a_09_15 a_09_16 a_09_17 a_09_18 a_09_19 a_09_20 a_09_21 a_09_22 a_09_23 a_09_24 a_09_25 a_09_26 a_09_27 a_09_28 a_09_29 a_09_30 a_09_31
    syms a_10_00 a_10_01 a_10_02 a_10_03 a_10_04 a_10_05 a_10_06 a_10_07 a_10_08 a_10_09 a_10_10 a_10_11 a_10_12 a_10_13 a_10_14 a_10_15 a_10_16 a_10_17 a_10_18 a_10_19 a_10_20 a_10_21 a_10_22 a_10_23 a_10_24 a_10_25 a_10_26 a_10_27 a_10_28 a_10_29 a_10_30 a_10_31
    syms a_11_00 a_11_01 a_11_02 a_11_03 a_11_04 a_11_05 a_11_06 a_11_07 a_11_08 a_11_09 a_11_10 a_11_11 a_11_12 a_11_13 a_11_14 a_11_15 a_11_16 a_11_17 a_11_18 a_11_19 a_11_20 a_11_21 a_11_22 a_11_23 a_11_24 a_11_25 a_11_26 a_11_27 a_11_28 a_11_29 a_11_30 a_11_31
    syms a_12_00 a_12_01 a_12_02 a_12_03 a_12_04 a_12_05 a_12_06 a_12_07 a_12_08 a_12_09 a_12_10 a_12_11 a_12_12 a_12_13 a_12_14 a_12_15 a_12_16 a_12_17 a_12_18 a_12_19 a_12_20 a_12_21 a_12_22 a_12_23 a_12_24 a_12_25 a_12_26 a_12_27 a_12_28 a_12_29 a_12_30 a_12_31
    syms a_13_00 a_13_01 a_13_02 a_13_03 a_13_04 a_13_05 a_13_06 a_13_07 a_13_08 a_13_09 a_13_10 a_13_11 a_13_12 a_13_13 a_13_14 a_13_15 a_13_16 a_13_17 a_13_18 a_13_19 a_13_20 a_13_21 a_13_22 a_13_23 a_13_24 a_13_25 a_13_26 a_13_27 a_13_28 a_13_29 a_13_30 a_13_31
    syms a_14_00 a_14_01 a_14_02 a_14_03 a_14_04 a_14_05 a_14_06 a_14_07 a_14_08 a_14_09 a_14_10 a_14_11 a_14_12 a_14_13 a_14_14 a_14_15 a_14_16 a_14_17 a_14_18 a_14_19 a_14_20 a_14_21 a_14_22 a_14_23 a_14_24 a_14_25 a_14_26 a_14_27 a_14_28 a_14_29 a_14_30 a_14_31
    syms a_15_00 a_15_01 a_15_02 a_15_03 a_15_04 a_15_05 a_15_06 a_15_07 a_15_08 a_15_09 a_15_10 a_15_11 a_15_12 a_15_13 a_15_14 a_15_15 a_15_16 a_15_17 a_15_18 a_15_19 a_15_20 a_15_21 a_15_22 a_15_23 a_15_24 a_15_25 a_15_26 a_15_27 a_15_28 a_15_29 a_15_30 a_15_31
    syms a_16_00 a_16_01 a_16_02 a_16_03 a_16_04 a_16_05 a_16_06 a_16_07 a_16_08 a_16_09 a_16_10 a_16_11 a_16_12 a_16_13 a_16_14 a_16_15 a_16_16 a_16_17 a_16_18 a_16_19 a_16_20 a_16_21 a_16_22 a_16_23 a_16_24 a_16_25 a_16_26 a_16_27 a_16_28 a_16_29 a_16_30 a_16_31
    syms a_17_00 a_17_01 a_17_02 a_17_03 a_17_04 a_17_05 a_17_06 a_17_07 a_17_08 a_17_09 a_17_10 a_17_11 a_17_12 a_17_13 a_17_14 a_17_15 a_17_16 a_17_17 a_17_18 a_17_19 a_17_20 a_17_21 a_17_22 a_17_23 a_17_24 a_17_25 a_17_26 a_17_27 a_17_28 a_17_29 a_17_30 a_17_31
    syms a_18_00 a_18_01 a_18_02 a_18_03 a_18_04 a_18_05 a_18_06 a_18_07 a_18_08 a_18_09 a_18_10 a_18_11 a_18_12 a_18_13 a_18_14 a_18_15 a_18_16 a_18_17 a_18_18 a_18_19 a_18_20 a_18_21 a_18_22 a_18_23 a_18_24 a_18_25 a_18_26 a_18_27 a_18_28 a_18_29 a_18_30 a_18_31
    syms a_19_00 a_19_01 a_19_02 a_19_03 a_19_04 a_19_05 a_19_06 a_19_07 a_19_08 a_19_09 a_19_10 a_19_11 a_19_12 a_19_13 a_19_14 a_19_15 a_19_16 a_19_17 a_19_18 a_19_19 a_19_20 a_19_21 a_19_22 a_19_23 a_19_24 a_19_25 a_19_26 a_19_27 a_19_28 a_19_29 a_19_30 a_19_31
    syms a_20_00 a_20_01 a_20_02 a_20_03 a_20_04 a_20_05 a_20_06 a_20_07 a_20_08 a_20_09 a_20_10 a_20_11 a_20_12 a_20_13 a_20_14 a_20_15 a_20_16 a_20_17 a_20_18 a_20_19 a_20_20 a_20_21 a_20_22 a_20_23 a_20_24 a_20_25 a_20_26 a_20_27 a_20_28 a_20_29 a_20_30 a_20_31
    syms a_21_00 a_21_01 a_21_02 a_21_03 a_21_04 a_21_05 a_21_06 a_21_07 a_21_08 a_21_09 a_21_10 a_21_11 a_21_12 a_21_13 a_21_14 a_21_15 a_21_16 a_21_17 a_21_18 a_21_19 a_21_20 a_21_21 a_21_22 a_21_23 a_21_24 a_21_25 a_21_26 a_21_27 a_21_28 a_21_29 a_21_30 a_21_31
    syms a_22_00 a_22_01 a_22_02 a_22_03 a_22_04 a_22_05 a_22_06 a_22_07 a_22_08 a_22_09 a_22_10 a_22_11 a_22_12 a_22_13 a_22_14 a_22_15 a_22_16 a_22_17 a_22_18 a_22_19 a_22_20 a_22_21 a_22_22 a_22_23 a_22_24 a_22_25 a_22_26 a_22_27 a_22_28 a_22_29 a_22_30 a_22_31
    syms a_23_00 a_23_01 a_23_02 a_23_03 a_23_04 a_23_05 a_23_06 a_23_07 a_23_08 a_23_09 a_23_10 a_23_11 a_23_12 a_23_13 a_23_14 a_23_15 a_23_16 a_23_17 a_23_18 a_23_19 a_23_20 a_23_21 a_23_22 a_23_23 a_23_24 a_23_25 a_23_26 a_23_27 a_23_28 a_23_29 a_23_30 a_23_31
    syms a_24_00 a_24_01 a_24_02 a_24_03 a_24_04 a_24_05 a_24_06 a_24_07 a_24_08 a_24_09 a_24_10 a_24_11 a_24_12 a_24_13 a_24_14 a_24_15 a_24_16 a_24_17 a_24_18 a_24_19 a_24_20 a_24_21 a_24_22 a_24_23 a_24_24 a_24_25 a_24_26 a_24_27 a_24_28 a_24_29 a_24_30 a_24_31
    syms a_25_00 a_25_01 a_25_02 a_25_03 a_25_04 a_25_05 a_25_06 a_25_07 a_25_08 a_25_09 a_25_10 a_25_11 a_25_12 a_25_13 a_25_14 a_25_15 a_25_16 a_25_17 a_25_18 a_25_19 a_25_20 a_25_21 a_25_22 a_25_23 a_25_24 a_25_25 a_25_26 a_25_27 a_25_28 a_25_29 a_25_30 a_25_31
    syms a_26_00 a_26_01 a_26_02 a_26_03 a_26_04 a_26_05 a_26_06 a_26_07 a_26_08 a_26_09 a_26_10 a_26_11 a_26_12 a_26_13 a_26_14 a_26_15 a_26_16 a_26_17 a_26_18 a_26_19 a_26_20 a_26_21 a_26_22 a_26_23 a_26_24 a_26_25 a_26_26 a_26_27 a_26_28 a_26_29 a_26_30 a_26_31
    syms a_27_00 a_27_01 a_27_02 a_27_03 a_27_04 a_27_05 a_27_06 a_27_07 a_27_08 a_27_09 a_27_10 a_27_11 a_27_12 a_27_13 a_27_14 a_27_15 a_27_16 a_27_17 a_27_18 a_27_19 a_27_20 a_27_21 a_27_22 a_27_23 a_27_24 a_27_25 a_27_26 a_27_27 a_27_28 a_27_29 a_27_30 a_27_31
    syms a_28_00 a_28_01 a_28_02 a_28_03 a_28_04 a_28_05 a_28_06 a_28_07 a_28_08 a_28_09 a_28_10 a_28_11 a_28_12 a_28_13 a_28_14 a_28_15 a_28_16 a_28_17 a_28_18 a_28_19 a_28_20 a_28_21 a_28_22 a_28_23 a_28_24 a_28_25 a_28_26 a_28_27 a_28_28 a_28_29 a_28_30 a_28_31
    syms a_29_00 a_29_01 a_29_02 a_29_03 a_29_04 a_29_05 a_29_06 a_29_07 a_29_08 a_29_09 a_29_10 a_29_11 a_29_12 a_29_13 a_29_14 a_29_15 a_29_16 a_29_17 a_29_18 a_29_19 a_29_20 a_29_21 a_29_22 a_29_23 a_29_24 a_29_25 a_29_26 a_29_27 a_29_28 a_29_29 a_29_30 a_29_31
    syms a_30_00 a_30_01 a_30_02 a_30_03 a_30_04 a_30_05 a_30_06 a_30_07 a_30_08 a_30_09 a_30_10 a_30_11 a_30_12 a_30_13 a_30_14 a_30_15 a_30_16 a_30_17 a_30_18 a_30_19 a_30_20 a_30_21 a_30_22 a_30_23 a_30_24 a_30_25 a_30_26 a_30_27 a_30_28 a_30_29 a_30_30 a_30_31
    syms a_31_00 a_31_01 a_31_02 a_31_03 a_31_04 a_31_05 a_31_06 a_31_07 a_31_08 a_31_09 a_31_10 a_31_11 a_31_12 a_31_13 a_31_14 a_31_15 a_31_16 a_31_17 a_31_18 a_31_19 a_31_20 a_31_21 a_31_22 a_31_23 a_31_24 a_31_25 a_31_26 a_31_27 a_31_28 a_31_29 a_31_30 a_31_31

    syms y w z

end

sympref('PolynomialDisplayStyle','descend');

% The following A00, A01, ... , A31 are the line arrays of the pointwise f:
% f = [A00; A01; ... ; A31] where A00 = f(zeta^0), A01 = f(zeta^16), 
% A02 = f(zeta)^8 according to the factorization

% Correct factorization order:
    % (w-zeta^0)(w-zeta^16) (w-zeta^8)(w-zeta^24)   (w-zeta^4)(w-zeta^20) (w-zeta^12)(w-zeta^28) 
	% (w-zeta^2)(w-zeta^18) (w-zeta^10)(w-zeta^26)  (w-zeta^6)(w-zeta^22) (w-zeta^14)(w-zeta^30)
	% (w-zeta^1)(w-zeta^17) (w-zeta^9)(w-zeta^25)   (w-zeta^5)(w-zeta^21) (w-zeta^13)(w-zeta^29)
	% (w-zeta^3)(w-zeta^19) (w-zeta^11)(w-zeta^27)  (w-zeta^7)(w-zeta^23) (w-zeta^15)(w-zeta^31)

A00 = a_00_00 + a_00_01*y + a_00_02*y^2 + a_00_03*y^3 + a_00_04*y^4 + a_00_05*y^5 + a_00_06*y^6 + a_00_07*y^7 + a_00_08*y^8 + a_00_09*y^9 + a_00_10*y^10 + a_00_11*y^11 + ...
    a_00_12*y^12 + a_00_13*y^13 + a_00_14*y^14 + a_00_15*y^15 + a_00_16*y^16 + a_00_17*y^17 + a_00_18*y^18 + a_00_19*y^19 + a_00_20*y^20 + a_00_21*y^21 + a_00_22*y^22 + ...
    a_00_23*y^23 + a_00_24*y^24 + a_00_25*y^25 + a_00_26*y^26 + a_00_27*y^27 + a_00_28*y^28 + a_00_29*y^29 + a_00_30*y^30 + a_00_31*y^31;

A01 = a_01_00 + a_01_01*y + a_01_02*y^2 + a_01_03*y^3 + a_01_04*y^4 + a_01_05*y^5 + a_01_06*y^6 + a_01_07*y^7 + a_01_08*y^8 + a_01_09*y^9 + a_01_10*y^10 + a_01_11*y^11 + ...
    a_01_12*y^12 + a_01_13*y^13 + a_01_14*y^14 + a_01_15*y^15 + a_01_16*y^16 + a_01_17*y^17 + a_01_18*y^18 + a_01_19*y^19 + a_01_20*y^20 + a_01_21*y^21 + a_01_22*y^22 + ...
    a_01_23*y^23 + a_01_24*y^24 + a_01_25*y^25 + a_01_26*y^26 + a_01_27*y^27 + a_01_28*y^28 + a_01_29*y^29 + a_01_30*y^30 + a_01_31*y^31;

A02 = a_02_00 + a_02_01*y + a_02_02*y^2 + a_02_03*y^3 + a_02_04*y^4 + a_02_05*y^5 + a_02_06*y^6 + a_02_07*y^7 + a_02_08*y^8 + a_02_09*y^9 + a_02_10*y^10 + a_02_11*y^11 + ...
    a_02_12*y^12 + a_02_13*y^13 + a_02_14*y^14 + a_02_15*y^15 + a_02_16*y^16 + a_02_17*y^17 + a_02_18*y^18 + a_02_19*y^19 + a_02_20*y^20 + a_02_21*y^21 + a_02_22*y^22 + ...
    a_02_23*y^23 + a_02_24*y^24 + a_02_25*y^25 + a_02_26*y^26 + a_02_27*y^27 + a_02_28*y^28 + a_02_29*y^29 + a_02_30*y^30 + a_02_31*y^31;

A03 = a_03_00 + a_03_01*y + a_03_02*y^2 + a_03_03*y^3 + a_03_04*y^4 + a_03_05*y^5 + a_03_06*y^6 + a_03_07*y^7 + a_03_08*y^8 + a_03_09*y^9 + a_03_10*y^10 + a_03_11*y^11 + ...
    a_03_12*y^12 + a_03_13*y^13 + a_03_14*y^14 + a_03_15*y^15 + a_03_16*y^16 + a_03_17*y^17 + a_03_18*y^18 + a_03_19*y^19 + a_03_20*y^20 + a_03_21*y^21 + a_03_22*y^22 + ...
    a_03_23*y^23 + a_03_24*y^24 + a_03_25*y^25 + a_03_26*y^26 + a_03_27*y^27 + a_03_28*y^28 + a_03_29*y^29 + a_03_30*y^30 + a_03_31*y^31;

A04 = a_04_00 + a_04_01*y + a_04_02*y^2 + a_04_03*y^3 + a_04_04*y^4 + a_04_05*y^5 + a_04_06*y^6 + a_04_07*y^7 + a_04_08*y^8 + a_04_09*y^9 + a_04_10*y^10 + a_04_11*y^11 + ...
    a_04_12*y^12 + a_04_13*y^13 + a_04_14*y^14 + a_04_15*y^15 + a_04_16*y^16 + a_04_17*y^17 + a_04_18*y^18 + a_04_19*y^19 + a_04_20*y^20 + a_04_21*y^21 + a_04_22*y^22 + ...
    a_04_23*y^23 + a_04_24*y^24 + a_04_25*y^25 + a_04_26*y^26 + a_04_27*y^27 + a_04_28*y^28 + a_04_29*y^29 + a_04_30*y^30 + a_04_31*y^31;

A05 = a_05_00 + a_05_01*y + a_05_02*y^2 + a_05_03*y^3 + a_05_04*y^4 + a_05_05*y^5 + a_05_06*y^6 + a_05_07*y^7 + a_05_08*y^8 + a_05_09*y^9 + a_05_10*y^10 + a_05_11*y^11 + ...
    a_05_12*y^12 + a_05_13*y^13 + a_05_14*y^14 + a_05_15*y^15 + a_05_16*y^16 + a_05_17*y^17 + a_05_18*y^18 + a_05_19*y^19 + a_05_20*y^20 + a_05_21*y^21 + a_05_22*y^22 + ...
    a_05_23*y^23 + a_05_24*y^24 + a_05_25*y^25 + a_05_26*y^26 + a_05_27*y^27 + a_05_28*y^28 + a_05_29*y^29 + a_05_30*y^30 + a_05_31*y^31;

A06 = a_06_00 + a_06_01*y + a_06_02*y^2 + a_06_03*y^3 + a_06_04*y^4 + a_06_05*y^5 + a_06_06*y^6 + a_06_07*y^7 + a_06_08*y^8 + a_06_09*y^9 + a_06_10*y^10 + a_06_11*y^11 + ...
    a_06_12*y^12 + a_06_13*y^13 + a_06_14*y^14 + a_06_15*y^15 + a_06_16*y^16 + a_06_17*y^17 + a_06_18*y^18 + a_06_19*y^19 + a_06_20*y^20 + a_06_21*y^21 + a_06_22*y^22 + ...
    a_06_23*y^23 + a_06_24*y^24 + a_06_25*y^25 + a_06_26*y^26 + a_06_27*y^27 + a_06_28*y^28 + a_06_29*y^29 + a_06_30*y^30 + a_06_31*y^31;

A07 = a_07_00 + a_07_01*y + a_07_02*y^2 + a_07_03*y^3 + a_07_04*y^4 + a_07_05*y^5 + a_07_06*y^6 + a_07_07*y^7 + a_07_08*y^8 + a_07_09*y^9 + a_07_10*y^10 + a_07_11*y^11 + ...
    a_07_12*y^12 + a_07_13*y^13 + a_07_14*y^14 + a_07_15*y^15 + a_07_16*y^16 + a_07_17*y^17 + a_07_18*y^18 + a_07_19*y^19 + a_07_20*y^20 + a_07_21*y^21 + a_07_22*y^22 + ...
    a_07_23*y^23 + a_07_24*y^24 + a_07_25*y^25 + a_07_26*y^26 + a_07_27*y^27 + a_07_28*y^28 + a_07_29*y^29 + a_07_30*y^30 + a_07_31*y^31;

A08 = a_08_00 + a_08_01*y + a_08_02*y^2 + a_08_03*y^3 + a_08_04*y^4 + a_08_05*y^5 + a_08_06*y^6 + a_08_07*y^7 + a_08_08*y^8 + a_08_09*y^9 + a_08_10*y^10 + a_08_11*y^11 + ...
    a_08_12*y^12 + a_08_13*y^13 + a_08_14*y^14 + a_08_15*y^15 + a_08_16*y^16 + a_08_17*y^17 + a_08_18*y^18 + a_08_19*y^19 + a_08_20*y^20 + a_08_21*y^21 + a_08_22*y^22 + ...
    a_08_23*y^23 + a_08_24*y^24 + a_08_25*y^25 + a_08_26*y^26 + a_08_27*y^27 + a_08_28*y^28 + a_08_29*y^29 + a_08_30*y^30 + a_08_31*y^31;

A09 = a_09_00 + a_09_01*y + a_09_02*y^2 + a_09_03*y^3 + a_09_04*y^4 + a_09_05*y^5 + a_09_06*y^6 + a_09_07*y^7 + a_09_08*y^8 + a_09_09*y^9 + a_09_10*y^10 + a_09_11*y^11 + ...
    a_09_12*y^12 + a_09_13*y^13 + a_09_14*y^14 + a_09_15*y^15 + a_09_16*y^16 + a_09_17*y^17 + a_09_18*y^18 + a_09_19*y^19 + a_09_20*y^20 + a_09_21*y^21 + a_09_22*y^22 + ...
    a_09_23*y^23 + a_09_24*y^24 + a_09_25*y^25 + a_09_26*y^26 + a_09_27*y^27 + a_09_28*y^28 + a_09_29*y^29 + a_09_30*y^30 + a_09_31*y^31;

A10 = a_10_00 + a_10_01*y + a_10_02*y^2 + a_10_03*y^3 + a_10_04*y^4 + a_10_05*y^5 + a_10_06*y^6 + a_10_07*y^7 + a_10_08*y^8 + a_10_09*y^9 + a_10_10*y^10 + a_10_11*y^11 + ...
    a_10_12*y^12 + a_10_13*y^13 + a_10_14*y^14 + a_10_15*y^15 + a_10_16*y^16 + a_10_17*y^17 + a_10_18*y^18 + a_10_19*y^19 + a_10_20*y^20 + a_10_21*y^21 + a_10_22*y^22 + ...
    a_10_23*y^23 + a_10_24*y^24 + a_10_25*y^25 + a_10_26*y^26 + a_10_27*y^27 + a_10_28*y^28 + a_10_29*y^29 + a_10_30*y^30 + a_10_31*y^31;

A11 = a_11_00 + a_11_01*y + a_11_02*y^2 + a_11_03*y^3 + a_11_04*y^4 + a_11_05*y^5 + a_11_06*y^6 + a_11_07*y^7 + a_11_08*y^8 + a_11_09*y^9 + a_11_10*y^10 + a_11_11*y^11 + ...
    a_11_12*y^12 + a_11_13*y^13 + a_11_14*y^14 + a_11_15*y^15 + a_11_16*y^16 + a_11_17*y^17 + a_11_18*y^18 + a_11_19*y^19 + a_11_20*y^20 + a_11_21*y^21 + a_11_22*y^22 + ...
    a_11_23*y^23 + a_11_24*y^24 + a_11_25*y^25 + a_11_26*y^26 + a_11_27*y^27 + a_11_28*y^28 + a_11_29*y^29 + a_11_30*y^30 + a_11_31*y^31;

A12 = a_12_00 + a_12_01*y + a_12_02*y^2 + a_12_03*y^3 + a_12_04*y^4 + a_12_05*y^5 + a_12_06*y^6 + a_12_07*y^7 + a_12_08*y^8 + a_12_09*y^9 + a_12_10*y^10 + a_12_11*y^11 + ...
    a_12_12*y^12 + a_12_13*y^13 + a_12_14*y^14 + a_12_15*y^15 + a_12_16*y^16 + a_12_17*y^17 + a_12_18*y^18 + a_12_19*y^19 + a_12_20*y^20 + a_12_21*y^21 + a_12_22*y^22 + ...
    a_12_23*y^23 + a_12_24*y^24 + a_12_25*y^25 + a_12_26*y^26 + a_12_27*y^27 + a_12_28*y^28 + a_12_29*y^29 + a_12_30*y^30 + a_12_31*y^31;

A13 = a_13_00 + a_13_01*y + a_13_02*y^2 + a_13_03*y^3 + a_13_04*y^4 + a_13_05*y^5 + a_13_06*y^6 + a_13_07*y^7 + a_13_08*y^8 + a_13_09*y^9 + a_13_10*y^10 + a_13_11*y^11 + ...
    a_13_12*y^12 + a_13_13*y^13 + a_13_14*y^14 + a_13_15*y^15 + a_13_16*y^16 + a_13_17*y^17 + a_13_18*y^18 + a_13_19*y^19 + a_13_20*y^20 + a_13_21*y^21 + a_13_22*y^22 + ...
    a_13_23*y^23 + a_13_24*y^24 + a_13_25*y^25 + a_13_26*y^26 + a_13_27*y^27 + a_13_28*y^28 + a_13_29*y^29 + a_13_30*y^30 + a_13_31*y^31;

A14 = a_14_00 + a_14_01*y + a_14_02*y^2 + a_14_03*y^3 + a_14_04*y^4 + a_14_05*y^5 + a_14_06*y^6 + a_14_07*y^7 + a_14_08*y^8 + a_14_09*y^9 + a_14_10*y^10 + a_14_11*y^11 + ...
    a_14_12*y^12 + a_14_13*y^13 + a_14_14*y^14 + a_14_15*y^15 + a_14_16*y^16 + a_14_17*y^17 + a_14_18*y^18 + a_14_19*y^19 + a_14_20*y^20 + a_14_21*y^21 + a_14_22*y^22 + ...
    a_14_23*y^23 + a_14_24*y^24 + a_14_25*y^25 + a_14_26*y^26 + a_14_27*y^27 + a_14_28*y^28 + a_14_29*y^29 + a_14_30*y^30 + a_14_31*y^31;

A15 = a_15_00 + a_15_01*y + a_15_02*y^2 + a_15_03*y^3 + a_15_04*y^4 + a_15_05*y^5 + a_15_06*y^6 + a_15_07*y^7 + a_15_08*y^8 + a_15_09*y^9 + a_15_10*y^10 + a_15_11*y^11 + ...
    a_15_12*y^12 + a_15_13*y^13 + a_15_14*y^14 + a_15_15*y^15 + a_15_16*y^16 + a_15_17*y^17 + a_15_18*y^18 + a_15_19*y^19 + a_15_20*y^20 + a_15_21*y^21 + a_15_22*y^22 + ...
    a_15_23*y^23 + a_15_24*y^24 + a_15_25*y^25 + a_15_26*y^26 + a_15_27*y^27 + a_15_28*y^28 + a_15_29*y^29 + a_15_30*y^30 + a_15_31*y^31;

A16 = a_16_00 + a_16_01*y + a_16_02*y^2 + a_16_03*y^3 + a_16_04*y^4 + a_16_05*y^5 + a_16_06*y^6 + a_16_07*y^7 + a_16_08*y^8 + a_16_09*y^9 + a_16_10*y^10 + a_16_11*y^11 + ...
    a_16_12*y^12 + a_16_13*y^13 + a_16_14*y^14 + a_16_15*y^15 + a_16_16*y^16 + a_16_17*y^17 + a_16_18*y^18 + a_16_19*y^19 + a_16_20*y^20 + a_16_21*y^21 + a_16_22*y^22 + ...
    a_16_23*y^23 + a_16_24*y^24 + a_16_25*y^25 + a_16_26*y^26 + a_16_27*y^27 + a_16_28*y^28 + a_16_29*y^29 + a_16_30*y^30 + a_16_31*y^31;

A17 = a_17_00 + a_17_01*y + a_17_02*y^2 + a_17_03*y^3 + a_17_04*y^4 + a_17_05*y^5 + a_17_06*y^6 + a_17_07*y^7 + a_17_08*y^8 + a_17_09*y^9 + a_17_10*y^10 + a_17_11*y^11 + ...
    a_17_12*y^12 + a_17_13*y^13 + a_17_14*y^14 + a_17_15*y^15 + a_17_16*y^16 + a_17_17*y^17 + a_17_18*y^18 + a_17_19*y^19 + a_17_20*y^20 + a_17_21*y^21 + a_17_22*y^22 + ...
    a_17_23*y^23 + a_17_24*y^24 + a_17_25*y^25 + a_17_26*y^26 + a_17_27*y^27 + a_17_28*y^28 + a_17_29*y^29 + a_17_30*y^30 + a_17_31*y^31;

A18 = a_18_00 + a_18_01*y + a_18_02*y^2 + a_18_03*y^3 + a_18_04*y^4 + a_18_05*y^5 + a_18_06*y^6 + a_18_07*y^7 + a_18_08*y^8 + a_18_09*y^9 + a_18_10*y^10 + a_18_11*y^11 + ...
    a_18_12*y^12 + a_18_13*y^13 + a_18_14*y^14 + a_18_15*y^15 + a_18_16*y^16 + a_18_17*y^17 + a_18_18*y^18 + a_18_19*y^19 + a_18_20*y^20 + a_18_21*y^21 + a_18_22*y^22 + ...
    a_18_23*y^23 + a_18_24*y^24 + a_18_25*y^25 + a_18_26*y^26 + a_18_27*y^27 + a_18_28*y^28 + a_18_29*y^29 + a_18_30*y^30 + a_18_31*y^31;

A19 = a_19_00 + a_19_01*y + a_19_02*y^2 + a_19_03*y^3 + a_19_04*y^4 + a_19_05*y^5 + a_19_06*y^6 + a_19_07*y^7 + a_19_08*y^8 + a_19_09*y^9 + a_19_10*y^10 + a_19_11*y^11 + ...
    a_19_12*y^12 + a_19_13*y^13 + a_19_14*y^14 + a_19_15*y^15 + a_19_16*y^16 + a_19_17*y^17 + a_19_18*y^18 + a_19_19*y^19 + a_19_20*y^20 + a_19_21*y^21 + a_19_22*y^22 + ...
    a_19_23*y^23 + a_19_24*y^24 + a_19_25*y^25 + a_19_26*y^26 + a_19_27*y^27 + a_19_28*y^28 + a_19_29*y^29 + a_19_30*y^30 + a_19_31*y^31;

A20 = a_20_00 + a_20_01*y + a_20_02*y^2 + a_20_03*y^3 + a_20_04*y^4 + a_20_05*y^5 + a_20_06*y^6 + a_20_07*y^7 + a_20_08*y^8 + a_20_09*y^9 + a_20_10*y^10 + a_20_11*y^11 + ...
    a_20_12*y^12 + a_20_13*y^13 + a_20_14*y^14 + a_20_15*y^15 + a_20_16*y^16 + a_20_17*y^17 + a_20_18*y^18 + a_20_19*y^19 + a_20_20*y^20 + a_20_21*y^21 + a_20_22*y^22 + ...
    a_20_23*y^23 + a_20_24*y^24 + a_20_25*y^25 + a_20_26*y^26 + a_20_27*y^27 + a_20_28*y^28 + a_20_29*y^29 + a_20_30*y^30 + a_20_31*y^31;

A21 = a_21_00 + a_21_01*y + a_21_02*y^2 + a_21_03*y^3 + a_21_04*y^4 + a_21_05*y^5 + a_21_06*y^6 + a_21_07*y^7 + a_21_08*y^8 + a_21_09*y^9 + a_21_10*y^10 + a_21_11*y^11 + ...
    a_21_12*y^12 + a_21_13*y^13 + a_21_14*y^14 + a_21_15*y^15 + a_21_16*y^16 + a_21_17*y^17 + a_21_18*y^18 + a_21_19*y^19 + a_21_20*y^20 + a_21_21*y^21 + a_21_22*y^22 + ...
    a_21_23*y^23 + a_21_24*y^24 + a_21_25*y^25 + a_21_26*y^26 + a_21_27*y^27 + a_21_28*y^28 + a_21_29*y^29 + a_21_30*y^30 + a_21_31*y^31;

A22 = a_22_00 + a_22_01*y + a_22_02*y^2 + a_22_03*y^3 + a_22_04*y^4 + a_22_05*y^5 + a_22_06*y^6 + a_22_07*y^7 + a_22_08*y^8 + a_22_09*y^9 + a_22_10*y^10 + a_22_11*y^11 + ...
    a_22_12*y^12 + a_22_13*y^13 + a_22_14*y^14 + a_22_15*y^15 + a_22_16*y^16 + a_22_17*y^17 + a_22_18*y^18 + a_22_19*y^19 + a_22_20*y^20 + a_22_21*y^21 + a_22_22*y^22 + ...
    a_22_23*y^23 + a_22_24*y^24 + a_22_25*y^25 + a_22_26*y^26 + a_22_27*y^27 + a_22_28*y^28 + a_22_29*y^29 + a_22_30*y^30 + a_22_31*y^31;

A23 = a_23_00 + a_23_01*y + a_23_02*y^2 + a_23_03*y^3 + a_23_04*y^4 + a_23_05*y^5 + a_23_06*y^6 + a_23_07*y^7 + a_23_08*y^8 + a_23_09*y^9 + a_23_10*y^10 + a_23_11*y^11 + ...
    a_23_12*y^12 + a_23_13*y^13 + a_23_14*y^14 + a_23_15*y^15 + a_23_16*y^16 + a_23_17*y^17 + a_23_18*y^18 + a_23_19*y^19 + a_23_20*y^20 + a_23_21*y^21 + a_23_22*y^22 + ...
    a_23_23*y^23 + a_23_24*y^24 + a_23_25*y^25 + a_23_26*y^26 + a_23_27*y^27 + a_23_28*y^28 + a_23_29*y^29 + a_23_30*y^30 + a_23_31*y^31;

A24 = a_24_00 + a_24_01*y + a_24_02*y^2 + a_24_03*y^3 + a_24_04*y^4 + a_24_05*y^5 + a_24_06*y^6 + a_24_07*y^7 + a_24_08*y^8 + a_24_09*y^9 + a_24_10*y^10 + a_24_11*y^11 + ...
    a_24_12*y^12 + a_24_13*y^13 + a_24_14*y^14 + a_24_15*y^15 + a_24_16*y^16 + a_24_17*y^17 + a_24_18*y^18 + a_24_19*y^19 + a_24_20*y^20 + a_24_21*y^21 + a_24_22*y^22 + ...
    a_24_23*y^23 + a_24_24*y^24 + a_24_25*y^25 + a_24_26*y^26 + a_24_27*y^27 + a_24_28*y^28 + a_24_29*y^29 + a_24_30*y^30 + a_24_31*y^31;

A25 = a_25_00 + a_25_01*y + a_25_02*y^2 + a_25_03*y^3 + a_25_04*y^4 + a_25_05*y^5 + a_25_06*y^6 + a_25_07*y^7 + a_25_08*y^8 + a_25_09*y^9 + a_25_10*y^10 + a_25_11*y^11 + ...
    a_25_12*y^12 + a_25_13*y^13 + a_25_14*y^14 + a_25_15*y^15 + a_25_16*y^16 + a_25_17*y^17 + a_25_18*y^18 + a_25_19*y^19 + a_25_20*y^20 + a_25_21*y^21 + a_25_22*y^22 + ...
    a_25_23*y^23 + a_25_24*y^24 + a_25_25*y^25 + a_25_26*y^26 + a_25_27*y^27 + a_25_28*y^28 + a_25_29*y^29 + a_25_30*y^30 + a_25_31*y^31;

A26 = a_26_00 + a_26_01*y + a_26_02*y^2 + a_26_03*y^3 + a_26_04*y^4 + a_26_05*y^5 + a_26_06*y^6 + a_26_07*y^7 + a_26_08*y^8 + a_26_09*y^9 + a_26_10*y^10 + a_26_11*y^11 + ...
    a_26_12*y^12 + a_26_13*y^13 + a_26_14*y^14 + a_26_15*y^15 + a_26_16*y^16 + a_26_17*y^17 + a_26_18*y^18 + a_26_19*y^19 + a_26_20*y^20 + a_26_21*y^21 + a_26_22*y^22 + ...
    a_26_23*y^23 + a_26_24*y^24 + a_26_25*y^25 + a_26_26*y^26 + a_26_27*y^27 + a_26_28*y^28 + a_26_29*y^29 + a_26_30*y^30 + a_26_31*y^31;

A27 = a_27_00 + a_27_01*y + a_27_02*y^2 + a_27_03*y^3 + a_27_04*y^4 + a_27_05*y^5 + a_27_06*y^6 + a_27_07*y^7 + a_27_08*y^8 + a_27_09*y^9 + a_27_10*y^10 + a_27_11*y^11 + ...
    a_27_12*y^12 + a_27_13*y^13 + a_27_14*y^14 + a_27_15*y^15 + a_27_16*y^16 + a_27_17*y^17 + a_27_18*y^18 + a_27_19*y^19 + a_27_20*y^20 + a_27_21*y^21 + a_27_22*y^22 + ...
    a_27_23*y^23 + a_27_24*y^24 + a_27_25*y^25 + a_27_26*y^26 + a_27_27*y^27 + a_27_28*y^28 + a_27_29*y^29 + a_27_30*y^30 + a_27_31*y^31;

A28 = a_28_00 + a_28_01*y + a_28_02*y^2 + a_28_03*y^3 + a_28_04*y^4 + a_28_05*y^5 + a_28_06*y^6 + a_28_07*y^7 + a_28_08*y^8 + a_28_09*y^9 + a_28_10*y^10 + a_28_11*y^11 + ...
    a_28_12*y^12 + a_28_13*y^13 + a_28_14*y^14 + a_28_15*y^15 + a_28_16*y^16 + a_28_17*y^17 + a_28_18*y^18 + a_28_19*y^19 + a_28_20*y^20 + a_28_21*y^21 + a_28_22*y^22 + ...
    a_28_23*y^23 + a_28_24*y^24 + a_28_25*y^25 + a_28_26*y^26 + a_28_27*y^27 + a_28_28*y^28 + a_28_29*y^29 + a_28_30*y^30 + a_28_31*y^31;

A29 = a_29_00 + a_29_01*y + a_29_02*y^2 + a_29_03*y^3 + a_29_04*y^4 + a_29_05*y^5 + a_29_06*y^6 + a_29_07*y^7 + a_29_08*y^8 + a_29_09*y^9 + a_29_10*y^10 + a_29_11*y^11 + ...
    a_29_12*y^12 + a_29_13*y^13 + a_29_14*y^14 + a_29_15*y^15 + a_29_16*y^16 + a_29_17*y^17 + a_29_18*y^18 + a_29_19*y^19 + a_29_20*y^20 + a_29_21*y^21 + a_29_22*y^22 + ...
    a_29_23*y^23 + a_29_24*y^24 + a_29_25*y^25 + a_29_26*y^26 + a_29_27*y^27 + a_29_28*y^28 + a_29_29*y^29 + a_29_30*y^30 + a_29_31*y^31;

A30 = a_30_00 + a_30_01*y + a_30_02*y^2 + a_30_03*y^3 + a_30_04*y^4 + a_30_05*y^5 + a_30_06*y^6 + a_30_07*y^7 + a_30_08*y^8 + a_30_09*y^9 + a_30_10*y^10 + a_30_11*y^11 + ...
    a_30_12*y^12 + a_30_13*y^13 + a_30_14*y^14 + a_30_15*y^15 + a_30_16*y^16 + a_30_17*y^17 + a_30_18*y^18 + a_30_19*y^19 + a_30_20*y^20 + a_30_21*y^21 + a_30_22*y^22 + ...
    a_30_23*y^23 + a_30_24*y^24 + a_30_25*y^25 + a_30_26*y^26 + a_30_27*y^27 + a_30_28*y^28 + a_30_29*y^29 + a_30_30*y^30 + a_30_31*y^31;

A31 = a_31_00 + a_31_01*y + a_31_02*y^2 + a_31_03*y^3 + a_31_04*y^4 + a_31_05*y^5 + a_31_06*y^6 + a_31_07*y^7 + a_31_08*y^8 + a_31_09*y^9 + a_31_10*y^10 + a_31_11*y^11 + ...
    a_31_12*y^12 + a_31_13*y^13 + a_31_14*y^14 + a_31_15*y^15 + a_31_16*y^16 + a_31_17*y^17 + a_31_18*y^18 + a_31_19*y^19 + a_31_20*y^20 + a_31_21*y^21 + a_31_22*y^22 + ...
    a_31_23*y^23 + a_31_24*y^24 + a_31_25*y^25 + a_31_26*y^26 + a_31_27*y^27 + a_31_28*y^28 + a_31_29*y^29 + a_31_30*y^30 + a_31_31*y^31;


%% Calculations of inverse butterflies

% ============= Level 1 - 16 operations =========================


% -------- L01 - C0 ---------

[L01_01_expressionExpanded, L01_01_powerOfZeta, L01_01_inverse,L01_01_inversePowerOfZeta] = rootPowerInverseCalculator(0,0,1);
A = A00; B = A01;
inverse = L01_01_inverse;
powerLevel = 1;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L01_01 = collect(firstTerm + secondTerm*w^powerLevel,w)
%L01_01 = collect(collect(expand(polynomialReduce(expand(A+B),y^32+1)),y)+collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)))*w^powerLevel,w)
%coefficients = coeffs(L01_01,w);


% -------- L01 - C1 ---------

[L01_02_expressionExpanded, L01_02_powerOfZeta, L01_02_inverse,L01_02_inversePowerOfZeta] = rootPowerInverseCalculator(1,0,1);
A = A02; B = A03;
inverse = L01_02_inverse;
powerLevel = 1;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L01_02 = collect(firstTerm + secondTerm*w^powerLevel,w)
%L01_02 = collect(collect(expand(polynomialReduce(expand(A+B),y^32+1)),y)+collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)))*w^powerLevel,w)
%coefficients = coeffs(L01_02,w);

%coeffs(coefficients(1),y)
%coeffs(coefficients(2),y)


% -------- L01 - C2 ---------

[L01_03_expressionExpanded, L01_03_powerOfZeta, L01_03_inverse,L01_03_inversePowerOfZeta] = rootPowerInverseCalculator(2,0,1);
A = A04; B = A05;
inverse = L01_03_inverse;
powerLevel = 1;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L01_03 = collect(firstTerm + secondTerm*w^powerLevel,w)


% -------- L01 - C3 ---------

[L01_04_expressionExpanded, L01_04_powerOfZeta, L01_04_inverse,L01_04_inversePowerOfZeta] = rootPowerInverseCalculator(3,0,1)
A = A06; B = A07;
inverse = L01_04_inverse;
powerLevel = 1;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L01_04 = collect(firstTerm + secondTerm*w^powerLevel,w)


% -------- L01 - C4 ---------

[L01_05_expressionExpanded, L01_05_powerOfZeta, L01_05_inverse,L01_05_inversePowerOfZeta] = rootPowerInverseCalculator(4,0,1)
A = A08; B = A09;
inverse = L01_05_inverse;
powerLevel = 1;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L01_05 = collect(firstTerm + secondTerm*w^powerLevel,w)


% -------- L01 - C5 ---------

[L01_06_expressionExpanded, L01_06_powerOfZeta, L01_06_inverse,L01_06_inversePowerOfZeta] = rootPowerInverseCalculator(5,0,1)
A = A10; B = A11;
inverse = L01_06_inverse;
powerLevel = 1;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L01_06 = collect(firstTerm + secondTerm*w^powerLevel,w)


% -------- L01 - C6 ---------

[L01_07_expressionExpanded, L01_07_powerOfZeta, L01_07_inverse,L01_07_inversePowerOfZeta] = rootPowerInverseCalculator(6,0,1)
A = A12; B = A13;
inverse = L01_07_inverse;
powerLevel = 1;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L01_07 = collect(firstTerm + secondTerm*w^powerLevel,w)


% -------- L01 - C7 ---------

[L01_08_expressionExpanded, L01_08_powerOfZeta, L01_08_inverse,L01_08_inversePowerOfZeta] = rootPowerInverseCalculator(7,0,1)
A = A14; B = A15;
inverse = L01_08_inverse;
powerLevel = 1;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L01_08 = collect(firstTerm + secondTerm*w^powerLevel,w) 


% -------- L01 - C8 ---------

[L01_09_expressionExpanded, L01_09_powerOfZeta, L01_09_inverse,L01_09_inversePowerOfZeta] = rootPowerInverseCalculator(8,0,1)
A = A16; B = A17;
inverse = L01_09_inverse;
powerLevel = 1;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L01_09 = collect(firstTerm + secondTerm*w^powerLevel,w)


% -------- L01 - C9 ---------

[L01_10_expressionExpanded, L01_10_powerOfZeta, L01_10_inverse,L01_10_inversePowerOfZeta] = rootPowerInverseCalculator(9,0,1)
A = A18; B = A19;
inverse = L01_10_inverse;
powerLevel = 1;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L01_10 = collect(firstTerm + secondTerm*w^powerLevel,w)


% -------- L01 - C10 ---------

[L01_11_expressionExpanded, L01_11_powerOfZeta, L01_11_inverse,L01_11_inversePowerOfZeta] = rootPowerInverseCalculator(10,0,1)
A = A20; B = A21;
inverse = L01_11_inverse;
powerLevel = 1;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L01_11 = collect(firstTerm + secondTerm*w^powerLevel,w)

% -------- L01 - C11 ---------

[L01_12_expressionExpanded, L01_12_powerOfZeta, L01_12_inverse,L01_12_inversePowerOfZeta] = rootPowerInverseCalculator(11,0,1)
A = A22; B = A23;
inverse = L01_12_inverse;
powerLevel = 1;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L01_12 = collect(firstTerm + secondTerm*w^powerLevel,w)


% -------- L01 - C12 ---------

[L01_13_expressionExpanded, L01_13_powerOfZeta, L01_13_inverse,L01_13_inversePowerOfZeta] = rootPowerInverseCalculator(12,0,1)
A = A24; B = A25;
inverse = L01_13_inverse;
powerLevel = 1;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L01_13 = collect(firstTerm + secondTerm*w^powerLevel,w)


% -------- L01 - C13 ---------

[L01_14_expressionExpanded, L01_14_powerOfZeta, L01_14_inverse,L01_14_inversePowerOfZeta] = rootPowerInverseCalculator(13,0,1)
A = A26; B = A27;
inverse = L01_14_inverse;
powerLevel = 1;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L01_14 = collect(firstTerm + secondTerm*w^powerLevel,w)


% -------- L01 - C14 ---------

[L01_15_expressionExpanded, L01_15_powerOfZeta, L01_15_inverse,L01_15_inversePowerOfZeta] = rootPowerInverseCalculator(14,0,1)
A = A28; B = A29;
inverse = L01_15_inverse;
powerLevel = 1;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L01_15 = collect(firstTerm + secondTerm*w^powerLevel,w)


% -------- L01 - C16 ---------

[L01_16_expressionExpanded, L01_16_powerOfZeta, L01_16_inverse,L01_16_inversePowerOfZeta] = rootPowerInverseCalculator(15,0,1)
A = A30; B = A31;
inverse = L01_16_inverse;
powerLevel = 1;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L01_16 = collect(firstTerm + secondTerm*w^powerLevel,w)

disp('========== Level 02 ============')

% ============= Level 2 - 8 operations =========================

% -------- L02 - C0^2 ---------

[L02_01_expressionExpanded, L02_01_powerOfZeta, L02_01_inverse,L02_01_inversePowerOfZeta] = rootPowerInverseCalculator(0,0,2);
A = L01_01; B = L01_02;
inverse = L02_01_inverse;
powerLevel = 2;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L02_01 = collect(firstTerm + secondTerm*w^powerLevel,w)

% -------- L02 - C2^2 ---------

[L02_02_expressionExpanded, L02_02_powerOfZeta, L02_02_inverse,L02_02_inversePowerOfZeta] = rootPowerInverseCalculator(2,0,2);
A = L01_03; B = L01_04;
inverse = L02_02_inverse;
powerLevel = 2;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L02_02 = collect(firstTerm + secondTerm*w^powerLevel,w)

% -------- L02 - C4^2 ---------

[L02_03_expressionExpanded, L02_03_powerOfZeta, L02_03_inverse,L02_03_inversePowerOfZeta] = rootPowerInverseCalculator(4,0,2);
A = L01_05; B = L01_06;
inverse = L02_03_inverse;
powerLevel = 2;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L02_03 = collect(firstTerm + secondTerm*w^powerLevel,w)

% -------- L02 - C6^2 ---------

[L02_04_expressionExpanded, L02_04_powerOfZeta, L02_04_inverse,L02_04_inversePowerOfZeta] = rootPowerInverseCalculator(6,0,2);
A = L01_07; B = L01_08;
inverse = L02_04_inverse;
powerLevel = 2;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L02_04 = collect(firstTerm + secondTerm*w^powerLevel,w)

% -------- L02 - C8^2 ---------

[L02_05_expressionExpanded, L02_05_powerOfZeta, L02_05_inverse,L02_05_inversePowerOfZeta] = rootPowerInverseCalculator(8,0,2);
A = L01_09; B = L01_10;
inverse = L02_05_inverse;
powerLevel = 2;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L02_05 = collect(firstTerm + secondTerm*w^powerLevel,w)

% -------- L02 - C10^2 ---------

[L02_06_expressionExpanded, L02_06_powerOfZeta, L02_06_inverse,L02_06_inversePowerOfZeta] = rootPowerInverseCalculator(10,0,2);
A = L01_11; B = L01_12;
inverse = L02_06_inverse;
powerLevel = 2;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L02_06 = collect(firstTerm + secondTerm*w^powerLevel,w)

% -------- L02 - C12^2 ---------

[L02_07_expressionExpanded, L02_07_powerOfZeta, L02_07_inverse,L02_07_inversePowerOfZeta] = rootPowerInverseCalculator(12,0,2);
A = L01_13; B = L01_14;
inverse = L02_07_inverse;
powerLevel = 2;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L02_07 = collect(firstTerm + secondTerm*w^powerLevel,w)

% -------- L02 - C14^2 ---------

[L02_08_expressionExpanded, L02_08_powerOfZeta, L02_08_inverse,L02_08_inversePowerOfZeta] = rootPowerInverseCalculator(14,0,2);
A = L01_15; B = L01_16;
inverse = L02_08_inverse;
powerLevel = 2;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L02_08 = collect(firstTerm + secondTerm*w^powerLevel,w)

disp('========== Level 03 ============')

% ============= Level 3 - 4 operations =========================

% -------- L03 - C0^4 ---------

[L03_01_expressionExpanded, L03_01_powerOfZeta, L03_01_inverse,L03_01_inversePowerOfZeta] = rootPowerInverseCalculator(0,0,4);
A = L02_01; B = L02_02;
inverse = L03_01_inverse;
powerLevel = 4;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L03_01 = collect(firstTerm + secondTerm*w^powerLevel,w)

% -------- L03 - C4^4 ---------

[L03_02_expressionExpanded, L03_02_powerOfZeta, L03_02_inverse,L03_02_inversePowerOfZeta] = rootPowerInverseCalculator(4,0,4);
A = L02_03; B = L02_04;
inverse = L03_02_inverse;
powerLevel = 4;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L03_02 = collect(firstTerm + secondTerm*w^powerLevel,w)

% -------- L03 - C8^4 ---------

[L03_03_expressionExpanded, L03_03_powerOfZeta, L03_03_inverse,L03_03_inversePowerOfZeta] = rootPowerInverseCalculator(8,0,4);
A = L02_05; B = L02_06;
inverse = L03_03_inverse;
powerLevel = 4;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L03_03 = collect(firstTerm + secondTerm*w^powerLevel,w)

% -------- L03 - C12^4 ---------

[L03_04_expressionExpanded, L03_04_powerOfZeta, L03_04_inverse,L03_04_inversePowerOfZeta] = rootPowerInverseCalculator(12,0,4);
A = L02_07; B = L02_08;
inverse = L03_04_inverse;
powerLevel = 4;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L03_04 = collect(firstTerm + secondTerm*w^powerLevel,w)

disp('========== Level 04 ============')

% ============= Level 4 - 2 operations =========================

% -------- L04 - C0^8 ---------

[L04_01_expressionExpanded, L04_01_powerOfZeta, L04_01_inverse,L04_01_inversePowerOfZeta] = rootPowerInverseCalculator(0,0,8);
A = L03_01; B = L03_02;
inverse = L04_01_inverse;
powerLevel = 8;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L04_01 = collect(firstTerm + secondTerm*w^powerLevel,w)

% -------- L04 - C8^8 ---------

[L04_02_expressionExpanded, L04_02_powerOfZeta, L04_02_inverse,L04_02_inversePowerOfZeta] = rootPowerInverseCalculator(8,0,8);
A = L03_03; B = L03_04;
inverse = L04_02_inverse;
powerLevel = 8;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L04_02 = collect(firstTerm + secondTerm*w^powerLevel,w)


disp('========== Level 05 ============')

% ============= Level 5 - 1 operations =========================

% -------- L05 - C0^16 ---------

[L05_01_expressionExpanded, L05_01_powerOfZeta, L05_01_inverse,L05_01_inversePowerOfZeta] = rootPowerInverseCalculator(0,0,16);
A = L04_01; B = L04_02;
inverse = L05_01_inverse;
powerLevel = 16;

firstTerm = collect(expand(polynomialReduce(expand(A+B),y^32+1)),y);
secondTerm = collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)));

L05_01 = collect(firstTerm + secondTerm*w^powerLevel,w)

coefficients = coeffs(L05_01,w);

disp('============= Final Inverse FFT coefficients ============= ')

coeffs_w00 = coeffs(coefficients(1),y).'
coeffs_w01 = coeffs(coefficients(2),y).'
coeffs_w02 = coeffs(coefficients(3),y).'
coeffs_w03 = coeffs(coefficients(4),y).'
coeffs_w04 = coeffs(coefficients(5),y).'
coeffs_w05 = coeffs(coefficients(6),y).'
coeffs_w06 = coeffs(coefficients(7),y).'
coeffs_w07 = coeffs(coefficients(8),y).'
coeffs_w08 = coeffs(coefficients(9),y).'
coeffs_w09 = coeffs(coefficients(10),y).'

coeffs_w10 = coeffs(coefficients(11),y).'
coeffs_w11 = coeffs(coefficients(12),y).'
coeffs_w12 = coeffs(coefficients(13),y).'
coeffs_w13 = coeffs(coefficients(14),y).'
coeffs_w14 = coeffs(coefficients(15),y).'
coeffs_w15 = coeffs(coefficients(16),y).'
coeffs_w16 = coeffs(coefficients(17),y).'
coeffs_w17 = coeffs(coefficients(18),y).'
coeffs_w18 = coeffs(coefficients(19),y).'
coeffs_w19 = coeffs(coefficients(20),y).'

coeffs_w20 = coeffs(coefficients(21),y).'
coeffs_w21 = coeffs(coefficients(22),y).'
coeffs_w22 = coeffs(coefficients(23),y).'
coeffs_w23 = coeffs(coefficients(24),y).'
coeffs_w24 = coeffs(coefficients(25),y).'
coeffs_w25 = coeffs(coefficients(26),y).'
coeffs_w26 = coeffs(coefficients(27),y).'
coeffs_w27 = coeffs(coefficients(28),y).'
coeffs_w28 = coeffs(coefficients(29),y).'
coeffs_w29 = coeffs(coefficients(30),y).'

coeffs_w30 = coeffs(coefficients(31),y).'
coeffs_w31 = coeffs(coefficients(32),y).'


% [L02_01_expressionExpanded, L02_01_powerOfZeta, L02_01_inverse,L02_01_inversePowerOfZeta] = rootPowerInverseCalculator(0,0,2)
% A = L01_01;
% B = L01_02;
% inverse = L02_01_inverse;
% powerLevel = 2;
% 
% L02_01 = collect(collect(expand(polynomialReduce(expand(A+B),y^32+1)),y)+collect(expand(polynomialReduce(expand(inverse*(A-B)),y^32+1)))*w^powerLevel,w)
% coefficients = coeffs(L02_01,w);
% 
% coeffs(coefficients(1),y)
% coeffs(coefficients(2),y)
% coeffs(coefficients(3),y)
