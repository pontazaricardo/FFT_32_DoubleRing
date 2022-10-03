addpath(genpath('../'));  %We add the path to the libraries

%test_randomize_AXX

forward_fft_result = FFT_Forward_32(FN00, FN01, FN02, FN03, FN04, FN05, FN06, FN07, FN08, FN09, FN10, FN11, FN12, FN13, FN14, FN15, FN16, FN17, FN18, FN19, FN20, FN21, FN22, FN23, FN24, FN25, FN26, FN27, FN28, FN29, FN30, FN31);

inverse_fft_result = FFT_Inverse_32(forward_fft_result(1,:),forward_fft_result(2,:),forward_fft_result(3,:),forward_fft_result(4,:),forward_fft_result(5,:),forward_fft_result(6,:),forward_fft_result(7,:),forward_fft_result(8,:),forward_fft_result(9,:),forward_fft_result(10,:),forward_fft_result(11,:),forward_fft_result(12,:),forward_fft_result(13,:),forward_fft_result(14,:),forward_fft_result(15,:),forward_fft_result(16,:),forward_fft_result(17,:),forward_fft_result(18,:),forward_fft_result(19,:),forward_fft_result(20,:),forward_fft_result(21,:),forward_fft_result(22,:),forward_fft_result(23,:),forward_fft_result(24,:),forward_fft_result(25,:),forward_fft_result(26,:),forward_fft_result(27,:),forward_fft_result(28,:),forward_fft_result(29,:),forward_fft_result(30,:),forward_fft_result(31,:),forward_fft_result(32,:));

inverse_fft_result(1,:)-FN00;
inverse_fft_result(2,:)-FN01;
inverse_fft_result(3,:)-FN02;
inverse_fft_result(4,:)-FN03;
inverse_fft_result(5,:)-FN04;
inverse_fft_result(6,:)-FN05;

%% Test for square
%modulo = 131072;

%fnforward_fft_result = mod(forward_fft_result,2048);

modulo = 65536;

h_01_tmp = multiplication_x32_plus1(forward_fft_result(1,:),forward_fft_result(1,:),modulo);
h_02_tmp = multiplication_x32_plus1(forward_fft_result(2,:),forward_fft_result(2,:),modulo);
h_03_tmp = multiplication_x32_plus1(forward_fft_result(3,:),forward_fft_result(3,:),modulo);
h_04_tmp = multiplication_x32_plus1(forward_fft_result(4,:),forward_fft_result(4,:),modulo);
h_05_tmp = multiplication_x32_plus1(forward_fft_result(5,:),forward_fft_result(5,:),modulo);
h_06_tmp = multiplication_x32_plus1(forward_fft_result(6,:),forward_fft_result(6,:),modulo);
h_07_tmp = multiplication_x32_plus1(forward_fft_result(7,:),forward_fft_result(7,:),modulo);
h_08_tmp = multiplication_x32_plus1(forward_fft_result(8,:),forward_fft_result(8,:),modulo);
h_09_tmp = multiplication_x32_plus1(forward_fft_result(9,:),forward_fft_result(9,:),modulo);
h_10_tmp = multiplication_x32_plus1(forward_fft_result(10,:),forward_fft_result(10,:),modulo);
h_11_tmp = multiplication_x32_plus1(forward_fft_result(11,:),forward_fft_result(11,:),modulo);
h_12_tmp = multiplication_x32_plus1(forward_fft_result(12,:),forward_fft_result(12,:),modulo);
h_13_tmp = multiplication_x32_plus1(forward_fft_result(13,:),forward_fft_result(13,:),modulo);
h_14_tmp = multiplication_x32_plus1(forward_fft_result(14,:),forward_fft_result(14,:),modulo);
h_15_tmp = multiplication_x32_plus1(forward_fft_result(15,:),forward_fft_result(15,:),modulo);
h_16_tmp = multiplication_x32_plus1(forward_fft_result(16,:),forward_fft_result(16,:),modulo);
h_17_tmp = multiplication_x32_plus1(forward_fft_result(17,:),forward_fft_result(17,:),modulo);
h_18_tmp = multiplication_x32_plus1(forward_fft_result(18,:),forward_fft_result(18,:),modulo);
h_19_tmp = multiplication_x32_plus1(forward_fft_result(19,:),forward_fft_result(19,:),modulo);
h_20_tmp = multiplication_x32_plus1(forward_fft_result(20,:),forward_fft_result(20,:),modulo);
h_21_tmp = multiplication_x32_plus1(forward_fft_result(21,:),forward_fft_result(21,:),modulo);
h_22_tmp = multiplication_x32_plus1(forward_fft_result(22,:),forward_fft_result(22,:),modulo);
h_23_tmp = multiplication_x32_plus1(forward_fft_result(23,:),forward_fft_result(23,:),modulo);
h_24_tmp = multiplication_x32_plus1(forward_fft_result(24,:),forward_fft_result(24,:),modulo);
h_25_tmp = multiplication_x32_plus1(forward_fft_result(25,:),forward_fft_result(25,:),modulo);
h_26_tmp = multiplication_x32_plus1(forward_fft_result(26,:),forward_fft_result(26,:),modulo);
h_27_tmp = multiplication_x32_plus1(forward_fft_result(27,:),forward_fft_result(27,:),modulo);
h_28_tmp = multiplication_x32_plus1(forward_fft_result(28,:),forward_fft_result(28,:),modulo);
h_29_tmp = multiplication_x32_plus1(forward_fft_result(29,:),forward_fft_result(29,:),modulo);
h_30_tmp = multiplication_x32_plus1(forward_fft_result(30,:),forward_fft_result(30,:),modulo);
h_31_tmp = multiplication_x32_plus1(forward_fft_result(31,:),forward_fft_result(31,:),modulo);
h_32_tmp = multiplication_x32_plus1(forward_fft_result(32,:),forward_fft_result(32,:),modulo);

