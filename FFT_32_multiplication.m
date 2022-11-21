function h_result = FFT_32_multiplication(f512, g512)
    %% Apply FFT: R[y]/(y^512-1) ⇒ R[y,w]/(y^16-w, w^32-1) ⇒ R[y,w]/(w^32-1)

    % 1. Transform R[y]/(y^512-1) ⇒ R[y,w]/(y^16-w, w^32-1) ⇒ R[y,w]/(w^32-1)

    f_1632 = [ ...
        f512(1:16) zeros(1,16);  ...
        f512(17:32) zeros(1,16);  ...
        f512(33:48) zeros(1,16);  ...
        f512(49:64) zeros(1,16);  ...
        f512(65:80) zeros(1,16);  ...
        f512(81:96) zeros(1,16);  ...
        f512(97:112) zeros(1,16);  ...
        f512(113:128) zeros(1,16);  ...
        f512(129:144) zeros(1,16);  ...
        f512(145:160) zeros(1,16);  ...
        f512(161:176) zeros(1,16);  ...
        f512(177:192) zeros(1,16);  ...
        f512(193:208) zeros(1,16);  ...
        f512(209:224) zeros(1,16);  ...
        f512(225:240) zeros(1,16);  ...
        f512(241:256) zeros(1,16);  ...
        f512(257:272) zeros(1,16);  ...
        f512(273:288) zeros(1,16);  ...
        f512(289:304) zeros(1,16);  ...
        f512(305:320) zeros(1,16);  ...
        f512(321:336) zeros(1,16);  ...
        f512(337:352) zeros(1,16);  ...
        f512(353:368) zeros(1,16);  ...
        f512(369:384) zeros(1,16);  ...
        f512(385:400) zeros(1,16);  ...
        f512(401:416) zeros(1,16);  ...
        f512(417:432) zeros(1,16);  ...
        f512(433:448) zeros(1,16);  ...
        f512(449:464) zeros(1,16);  ...
        f512(465:480) zeros(1,16);  ...
        f512(481:496) zeros(1,16);  ...
        f512(497:512) zeros(1,16)  ...
        ];

    g_1632 = [ ...
        g512(1:16) zeros(1,16);  ...
        g512(17:32) zeros(1,16);  ...
        g512(33:48) zeros(1,16);  ...
        g512(49:64) zeros(1,16);  ...
        g512(65:80) zeros(1,16);  ...
        g512(81:96) zeros(1,16);  ...
        g512(97:112) zeros(1,16);  ...
        g512(113:128) zeros(1,16);  ...
        g512(129:144) zeros(1,16);  ...
        g512(145:160) zeros(1,16);  ...
        g512(161:176) zeros(1,16);  ...
        g512(177:192) zeros(1,16);  ...
        g512(193:208) zeros(1,16);  ...
        g512(209:224) zeros(1,16);  ...
        g512(225:240) zeros(1,16);  ...
        g512(241:256) zeros(1,16);  ...
        g512(257:272) zeros(1,16);  ...
        g512(273:288) zeros(1,16);  ...
        g512(289:304) zeros(1,16);  ...
        g512(305:320) zeros(1,16);  ...
        g512(321:336) zeros(1,16);  ...
        g512(337:352) zeros(1,16);  ...
        g512(353:368) zeros(1,16);  ...
        g512(369:384) zeros(1,16);  ...
        g512(385:400) zeros(1,16);  ...
        g512(401:416) zeros(1,16);  ...
        g512(417:432) zeros(1,16);  ...
        g512(433:448) zeros(1,16);  ...
        g512(449:464) zeros(1,16);  ...
        g512(465:480) zeros(1,16);  ...
        g512(481:496) zeros(1,16);  ...
        g512(497:512) zeros(1,16)  ...
        ];

    % 2. We get the FFT

    f_forward_fft_32 = FFT_Forward_32( ...
        f_1632(1,:),f_1632(2,:),f_1632(3,:),f_1632(4,:),f_1632(5,:),f_1632(6,:),f_1632(7,:),f_1632(8,:),f_1632(9,:),f_1632(10,:), ...
        f_1632(11,:),f_1632(12,:),f_1632(13,:),f_1632(14,:),f_1632(15,:),f_1632(16,:),f_1632(17,:),f_1632(18,:),f_1632(19,:),f_1632(20,:), ...
        f_1632(21,:),f_1632(22,:),f_1632(23,:),f_1632(24,:),f_1632(25,:),f_1632(26,:),f_1632(27,:),f_1632(28,:),f_1632(29,:),f_1632(30,:), ...
        f_1632(31,:),f_1632(32,:));

    g_forward_fft_32 = FFT_Forward_32( ...
        g_1632(1,:),g_1632(2,:),g_1632(3,:),g_1632(4,:),g_1632(5,:),g_1632(6,:),g_1632(7,:),g_1632(8,:),g_1632(9,:),g_1632(10,:), ...
        g_1632(11,:),g_1632(12,:),g_1632(13,:),g_1632(14,:),g_1632(15,:),g_1632(16,:),g_1632(17,:),g_1632(18,:),g_1632(19,:),g_1632(20,:), ...
        g_1632(21,:),g_1632(22,:),g_1632(23,:),g_1632(24,:),g_1632(25,:),g_1632(26,:),g_1632(27,:),g_1632(28,:),g_1632(29,:),g_1632(30,:), ...
        g_1632(31,:),g_1632(32,:));

    % 3. We multiply pointwise

    % TEST (Later delete)
    % Test if FFT(A)+FF(B) = FFT(A+B)

