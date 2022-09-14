function result = Forward_FFT_32_26(A00, A01, A02, A03, A04, A05, A06, A07, A08, A09, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21, A22, A23, A24, A25, A26, A27, A28, A29, A30, A31)
    
    % Input: A00, A01, ... , A31 are 32 arrays of 32 elements, i.e.,
    %        size(AXX) = (1,32)
    %        Input is f(w)=(a_0+a_1*y+a_2*y^2+...+a_31*y^31) +
    %        (b_0+b_1*y+b_2*y^2+...+b_31*y^31)*w+ ... +
    %        (z_0+z_1*y+z_2*y^2+...+z_31*y^31)*w^31
    
    % Output: f(zeta^0), where z=y^2                

    modulo = 65536;

    resultTemp00 = [ A00(1),  A00(2),  A00(3),  A00(4),  A00(5),  A00(6),  A00(7),  A00(8),  A00(9),  A00(10),  A00(11),  A00(12),  A00(13),  A00(14),  A00(15),  A00(16),  A00(17),  A00(18),  A00(19),  A00(20),  A00(21),  A00(22),  A00(23),  A00(24),  A00(25),  A00(26),  A00(27),  A00(28),  A00(29),  A00(30),  A00(31),  A00(32)];
    resultTemp01 = [ A01(13),  A01(14),  A01(15),  A01(16),  A01(17),  A01(18),  A01(19),  A01(20),  A01(21),  A01(22),  A01(23),  A01(24),  A01(25),  A01(26),  A01(27),  A01(28),  A01(29),  A01(30),  A01(31),  A01(32), -A01(1), -A01(2), -A01(3), -A01(4), -A01(5), -A01(6), -A01(7), -A01(8), -A01(9), -A01(10), -A01(11), -A01(12)];
    resultTemp02 = [ A02(25),  A02(26),  A02(27),  A02(28),  A02(29),  A02(30),  A02(31),  A02(32), -A02(1), -A02(2), -A02(3), -A02(4), -A02(5), -A02(6), -A02(7), -A02(8), -A02(9), -A02(10), -A02(11), -A02(12), -A02(13), -A02(14), -A02(15), -A02(16), -A02(17), -A02(18), -A02(19), -A02(20), -A02(21), -A02(22), -A02(23), -A02(24)];
    resultTemp03 = [-A03(5), -A03(6), -A03(7), -A03(8), -A03(9), -A03(10), -A03(11), -A03(12), -A03(13), -A03(14), -A03(15), -A03(16), -A03(17), -A03(18), -A03(19), -A03(20), -A03(21), -A03(22), -A03(23), -A03(24), -A03(25), -A03(26), -A03(27), -A03(28), -A03(29), -A03(30), -A03(31), -A03(32),  A03(1),  A03(2),  A03(3),  A03(4)];
    resultTemp04 = [-A04(17), -A04(18), -A04(19), -A04(20), -A04(21), -A04(22), -A04(23), -A04(24), -A04(25), -A04(26), -A04(27), -A04(28), -A04(29), -A04(30), -A04(31), -A04(32),  A04(1),  A04(2),  A04(3),  A04(4),  A04(5),  A04(6),  A04(7),  A04(8),  A04(9),  A04(10),  A04(11),  A04(12),  A04(13),  A04(14),  A04(15),  A04(16)];
    resultTemp05 = [-A05(29), -A05(30), -A05(31), -A05(32),  A05(1),  A05(2),  A05(3),  A05(4),  A05(5),  A05(6),  A05(7),  A05(8),  A05(9),  A05(10),  A05(11),  A05(12),  A05(13),  A05(14),  A05(15),  A05(16),  A05(17),  A05(18),  A05(19),  A05(20),  A05(21),  A05(22),  A05(23),  A05(24),  A05(25),  A05(26),  A05(27),  A05(28)];
    resultTemp06 = [ A06(9),  A06(10),  A06(11),  A06(12),  A06(13),  A06(14),  A06(15),  A06(16),  A06(17),  A06(18),  A06(19),  A06(20),  A06(21),  A06(22),  A06(23),  A06(24),  A06(25),  A06(26),  A06(27),  A06(28),  A06(29),  A06(30),  A06(31),  A06(32), -A06(1), -A06(2), -A06(3), -A06(4), -A06(5), -A06(6), -A06(7), -A06(8)];
    resultTemp07 = [ A07(21),  A07(22),  A07(23),  A07(24),  A07(25),  A07(26),  A07(27),  A07(28),  A07(29),  A07(30),  A07(31),  A07(32), -A07(1), -A07(2), -A07(3), -A07(4), -A07(5), -A07(6), -A07(7), -A07(8), -A07(9), -A07(10), -A07(11), -A07(12), -A07(13), -A07(14), -A07(15), -A07(16), -A07(17), -A07(18), -A07(19), -A07(20)];
    resultTemp08 = [-A08(1), -A08(2), -A08(3), -A08(4), -A08(5), -A08(6), -A08(7), -A08(8), -A08(9), -A08(10), -A08(11), -A08(12), -A08(13), -A08(14), -A08(15), -A08(16), -A08(17), -A08(18), -A08(19), -A08(20), -A08(21), -A08(22), -A08(23), -A08(24), -A08(25), -A08(26), -A08(27), -A08(28), -A08(29), -A08(30), -A08(31), -A08(32)];
    resultTemp09 = [-A09(13), -A09(14), -A09(15), -A09(16), -A09(17), -A09(18), -A09(19), -A09(20), -A09(21), -A09(22), -A09(23), -A09(24), -A09(25), -A09(26), -A09(27), -A09(28), -A09(29), -A09(30), -A09(31), -A09(32),  A09(1),  A09(2),  A09(3),  A09(4),  A09(5),  A09(6),  A09(7),  A09(8),  A09(9),  A09(10),  A09(11),  A09(12)];
    resultTemp10 = [-A10(25), -A10(26), -A10(27), -A10(28), -A10(29), -A10(30), -A10(31), -A10(32),  A10(1),  A10(2),  A10(3),  A10(4),  A10(5),  A10(6),  A10(7),  A10(8),  A10(9),  A10(10),  A10(11),  A10(12),  A10(13),  A10(14),  A10(15),  A10(16),  A10(17),  A10(18),  A10(19),  A10(20),  A10(21),  A10(22),  A10(23),  A10(24)];
    resultTemp11 = [ A11(5),  A11(6),  A11(7),  A11(8),  A11(9),  A11(10),  A11(11),  A11(12),  A11(13),  A11(14),  A11(15),  A11(16),  A11(17),  A11(18),  A11(19),  A11(20),  A11(21),  A11(22),  A11(23),  A11(24),  A11(25),  A11(26),  A11(27),  A11(28),  A11(29),  A11(30),  A11(31),  A11(32), -A11(1), -A11(2), -A11(3), -A11(4)];
    resultTemp12 = [ A12(17),  A12(18),  A12(19),  A12(20),  A12(21),  A12(22),  A12(23),  A12(24),  A12(25),  A12(26),  A12(27),  A12(28),  A12(29),  A12(30),  A12(31),  A12(32), -A12(1), -A12(2), -A12(3), -A12(4), -A12(5), -A12(6), -A12(7), -A12(8), -A12(9), -A12(10), -A12(11), -A12(12), -A12(13), -A12(14), -A12(15), -A12(16)];
    resultTemp13 = [ A13(29),  A13(30),  A13(31),  A13(32), -A13(1), -A13(2), -A13(3), -A13(4), -A13(5), -A13(6), -A13(7), -A13(8), -A13(9), -A13(10), -A13(11), -A13(12), -A13(13), -A13(14), -A13(15), -A13(16), -A13(17), -A13(18), -A13(19), -A13(20), -A13(21), -A13(22), -A13(23), -A13(24), -A13(25), -A13(26), -A13(27), -A13(28)];
    resultTemp14 = [-A14(9), -A14(10), -A14(11), -A14(12), -A14(13), -A14(14), -A14(15), -A14(16), -A14(17), -A14(18), -A14(19), -A14(20), -A14(21), -A14(22), -A14(23), -A14(24), -A14(25), -A14(26), -A14(27), -A14(28), -A14(29), -A14(30), -A14(31), -A14(32),  A14(1),  A14(2),  A14(3),  A14(4),  A14(5),  A14(6),  A14(7),  A14(8)];
    resultTemp15 = [-A15(21), -A15(22), -A15(23), -A15(24), -A15(25), -A15(26), -A15(27), -A15(28), -A15(29), -A15(30), -A15(31), -A15(32),  A15(1),  A15(2),  A15(3),  A15(4),  A15(5),  A15(6),  A15(7),  A15(8),  A15(9),  A15(10),  A15(11),  A15(12),  A15(13),  A15(14),  A15(15),  A15(16),  A15(17),  A15(18),  A15(19),  A15(20)];
    resultTemp16 = [ A16(1),  A16(2),  A16(3),  A16(4),  A16(5),  A16(6),  A16(7),  A16(8),  A16(9),  A16(10),  A16(11),  A16(12),  A16(13),  A16(14),  A16(15),  A16(16),  A16(17),  A16(18),  A16(19),  A16(20),  A16(21),  A16(22),  A16(23),  A16(24),  A16(25),  A16(26),  A16(27),  A16(28),  A16(29),  A16(30),  A16(31),  A16(32)];
    resultTemp17 = [ A17(13),  A17(14),  A17(15),  A17(16),  A17(17),  A17(18),  A17(19),  A17(20),  A17(21),  A17(22),  A17(23),  A17(24),  A17(25),  A17(26),  A17(27),  A17(28),  A17(29),  A17(30),  A17(31),  A17(32), -A17(1), -A17(2), -A17(3), -A17(4), -A17(5), -A17(6), -A17(7), -A17(8), -A17(9), -A17(10), -A17(11), -A17(12)];
    resultTemp18 = [ A18(25),  A18(26),  A18(27),  A18(28),  A18(29),  A18(30),  A18(31),  A18(32), -A18(1), -A18(2), -A18(3), -A18(4), -A18(5), -A18(6), -A18(7), -A18(8), -A18(9), -A18(10), -A18(11), -A18(12), -A18(13), -A18(14), -A18(15), -A18(16), -A18(17), -A18(18), -A18(19), -A18(20), -A18(21), -A18(22), -A18(23), -A18(24)];
    resultTemp19 = [-A19(5), -A19(6), -A19(7), -A19(8), -A19(9), -A19(10), -A19(11), -A19(12), -A19(13), -A19(14), -A19(15), -A19(16), -A19(17), -A19(18), -A19(19), -A19(20), -A19(21), -A19(22), -A19(23), -A19(24), -A19(25), -A19(26), -A19(27), -A19(28), -A19(29), -A19(30), -A19(31), -A19(32),  A19(1),  A19(2),  A19(3),  A19(4)];
    resultTemp20 = [-A20(17), -A20(18), -A20(19), -A20(20), -A20(21), -A20(22), -A20(23), -A20(24), -A20(25), -A20(26), -A20(27), -A20(28), -A20(29), -A20(30), -A20(31), -A20(32),  A20(1),  A20(2),  A20(3),  A20(4),  A20(5),  A20(6),  A20(7),  A20(8),  A20(9),  A20(10),  A20(11),  A20(12),  A20(13),  A20(14),  A20(15),  A20(16)];
    resultTemp21 = [-A21(29), -A21(30), -A21(31), -A21(32),  A21(1),  A21(2),  A21(3),  A21(4),  A21(5),  A21(6),  A21(7),  A21(8),  A21(9),  A21(10),  A21(11),  A21(12),  A21(13),  A21(14),  A21(15),  A21(16),  A21(17),  A21(18),  A21(19),  A21(20),  A21(21),  A21(22),  A21(23),  A21(24),  A21(25),  A21(26),  A21(27),  A21(28)];
    resultTemp22 = [ A22(9),  A22(10),  A22(11),  A22(12),  A22(13),  A22(14),  A22(15),  A22(16),  A22(17),  A22(18),  A22(19),  A22(20),  A22(21),  A22(22),  A22(23),  A22(24),  A22(25),  A22(26),  A22(27),  A22(28),  A22(29),  A22(30),  A22(31),  A22(32), -A22(1), -A22(2), -A22(3), -A22(4), -A22(5), -A22(6), -A22(7), -A22(8)];
    resultTemp23 = [ A23(21),  A23(22),  A23(23),  A23(24),  A23(25),  A23(26),  A23(27),  A23(28),  A23(29),  A23(30),  A23(31),  A23(32), -A23(1), -A23(2), -A23(3), -A23(4), -A23(5), -A23(6), -A23(7), -A23(8), -A23(9), -A23(10), -A23(11), -A23(12), -A23(13), -A23(14), -A23(15), -A23(16), -A23(17), -A23(18), -A23(19), -A23(20)];
    resultTemp24 = [-A24(1), -A24(2), -A24(3), -A24(4), -A24(5), -A24(6), -A24(7), -A24(8), -A24(9), -A24(10), -A24(11), -A24(12), -A24(13), -A24(14), -A24(15), -A24(16), -A24(17), -A24(18), -A24(19), -A24(20), -A24(21), -A24(22), -A24(23), -A24(24), -A24(25), -A24(26), -A24(27), -A24(28), -A24(29), -A24(30), -A24(31), -A24(32)];
    resultTemp25 = [-A25(13), -A25(14), -A25(15), -A25(16), -A25(17), -A25(18), -A25(19), -A25(20), -A25(21), -A25(22), -A25(23), -A25(24), -A25(25), -A25(26), -A25(27), -A25(28), -A25(29), -A25(30), -A25(31), -A25(32),  A25(1),  A25(2),  A25(3),  A25(4),  A25(5),  A25(6),  A25(7),  A25(8),  A25(9),  A25(10),  A25(11),  A25(12)];
    resultTemp26 = [-A26(25), -A26(26), -A26(27), -A26(28), -A26(29), -A26(30), -A26(31), -A26(32),  A26(1),  A26(2),  A26(3),  A26(4),  A26(5),  A26(6),  A26(7),  A26(8),  A26(9),  A26(10),  A26(11),  A26(12),  A26(13),  A26(14),  A26(15),  A26(16),  A26(17),  A26(18),  A26(19),  A26(20),  A26(21),  A26(22),  A26(23),  A26(24)];
    resultTemp27 = [ A27(5),  A27(6),  A27(7),  A27(8),  A27(9),  A27(10),  A27(11),  A27(12),  A27(13),  A27(14),  A27(15),  A27(16),  A27(17),  A27(18),  A27(19),  A27(20),  A27(21),  A27(22),  A27(23),  A27(24),  A27(25),  A27(26),  A27(27),  A27(28),  A27(29),  A27(30),  A27(31),  A27(32), -A27(1), -A27(2), -A27(3), -A27(4)];
    resultTemp28 = [ A28(17),  A28(18),  A28(19),  A28(20),  A28(21),  A28(22),  A28(23),  A28(24),  A28(25),  A28(26),  A28(27),  A28(28),  A28(29),  A28(30),  A28(31),  A28(32), -A28(1), -A28(2), -A28(3), -A28(4), -A28(5), -A28(6), -A28(7), -A28(8), -A28(9), -A28(10), -A28(11), -A28(12), -A28(13), -A28(14), -A28(15), -A28(16)];
    resultTemp29 = [ A29(29),  A29(30),  A29(31),  A29(32), -A29(1), -A29(2), -A29(3), -A29(4), -A29(5), -A29(6), -A29(7), -A29(8), -A29(9), -A29(10), -A29(11), -A29(12), -A29(13), -A29(14), -A29(15), -A29(16), -A29(17), -A29(18), -A29(19), -A29(20), -A29(21), -A29(22), -A29(23), -A29(24), -A29(25), -A29(26), -A29(27), -A29(28)];
    resultTemp30 = [-A30(9), -A30(10), -A30(11), -A30(12), -A30(13), -A30(14), -A30(15), -A30(16), -A30(17), -A30(18), -A30(19), -A30(20), -A30(21), -A30(22), -A30(23), -A30(24), -A30(25), -A30(26), -A30(27), -A30(28), -A30(29), -A30(30), -A30(31), -A30(32),  A30(1),  A30(2),  A30(3),  A30(4),  A30(5),  A30(6),  A30(7),  A30(8)];
    resultTemp31 = [-A31(21), -A31(22), -A31(23), -A31(24), -A31(25), -A31(26), -A31(27), -A31(28), -A31(29), -A31(30), -A31(31), -A31(32),  A31(1),  A31(2),  A31(3),  A31(4),  A31(5),  A31(6),  A31(7),  A31(8),  A31(9),  A31(10),  A31(11),  A31(12),  A31(13),  A31(14),  A31(15),  A31(16),  A31(17),  A31(18),  A31(19),  A31(20)];    
    
    %% Reductions and additions using binary partition

    % Level 01

    resultTemp_101 = mod(resultTemp00 + resultTemp01,modulo);
    resultTemp_102 = mod(resultTemp02 + resultTemp03,modulo);
    resultTemp_103 = mod(resultTemp04 + resultTemp05,modulo);
    resultTemp_104 = mod(resultTemp06 + resultTemp07,modulo);
    resultTemp_105 = mod(resultTemp08 + resultTemp09,modulo);
    resultTemp_106 = mod(resultTemp10 + resultTemp11,modulo);
    resultTemp_107 = mod(resultTemp12 + resultTemp13,modulo);
    resultTemp_108 = mod(resultTemp14 + resultTemp15,modulo);
    resultTemp_109 = mod(resultTemp16 + resultTemp17,modulo);
    resultTemp_110 = mod(resultTemp18 + resultTemp19,modulo);
    resultTemp_111 = mod(resultTemp20 + resultTemp21,modulo);
    resultTemp_112 = mod(resultTemp22 + resultTemp23,modulo);
    resultTemp_113 = mod(resultTemp24 + resultTemp25,modulo);
    resultTemp_114 = mod(resultTemp26 + resultTemp27,modulo);
    resultTemp_115 = mod(resultTemp28 + resultTemp29,modulo);
    resultTemp_116 = mod(resultTemp30 + resultTemp31,modulo);

    % Level 02

    resultTemp_201 = mod(resultTemp_101 + resultTemp_102 , modulo);
    resultTemp_202 = mod(resultTemp_103 + resultTemp_104 , modulo);
    resultTemp_203 = mod(resultTemp_105 + resultTemp_106 , modulo);
    resultTemp_204 = mod(resultTemp_107 + resultTemp_108 , modulo);
    resultTemp_205 = mod(resultTemp_109 + resultTemp_110 , modulo);
    resultTemp_206 = mod(resultTemp_111 + resultTemp_112 , modulo);
    resultTemp_207 = mod(resultTemp_113 + resultTemp_114 , modulo);
    resultTemp_208 = mod(resultTemp_115 + resultTemp_116 , modulo);

    % Level 03

    resultTemp_301 = mod(resultTemp_201 + resultTemp_202 , modulo);
    resultTemp_302 = mod(resultTemp_203 + resultTemp_204 , modulo);
    resultTemp_303 = mod(resultTemp_205 + resultTemp_206 , modulo);
    resultTemp_304 = mod(resultTemp_207 + resultTemp_208 , modulo);

    % Level 04
    
    resultTemp_401 = mod(resultTemp_301 + resultTemp_302 , modulo);
    resultTemp_402 = mod(resultTemp_303 + resultTemp_304 , modulo);
    
    % Final

    result = mod(resultTemp_401 + resultTemp_402 , modulo);

    
end