h_fft_result = FFT_Inverse_32( ...
    h_01_tmp, h_02_tmp, h_03_tmp, h_04_tmp, h_05_tmp, h_06_tmp, h_07_tmp, h_08_tmp, h_09_tmp, h_10_tmp, ...
    h_11_tmp, h_12_tmp, h_13_tmp, h_14_tmp, h_15_tmp, h_16_tmp, h_17_tmp, h_18_tmp, h_19_tmp, h_20_tmp, ...
    h_21_tmp, h_22_tmp, h_23_tmp, h_24_tmp, h_25_tmp, h_26_tmp, h_27_tmp, h_28_tmp, h_29_tmp, h_30_tmp, ...
    h_31_tmp, h_32_tmp)

%originalPolynomial = [FN00, FN01, FN02, FN03, FN04, FN05, FN06, FN07, FN08, FN09, FN10, FN11, FN12, FN13, FN14, FN15, FN16, FN17, FN18, FN19, FN20, FN21, FN22, FN23, FN24, FN25, FN26, FN27, FN28, FN29, FN30, FN31];

%h_original = mod(textbook_multiplication(originalPolynomial,originalPolynomial),2048);
% h_original_fft32 = FFT_Forward_32( ...
%     h_original(1:32), h_original(33:64), h_original(65:96), h_original(97:128), h_original(129:160), h_original(161:192), h_original(193:224), h_original(225:256), ...
%     h_original(257:288), h_original(289:320), h_original(321:352), h_original(353:384), h_original(385:416), h_original(417:448), h_original(449:480), h_original(481:512), ...
%     h_original(513:544), h_original(545:576), h_original(577:608), h_original(609:640), h_original(641:672), h_original(673:704), h_original(705:736), h_original(737:768), ...
%     h_original(769:800), h_original(801:832), h_original(833:864), h_original(865:896), h_original(897:928), h_original(929:960), h_original(961:992), h_original(993:1024))

%% Check if Inverse FFT is correct

