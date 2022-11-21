function f_forward_fft_32 = FFT_Forward_32_512to3232(f512)
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

    % 2. We get the FFT

    f_forward_fft_32 = FFT_Forward_32( ...
        f_1632(1,:),f_1632(2,:),f_1632(3,:),f_1632(4,:),f_1632(5,:),f_1632(6,:),f_1632(7,:),f_1632(8,:),f_1632(9,:),f_1632(10,:), ...
        f_1632(11,:),f_1632(12,:),f_1632(13,:),f_1632(14,:),f_1632(15,:),f_1632(16,:),f_1632(17,:),f_1632(18,:),f_1632(19,:),f_1632(20,:), ...
        f_1632(21,:),f_1632(22,:),f_1632(23,:),f_1632(24,:),f_1632(25,:),f_1632(26,:),f_1632(27,:),f_1632(28,:),f_1632(29,:),f_1632(30,:), ...
        f_1632(31,:),f_1632(32,:));
end
