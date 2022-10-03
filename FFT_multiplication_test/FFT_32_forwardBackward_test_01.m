addpath(genpath('../'));  %We add the path to the libraries

%test_randomize_AXX

forward_fft_result = FFT_Forward_32(FN00, FN01, FN02, FN03, FN04, FN05, FN06, FN07, FN08, FN09, FN10, FN11, FN12, FN13, FN14, FN15, FN16, FN17, FN18, FN19, FN20, FN21, FN22, FN23, FN24, FN25, FN26, FN27, FN28, FN29, FN30, FN31)

inverse_fft_result = FFT_Inverse_32(forward_fft_result(1,:),forward_fft_result(2,:),forward_fft_result(3,:),forward_fft_result(4,:),forward_fft_result(5,:),forward_fft_result(6,:),forward_fft_result(7,:),forward_fft_result(8,:),forward_fft_result(9,:),forward_fft_result(10,:),forward_fft_result(11,:),forward_fft_result(12,:),forward_fft_result(13,:),forward_fft_result(14,:),forward_fft_result(15,:),forward_fft_result(16,:),forward_fft_result(17,:),forward_fft_result(18,:),forward_fft_result(19,:),forward_fft_result(20,:),forward_fft_result(21,:),forward_fft_result(22,:),forward_fft_result(23,:),forward_fft_result(24,:),forward_fft_result(25,:),forward_fft_result(26,:),forward_fft_result(27,:),forward_fft_result(28,:),forward_fft_result(29,:),forward_fft_result(30,:),forward_fft_result(31,:),forward_fft_result(32,:))

inverse_fft_result(1,:)-FN00
inverse_fft_result(2,:)-FN01
inverse_fft_result(3,:)-FN02
inverse_fft_result(4,:)-FN03
inverse_fft_result(5,:)-FN04
inverse_fft_result(6,:)-FN05

%% Test for square
%modulo = 131072;

%forward_fft_result = mod(forward_fft_result,2048);

modulo = 2048;

h_01_tmp = mod(textbook_multiplication(forward_fft_result(1,:),forward_fft_result(1,:)),modulo);
h_02_tmp = mod(textbook_multiplication(forward_fft_result(2,:),forward_fft_result(2,:)),modulo);
h_03_tmp = mod(textbook_multiplication(forward_fft_result(3,:),forward_fft_result(3,:)),modulo);
h_04_tmp = mod(textbook_multiplication(forward_fft_result(4,:),forward_fft_result(4,:)),modulo);
h_05_tmp = mod(textbook_multiplication(forward_fft_result(5,:),forward_fft_result(5,:)),modulo);
h_06_tmp = mod(textbook_multiplication(forward_fft_result(6,:),forward_fft_result(6,:)),modulo);
h_07_tmp = mod(textbook_multiplication(forward_fft_result(7,:),forward_fft_result(7,:)),modulo);
h_08_tmp = mod(textbook_multiplication(forward_fft_result(8,:),forward_fft_result(8,:)),modulo);
h_09_tmp = mod(textbook_multiplication(forward_fft_result(9,:),forward_fft_result(9,:)),modulo);
h_10_tmp = mod(textbook_multiplication(forward_fft_result(10,:),forward_fft_result(10,:)),modulo);
h_11_tmp = mod(textbook_multiplication(forward_fft_result(11,:),forward_fft_result(11,:)),modulo);
h_12_tmp = mod(textbook_multiplication(forward_fft_result(12,:),forward_fft_result(12,:)),modulo);
h_13_tmp = mod(textbook_multiplication(forward_fft_result(13,:),forward_fft_result(13,:)),modulo);
h_14_tmp = mod(textbook_multiplication(forward_fft_result(14,:),forward_fft_result(14,:)),modulo);
h_15_tmp = mod(textbook_multiplication(forward_fft_result(15,:),forward_fft_result(15,:)),modulo);
h_16_tmp = mod(textbook_multiplication(forward_fft_result(16,:),forward_fft_result(16,:)),modulo);
h_17_tmp = mod(textbook_multiplication(forward_fft_result(17,:),forward_fft_result(17,:)),modulo);
h_18_tmp = mod(textbook_multiplication(forward_fft_result(18,:),forward_fft_result(18,:)),modulo);
h_19_tmp = mod(textbook_multiplication(forward_fft_result(19,:),forward_fft_result(19,:)),modulo);
h_20_tmp = mod(textbook_multiplication(forward_fft_result(20,:),forward_fft_result(20,:)),modulo);
h_21_tmp = mod(textbook_multiplication(forward_fft_result(21,:),forward_fft_result(21,:)),modulo);
h_22_tmp = mod(textbook_multiplication(forward_fft_result(22,:),forward_fft_result(22,:)),modulo);
h_23_tmp = mod(textbook_multiplication(forward_fft_result(23,:),forward_fft_result(23,:)),modulo);
h_24_tmp = mod(textbook_multiplication(forward_fft_result(24,:),forward_fft_result(24,:)),modulo);
h_25_tmp = mod(textbook_multiplication(forward_fft_result(25,:),forward_fft_result(25,:)),modulo);
h_26_tmp = mod(textbook_multiplication(forward_fft_result(26,:),forward_fft_result(26,:)),modulo);
h_27_tmp = mod(textbook_multiplication(forward_fft_result(27,:),forward_fft_result(27,:)),modulo);
h_28_tmp = mod(textbook_multiplication(forward_fft_result(28,:),forward_fft_result(28,:)),modulo);
h_29_tmp = mod(textbook_multiplication(forward_fft_result(29,:),forward_fft_result(29,:)),modulo);
h_30_tmp = mod(textbook_multiplication(forward_fft_result(30,:),forward_fft_result(30,:)),modulo);
h_31_tmp = mod(textbook_multiplication(forward_fft_result(31,:),forward_fft_result(31,:)),modulo);
h_32_tmp = mod(textbook_multiplication(forward_fft_result(32,:),forward_fft_result(32,:)),modulo);