product_00 = mod(multiplication_x32_plus1(FN00,FN00,2048)+2*(multiplication_x32_plus1(FN01,FN31,2048)+multiplication_x32_plus1(FN02,FN30,2048)+ ...
    multiplication_x32_plus1(FN03,FN29,2048)+multiplication_x32_plus1(FN04,FN28,2048)+multiplication_x32_plus1(FN05,FN27,2048)+ ...
    multiplication_x32_plus1(FN06,FN26,2048)+multiplication_x32_plus1(FN07,FN25,2048)+multiplication_x32_plus1(FN08,FN24,2048)+ ...
    multiplication_x32_plus1(FN09,FN23,2048)+multiplication_x32_plus1(FN10,FN22,2048)+multiplication_x32_plus1(FN11,FN21,2048)+ ...
    multiplication_x32_plus1(FN12,FN20,2048)+multiplication_x32_plus1(FN13,FN19,2048)+multiplication_x32_plus1(FN14,FN18,2048)+ ...
    multiplication_x32_plus1(FN15,FN17,2048))+multiplication_x32_plus1(FN16,FN16,2048),2048);

% This should generate the FFT_Inverse
% Going from (R[y]/(y^32+1))[w]/(w^32-1) ⇒ (R[y]/(y^32+1))^32

forward_test = forward_y32p1_w32m1_y32p132(FN00, FN01, FN02, FN03, FN04, FN05, FN06, FN07, FN08, FN09, FN10, FN11, FN12, FN13, FN14, FN15, FN16, FN17, FN18, FN19, FN20, FN21, FN22, FN23, FN24, FN25, FN26, FN27, FN28, FN29, FN30, FN31);

h_fft_result - forward_test; %This should generate all 0's

%% Finish inversion
% Going from 
%   (R[y]/(y^32+1))[w]/(w^32-1) ⇒ R[y,w]/(w^32-1) 
%                               ⇒ R[y,w]/(y^16-w, w^32-1) 
%                               ⇒ R[y]/(y^512-1) 

product_byInverse = back_fft32inverse_y512( ...
	h_fft_result(1,:),h_fft_result(2,:),h_fft_result(3,:),h_fft_result(4,:),h_fft_result(5,:),h_fft_result(6,:),h_fft_result(7,:),h_fft_result(8,:),h_fft_result(9,:),h_fft_result(10,:), ...
	h_fft_result(11,:),h_fft_result(12,:),h_fft_result(13,:),h_fft_result(14,:),h_fft_result(15,:),h_fft_result(16,:),h_fft_result(17,:),h_fft_result(18,:),h_fft_result(19,:),h_fft_result(20,:), ...
	h_fft_result(21,:),h_fft_result(22,:),h_fft_result(23,:),h_fft_result(24,:),h_fft_result(25,:),h_fft_result(26,:),h_fft_result(27,:),h_fft_result(28,:),h_fft_result(29,:),h_fft_result(30,:), ...
	h_fft_result(31,:),h_fft_result(32,:) ...
)



%mod(product_00(1:16)+product_00(17:32),2048)

%mod(product_00(17:32)+product_01(1:16),2048)
mod(h_fft_result(1,[17:32])+h_fft_result(2,[1:16]),2048);

f_512 = [   FN00(1:16) FN01(1:16) FN02(1:16) FN03(1:16) FN04(1:16) FN05(1:16) FN06(1:16) FN07(1:16) FN08(1:16) FN09(1:16) ... 
            FN10(1:16) FN11(1:16) FN12(1:16) FN13(1:16) FN14(1:16) FN15(1:16) FN16(1:16) FN17(1:16) FN18(1:16) FN19(1:16) ...
            FN20(1:16) FN21(1:16) FN22(1:16) FN23(1:16) FN24(1:16) FN25(1:16) FN26(1:16) FN27(1:16) FN28(1:16) FN29(1:16) ...
            FN30(1:16) FN31(1:16)];

product_512 = mod(textbook_multiplication(f_512,f_512),2048)

product_byInverse - product_512
