clc;
addpath(genpath('../'));  %We add the path to the libraries

f = [5,-1,3,-4,4,9]
g = [7,9,-3,-2,-1,4]

h = textbook_multiplication_total(f,g)
h_reduced = reduce_to_ringsize(h,6)

h_correct = textbook_multiplication(f,g)

f_split01 = forward_split01_good01(f)
g_split01 = forward_split01_good01(g)

h2_01 = textbook_multiplication_total([f_split01(1,:),f_split01(2,:),f_split01(3,:)],[g_split01(1,:),g_split01(2,:),g_split01(3,:)])
h2_02 = reduce_to_ringsize(h2_01,6) %This one does not work

h2_02b = forward_split01_good01_c(h2_01,10)

%% MULTIPLY AND REDUCE

coeff00_00 = textbook_multiplication(f_split01(0+1,:),g_split01(0+1,:));
coeff00_01 = textbook_multiplication(f_split01(1+1,:),g_split01(2+1,:));
coeff00_02 = textbook_multiplication(f_split01(2+1,:),g_split01(1+1,:));

coeff01_00 = textbook_multiplication(f_split01(0+1,:),g_split01(1+1,:));
coeff01_01 = textbook_multiplication(f_split01(1+1,:),g_split01(0+1,:));
coeff01_02 = textbook_multiplication(f_split01(2+1,:),g_split01(2+1,:));

coeff02_00 = textbook_multiplication(f_split01(0+1,:),g_split01(2+1,:));
coeff02_01 = textbook_multiplication(f_split01(1+1,:),g_split01(1+1,:));
coeff02_02 = textbook_multiplication(f_split01(2+1,:),g_split01(0+1,:));

h2_02c = [coeff00_00+coeff00_01+coeff00_02 , coeff01_00+coeff01_01+coeff01_02, coeff02_00+coeff02_01+coeff02_02] %This has the correct values, but rotated as per Good's rotation, we must de-rotate

%% DE-ROTATE GOOD'S ROTATION

h3_01 = backward_split01_good01([h2_02c(1,[1:2]); h2_02c(1,[3:4]); h2_02c(1,[5:6])])