h_fft_result = FFT_Inverse_32( ...
    h_01_tmp, h_02_tmp, h_03_tmp, h_04_tmp, h_05_tmp, h_06_tmp, h_07_tmp, h_08_tmp, h_09_tmp, h_10_tmp, ...
    h_11_tmp, h_12_tmp, h_13_tmp, h_14_tmp, h_15_tmp, h_16_tmp, h_17_tmp, h_18_tmp, h_19_tmp, h_20_tmp, ...
    h_21_tmp, h_22_tmp, h_23_tmp, h_24_tmp, h_25_tmp, h_26_tmp, h_27_tmp, h_28_tmp, h_29_tmp, h_30_tmp, ...
    h_31_tmp, h_32_tmp)

%h_fft_result*32

h_control_input = mod([FN00, FN01, FN02, FN03, FN04, FN05, FN06, FN07, FN08, FN09, FN10, FN11, FN12, FN13, FN14, FN15, FN16, FN17, FN18, FN19, FN20, FN21, FN22, FN23, FN24, FN25, FN26, FN27, FN28, FN29, FN30, FN31],65536);
result = mod(textbook_multiplication(h_control_input, h_control_input),65536);

% Test with unity
constant = 65536;
unity = FFT_Forward_32([constant zeros(1,31)],zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32),zeros(1,32))