%      gplusg_forward_fft_32 = FFT_Forward_32( ...
%          f_1632(1,:)+g_1632(1,:), f_1632(2,:)+g_1632(2,:), f_1632(3,:)+g_1632(3,:), f_1632(4,:)+g_1632(4,:), f_1632(5,:)+g_1632(5,:), f_1632(6,:)+g_1632(6,:), f_1632(7,:)+g_1632(7,:), f_1632(8,:)+g_1632(8,:), f_1632(9,:)+g_1632(9,:), f_1632(10,:)+g_1632(10,:), ...
%          f_1632(11,:)+g_1632(11,:), f_1632(12,:)+g_1632(12,:), f_1632(13,:)+g_1632(13,:), f_1632(14,:)+g_1632(14,:), f_1632(15,:)+g_1632(15,:), f_1632(16,:)+g_1632(16,:), f_1632(17,:)+g_1632(17,:), f_1632(18,:)+g_1632(18,:), f_1632(19,:)+g_1632(19,:), f_1632(20,:)+g_1632(20,:), ...
%          f_1632(21,:)+g_1632(21,:), f_1632(22,:)+g_1632(22,:), f_1632(23,:)+g_1632(23,:), f_1632(24,:)+g_1632(24,:), f_1632(25,:)+g_1632(25,:), f_1632(26,:)+g_1632(26,:), f_1632(27,:)+g_1632(27,:), f_1632(28,:)+g_1632(28,:), f_1632(29,:)+g_1632(29,:), f_1632(30,:)+g_1632(30,:), ...
%          f_1632(31,:)+g_1632(31,:), f_1632(32,:)+g_1632(32,:));

    h_fft_32 = zeros(32,32);

    moduloTemp = 65536;

