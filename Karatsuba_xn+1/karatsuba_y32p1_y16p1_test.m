
syms a00 a01 a02 a03 a04 a05 a06 a07 a08 x y z
syms b00 b01 b02 b03 b04 b05 b06 b07 b08

%% Test karatsuba_y16_plus1

disp('============ TEST karatsuba_y16_plus1 ================')

f_test_16 = randi(2048,1,16)
g_test_16 = randi(2048,1,16)

f_test_poly_16 = poly2sym(fliplr(f_test_16),y)
g_test_poly_16 = poly2sym(fliplr(g_test_16),y)


polynomialReduce(expand(f_test_poly_16*g_test_poly_16),y^16+1)
coeffs(polynomialReduce(expand(f_test_poly_16*g_test_poly_16),y^16+1),y)
result_verification_16 = mod(coeffs(polynomialReduce(expand(f_test_poly_16*g_test_poly_16),y^16+1),y),2048)

result_karatsuba_16 = karatsuba_y16_plus1(f_test_16,g_test_16,2048)

result_verification_16-result_karatsuba_16

%% Test karatsuba_y32_plus1

disp('============ TEST karatsuba_y32_plus1 ================')

f_test_32 = randi(2048,1,32)
g_test_32 = randi(2048,1,32)

f_test_poly_32 = poly2sym(fliplr(f_test_32),y)
g_test_poly_32 = poly2sym(fliplr(g_test_32),y)


polynomialReduce(expand(f_test_poly_32 * g_test_poly_32),y^32+1)
coeffs(polynomialReduce(expand(f_test_poly_32 *g_test_poly_32),y^32+1),y)
result_verification_32 = mod(coeffs(polynomialReduce(expand(f_test_poly_32*g_test_poly_32),y^32+1),y),2048)

result_karatsuba_32 = karatsuba_y32_plus1(f_test_32,g_test_32,2048)

result_verification_32-result_karatsuba_32