h_fft_resultUnity_tmp01 = mod(textbook_multiplication(forward_fft_result(1,:), unity(1,:)),65536);
h_fft_resultUnity_tmp02 = mod(textbook_multiplication(forward_fft_result(2,:), unity(2,:)),65536);
h_fft_resultUnity_tmp03 = mod(textbook_multiplication(forward_fft_result(3,:), unity(3,:)),65536);
h_fft_resultUnity_tmp04 = mod(textbook_multiplication(forward_fft_result(4,:), unity(4,:)),65536);
h_fft_resultUnity_tmp05 = mod(textbook_multiplication(forward_fft_result(5,:), unity(5,:)),65536);
h_fft_resultUnity_tmp06 = mod(textbook_multiplication(forward_fft_result(6,:), unity(6,:)),65536);
h_fft_resultUnity_tmp07 = mod(textbook_multiplication(forward_fft_result(7,:), unity(7,:)),65536);
h_fft_resultUnity_tmp08 = mod(textbook_multiplication(forward_fft_result(8,:), unity(8,:)),65536);
h_fft_resultUnity_tmp09 = mod(textbook_multiplication(forward_fft_result(9,:), unity(9,:)),65536);
h_fft_resultUnity_tmp10 = mod(textbook_multiplication(forward_fft_result(10,:), unity(10,:)),65536);
h_fft_resultUnity_tmp11 = mod(textbook_multiplication(forward_fft_result(11,:), unity(11,:)),65536);
h_fft_resultUnity_tmp12 = mod(textbook_multiplication(forward_fft_result(12,:), unity(12,:)),65536);
h_fft_resultUnity_tmp13 = mod(textbook_multiplication(forward_fft_result(13,:), unity(13,:)),65536);
h_fft_resultUnity_tmp14 = mod(textbook_multiplication(forward_fft_result(14,:), unity(14,:)),65536);
h_fft_resultUnity_tmp15 = mod(textbook_multiplication(forward_fft_result(15,:), unity(15,:)),65536);
h_fft_resultUnity_tmp16 = mod(textbook_multiplication(forward_fft_result(16,:), unity(16,:)),65536);
h_fft_resultUnity_tmp17 = mod(textbook_multiplication(forward_fft_result(17,:), unity(17,:)),65536);
h_fft_resultUnity_tmp18 = mod(textbook_multiplication(forward_fft_result(18,:), unity(18,:)),65536);
h_fft_resultUnity_tmp19 = mod(textbook_multiplication(forward_fft_result(19,:), unity(19,:)),65536);
h_fft_resultUnity_tmp20 = mod(textbook_multiplication(forward_fft_result(20,:), unity(20,:)),65536);
h_fft_resultUnity_tmp21 = mod(textbook_multiplication(forward_fft_result(21,:), unity(21,:)),65536);
h_fft_resultUnity_tmp22 = mod(textbook_multiplication(forward_fft_result(22,:), unity(22,:)),65536);
h_fft_resultUnity_tmp23 = mod(textbook_multiplication(forward_fft_result(23,:), unity(23,:)),65536);
h_fft_resultUnity_tmp24 = mod(textbook_multiplication(forward_fft_result(24,:), unity(24,:)),65536);
h_fft_resultUnity_tmp25 = mod(textbook_multiplication(forward_fft_result(25,:), unity(25,:)),65536);
h_fft_resultUnity_tmp26 = mod(textbook_multiplication(forward_fft_result(26,:), unity(26,:)),65536);
h_fft_resultUnity_tmp27 = mod(textbook_multiplication(forward_fft_result(27,:), unity(27,:)),65536);
h_fft_resultUnity_tmp28 = mod(textbook_multiplication(forward_fft_result(28,:), unity(28,:)),65536);
h_fft_resultUnity_tmp29 = mod(textbook_multiplication(forward_fft_result(29,:), unity(29,:)),65536);
h_fft_resultUnity_tmp30 = mod(textbook_multiplication(forward_fft_result(30,:), unity(30,:)),65536);
h_fft_resultUnity_tmp31 = mod(textbook_multiplication(forward_fft_result(31,:), unity(31,:)),65536);
h_fft_resultUnity_tmp32 = mod(textbook_multiplication(forward_fft_result(32,:), unity(32,:)),65536);

h_fft_resultUnity = FFT_Inverse_32( ...
    h_fft_resultUnity_tmp01,h_fft_resultUnity_tmp02,h_fft_resultUnity_tmp03,h_fft_resultUnity_tmp04,h_fft_resultUnity_tmp05,h_fft_resultUnity_tmp06,h_fft_resultUnity_tmp07,h_fft_resultUnity_tmp08,h_fft_resultUnity_tmp09,h_fft_resultUnity_tmp10, ...
    h_fft_resultUnity_tmp11,h_fft_resultUnity_tmp12,h_fft_resultUnity_tmp13,h_fft_resultUnity_tmp14,h_fft_resultUnity_tmp15,h_fft_resultUnity_tmp16,h_fft_resultUnity_tmp17,h_fft_resultUnity_tmp18,h_fft_resultUnity_tmp19,h_fft_resultUnity_tmp20, ...
    h_fft_resultUnity_tmp21,h_fft_resultUnity_tmp22,h_fft_resultUnity_tmp23,h_fft_resultUnity_tmp24,h_fft_resultUnity_tmp25,h_fft_resultUnity_tmp26,h_fft_resultUnity_tmp27,h_fft_resultUnity_tmp28,h_fft_resultUnity_tmp29,h_fft_resultUnity_tmp30, ...
    h_fft_resultUnity_tmp31,h_fft_resultUnity_tmp32)

mod(h_fft_resultUnity(1,:),2048)-mod(FN00*constant,2048)