%     h_fft_32(1,:) = multiplication_x32_plus1(f_forward_fft_32(1,:),g_forward_fft_32(1,:), moduloTemp);
%     h_fft_32(2,:) = multiplication_x32_plus1(f_forward_fft_32(2,:),g_forward_fft_32(2,:), moduloTemp);
%     h_fft_32(3,:) = multiplication_x32_plus1(f_forward_fft_32(3,:),g_forward_fft_32(3,:), moduloTemp);
%     h_fft_32(4,:) = multiplication_x32_plus1(f_forward_fft_32(4,:),g_forward_fft_32(4,:), moduloTemp);
%     h_fft_32(5,:) = multiplication_x32_plus1(f_forward_fft_32(5,:),g_forward_fft_32(5,:), moduloTemp);
%     h_fft_32(6,:) = multiplication_x32_plus1(f_forward_fft_32(6,:),g_forward_fft_32(6,:), moduloTemp);
%     h_fft_32(7,:) = multiplication_x32_plus1(f_forward_fft_32(7,:),g_forward_fft_32(7,:), moduloTemp);
%     h_fft_32(8,:) = multiplication_x32_plus1(f_forward_fft_32(8,:),g_forward_fft_32(8,:), moduloTemp);
%     h_fft_32(9,:) = multiplication_x32_plus1(f_forward_fft_32(9,:),g_forward_fft_32(9,:), moduloTemp);
%     h_fft_32(10,:) = multiplication_x32_plus1(f_forward_fft_32(10,:),g_forward_fft_32(10,:), moduloTemp);
% 
%     h_fft_32(11,:) = multiplication_x32_plus1(f_forward_fft_32(11,:),g_forward_fft_32(11,:), moduloTemp);
%     h_fft_32(12,:) = multiplication_x32_plus1(f_forward_fft_32(12,:),g_forward_fft_32(12,:), moduloTemp);
%     h_fft_32(13,:) = multiplication_x32_plus1(f_forward_fft_32(13,:),g_forward_fft_32(13,:), moduloTemp);
%     h_fft_32(14,:) = multiplication_x32_plus1(f_forward_fft_32(14,:),g_forward_fft_32(14,:), moduloTemp);
%     h_fft_32(15,:) = multiplication_x32_plus1(f_forward_fft_32(15,:),g_forward_fft_32(15,:), moduloTemp);
%     h_fft_32(16,:) = multiplication_x32_plus1(f_forward_fft_32(16,:),g_forward_fft_32(16,:), moduloTemp);
%     h_fft_32(17,:) = multiplication_x32_plus1(f_forward_fft_32(17,:),g_forward_fft_32(17,:), moduloTemp);
%     h_fft_32(18,:) = multiplication_x32_plus1(f_forward_fft_32(18,:),g_forward_fft_32(18,:), moduloTemp);
%     h_fft_32(19,:) = multiplication_x32_plus1(f_forward_fft_32(19,:),g_forward_fft_32(19,:), moduloTemp);
%     h_fft_32(20,:) = multiplication_x32_plus1(f_forward_fft_32(20,:),g_forward_fft_32(20,:), moduloTemp);
% 
%     h_fft_32(21,:) = multiplication_x32_plus1(f_forward_fft_32(21,:),g_forward_fft_32(21,:), moduloTemp);
%     h_fft_32(22,:) = multiplication_x32_plus1(f_forward_fft_32(22,:),g_forward_fft_32(22,:), moduloTemp);
%     h_fft_32(23,:) = multiplication_x32_plus1(f_forward_fft_32(23,:),g_forward_fft_32(23,:), moduloTemp);
%     h_fft_32(24,:) = multiplication_x32_plus1(f_forward_fft_32(24,:),g_forward_fft_32(24,:), moduloTemp);
%     h_fft_32(25,:) = multiplication_x32_plus1(f_forward_fft_32(25,:),g_forward_fft_32(25,:), moduloTemp);
%     h_fft_32(26,:) = multiplication_x32_plus1(f_forward_fft_32(26,:),g_forward_fft_32(26,:), moduloTemp);
%     h_fft_32(27,:) = multiplication_x32_plus1(f_forward_fft_32(27,:),g_forward_fft_32(27,:), moduloTemp);
%     h_fft_32(28,:) = multiplication_x32_plus1(f_forward_fft_32(28,:),g_forward_fft_32(28,:), moduloTemp);
%     h_fft_32(29,:) = multiplication_x32_plus1(f_forward_fft_32(29,:),g_forward_fft_32(29,:), moduloTemp);
%     h_fft_32(30,:) = multiplication_x32_plus1(f_forward_fft_32(30,:),g_forward_fft_32(30,:), moduloTemp);
% 
%     h_fft_32(31,:) = multiplication_x32_plus1(f_forward_fft_32(31,:),g_forward_fft_32(31,:), moduloTemp);
%     h_fft_32(32,:) = multiplication_x32_plus1(f_forward_fft_32(32,:),g_forward_fft_32(32,:), moduloTemp);



    h_fft_32(1,:) = karatsuba_y32_plus1(f_forward_fft_32(1,:),g_forward_fft_32(1,:), moduloTemp);
    h_fft_32(2,:) = karatsuba_y32_plus1(f_forward_fft_32(2,:),g_forward_fft_32(2,:), moduloTemp);
    h_fft_32(3,:) = karatsuba_y32_plus1(f_forward_fft_32(3,:),g_forward_fft_32(3,:), moduloTemp);
    h_fft_32(4,:) = karatsuba_y32_plus1(f_forward_fft_32(4,:),g_forward_fft_32(4,:), moduloTemp);
    h_fft_32(5,:) = karatsuba_y32_plus1(f_forward_fft_32(5,:),g_forward_fft_32(5,:), moduloTemp);
    h_fft_32(6,:) = karatsuba_y32_plus1(f_forward_fft_32(6,:),g_forward_fft_32(6,:), moduloTemp);
    h_fft_32(7,:) = karatsuba_y32_plus1(f_forward_fft_32(7,:),g_forward_fft_32(7,:), moduloTemp);
    h_fft_32(8,:) = karatsuba_y32_plus1(f_forward_fft_32(8,:),g_forward_fft_32(8,:), moduloTemp);
    h_fft_32(9,:) = karatsuba_y32_plus1(f_forward_fft_32(9,:),g_forward_fft_32(9,:), moduloTemp);
    h_fft_32(10,:) = karatsuba_y32_plus1(f_forward_fft_32(10,:),g_forward_fft_32(10,:), moduloTemp);

    h_fft_32(11,:) = karatsuba_y32_plus1(f_forward_fft_32(11,:),g_forward_fft_32(11,:), moduloTemp);
    h_fft_32(12,:) = karatsuba_y32_plus1(f_forward_fft_32(12,:),g_forward_fft_32(12,:), moduloTemp);
    h_fft_32(13,:) = karatsuba_y32_plus1(f_forward_fft_32(13,:),g_forward_fft_32(13,:), moduloTemp);
    h_fft_32(14,:) = karatsuba_y32_plus1(f_forward_fft_32(14,:),g_forward_fft_32(14,:), moduloTemp);
    h_fft_32(15,:) = karatsuba_y32_plus1(f_forward_fft_32(15,:),g_forward_fft_32(15,:), moduloTemp);
    h_fft_32(16,:) = karatsuba_y32_plus1(f_forward_fft_32(16,:),g_forward_fft_32(16,:), moduloTemp);
    h_fft_32(17,:) = karatsuba_y32_plus1(f_forward_fft_32(17,:),g_forward_fft_32(17,:), moduloTemp);
    h_fft_32(18,:) = karatsuba_y32_plus1(f_forward_fft_32(18,:),g_forward_fft_32(18,:), moduloTemp);
    h_fft_32(19,:) = karatsuba_y32_plus1(f_forward_fft_32(19,:),g_forward_fft_32(19,:), moduloTemp);
    h_fft_32(20,:) = karatsuba_y32_plus1(f_forward_fft_32(20,:),g_forward_fft_32(20,:), moduloTemp);

    h_fft_32(21,:) = karatsuba_y32_plus1(f_forward_fft_32(21,:),g_forward_fft_32(21,:), moduloTemp);
    h_fft_32(22,:) = karatsuba_y32_plus1(f_forward_fft_32(22,:),g_forward_fft_32(22,:), moduloTemp);
    h_fft_32(23,:) = karatsuba_y32_plus1(f_forward_fft_32(23,:),g_forward_fft_32(23,:), moduloTemp);
    h_fft_32(24,:) = karatsuba_y32_plus1(f_forward_fft_32(24,:),g_forward_fft_32(24,:), moduloTemp);
    h_fft_32(25,:) = karatsuba_y32_plus1(f_forward_fft_32(25,:),g_forward_fft_32(25,:), moduloTemp);
    h_fft_32(26,:) = karatsuba_y32_plus1(f_forward_fft_32(26,:),g_forward_fft_32(26,:), moduloTemp);
    h_fft_32(27,:) = karatsuba_y32_plus1(f_forward_fft_32(27,:),g_forward_fft_32(27,:), moduloTemp);
    h_fft_32(28,:) = karatsuba_y32_plus1(f_forward_fft_32(28,:),g_forward_fft_32(28,:), moduloTemp);
    h_fft_32(29,:) = karatsuba_y32_plus1(f_forward_fft_32(29,:),g_forward_fft_32(29,:), moduloTemp);
    h_fft_32(30,:) = karatsuba_y32_plus1(f_forward_fft_32(30,:),g_forward_fft_32(30,:), moduloTemp);

    h_fft_32(31,:) = karatsuba_y32_plus1(f_forward_fft_32(31,:),g_forward_fft_32(31,:), moduloTemp);
    h_fft_32(32,:) = karatsuba_y32_plus1(f_forward_fft_32(32,:),g_forward_fft_32(32,:), moduloTemp);




    %% Invert FFT

    h_backwards_fft = FFT_Inverse_32( ...
        h_fft_32(1,:),h_fft_32(2,:),h_fft_32(3,:),h_fft_32(4,:),h_fft_32(5,:),h_fft_32(6,:),h_fft_32(7,:),h_fft_32(8,:),h_fft_32(9,:),h_fft_32(10,:), ...
        h_fft_32(11,:),h_fft_32(12,:),h_fft_32(13,:),h_fft_32(14,:),h_fft_32(15,:),h_fft_32(16,:),h_fft_32(17,:),h_fft_32(18,:),h_fft_32(19,:),h_fft_32(20,:), ...
        h_fft_32(21,:),h_fft_32(22,:),h_fft_32(23,:),h_fft_32(24,:),h_fft_32(25,:),h_fft_32(26,:),h_fft_32(27,:),h_fft_32(28,:),h_fft_32(29,:),h_fft_32(30,:), ...
        h_fft_32(31,:),h_fft_32(32,:) ...
        );

    h_result = back_fft32inverse_y512( ...
    	h_backwards_fft(1,:), h_backwards_fft(2,:), h_backwards_fft(3,:), h_backwards_fft(4,:), h_backwards_fft(5,:), h_backwards_fft(6,:), h_backwards_fft(7,:), h_backwards_fft(8,:), h_backwards_fft(9,:), h_backwards_fft(10,:),  ...
    	h_backwards_fft(11,:), h_backwards_fft(12,:), h_backwards_fft(13,:), h_backwards_fft(14,:), h_backwards_fft(15,:), h_backwards_fft(16,:), h_backwards_fft(17,:), h_backwards_fft(18,:), h_backwards_fft(19,:), h_backwards_fft(20,:),  ...
    	h_backwards_fft(21,:), h_backwards_fft(22,:), h_backwards_fft(23,:), h_backwards_fft(24,:), h_backwards_fft(25,:), h_backwards_fft(26,:), h_backwards_fft(27,:), h_backwards_fft(28,:), h_backwards_fft(29,:), h_backwards_fft(30,:),  ...
    	h_backwards_fft(31,:), h_backwards_fft(32,:) ...
        );
end

