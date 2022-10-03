clc;
addpath(genpath('../'));  %We add the path to the libraries

%f = randi(2048,1,512)
%g = randi(2048,1,512)

%f = [533, 1639, 884, 1866, 373, 541, 299, 279, 1781, 1188, 1127, 297, 1748, 1274, 719, 1052, 823, 156, 492, 253, 377, 492, 855, 102, 1849, 1935, 1006, 1002, 692, 1844, 757, 228]
%g = [1598, 799, 495, 828, 198, 271, 1930, 1959, 1179, 123, 481, 724, 1682, 32, 89, 347, 1330, 1499, 1327, 924, 1121, 607, 1526, 387, 1407, 376, 755, 1282, 1598, 167, 1904, 1589]

f = [172, 1997, 1334, 474, 827, 250, 550, 529, 680, 312, 713, 250, 1811, 194, 1905, 818, 98, 702, 1508, 1628, 1116, 1406, 1831, 113, 622, 95, 401, 1475, 1479, 1798, 1193, 145, 1890, ...
    1640, 586, 1114, 2017, 1466, 1719, 888, 964, 1149, 552, 1534, 1032, 1325, 631, 285, 974, 743, 1615, 1599, 1370, 274, 45, 1147, 617, 1924, 2009, 587, 1641, 1836, 1224, 1811, 1933, ... 
    1125, 1492, 1182, 53, 915, 1324, 1068, 763, 1920, 1699, 1739, 763, 1215, 1787, 1912, 1370, 424, 1340, 148, 833, 1366, 1913, 1661, 993, 1550, 855, 1991, 2024, 1770, 797, 932, 506, ... 
    1607, 1809, 1872, 1144, 1227, 305, 1843, 923, 422, 1843, 1562, 1808, 584, 1379, 1361, 252, 835, 564, 1468, 581, 1836, 1693, 799, 1020, 1423, 1709, 1249, 1178, 668, 935, 1462, 1812, ... 
    1477, 39, 1382, 899, 897, 240, 1669, 666, 505, 702, 770, 1120, 1151, 811, 816, 1056, 1347, 1948, 1480, 820, 1704, 276, 124, 173, 336, 665, 618, 24, 1106, 196, 301, 1293, 1760, 1996, ... 
    1170, 2042, 1134, 1056, 678, 881, 1008, 146, 1819, 133, 894, 1693, 809, 1257, 1677, 1816, 1907, 391, 530, 1839, 1216, 1032, 1256, 1679, 1090, 414, 930, 877, 1979, 1270, 1425, 1475, ... 
    711, 1059, 1141, 321, 1152, 1423, 874, 1713, 1498, 738, 931, 792, 1589, 1504, 882, 1421, 1936, 1607, 1446, 224, 799, 1211, 941, 104, 469, 1709, 33, 1769, 160, 1371, 1025, 447, 1171, ... 
    251, 1375, 1228, 115, 116, 313, 41, 892, 1705, 1265, 1066, 1770, 201, 1860, 222, 1059, 294, 1146, 10, 1571, 1739, 1878, 2022, 1035, 556, 207, 1041, 1200, 1563, 170, 1355, 1059, 351, ... 
    1923, 1210, 903, 1930, 1344, 926, 1720, 1091, 1135, 1393, 753, 491, 1186, 1776, 834, 231, 909, 615, 823, 1707, 827, 800, 739, 288, 533, 178, 880, 527, 610, 871, 245, 1014, 1447, 499, ...
    1608, 152, 807, 7, 452, 3, 388, 292, 550, 359, 284, 1227, 1846, 1924, 453, 989, 771, 1073, 543, 140, 894, 357, 54, 1956, 882, 1970, 1562, 16, 1393, 1446, 1322, 1132, 447, 1582, 468, 760, ... 
    1825, 1754, 825, 652, 1247, 1865, 1862, 1212, 682, 1748, 907, 1853, 68, 1091, 1468, 368, 690, 385, 660, 828, 1124, 100, 1132, 563, 495, 498, 316, 1959, 1917, 1677, 1492, 361, 739, 387, ... 
    3, 649, 1433, 1281, 1113, 900, 589, 1028, 1560, 1562, 1180, 1532, 1323, 253, 1034, 712, 189, 303, 406, 1377, 884, 1423, 526, 20, 1091, 573, 1938, 1857, 805, 51, 1376, 1715, 1990, 117, ... 
    923, 1193, 1407, 1474, 1332, 1489, 766, 1192, 238, 119, 2007, 584, 1219, 1971, 381, 396, 700, 1911, 801, 560, 312, 814, 768, 269, 891, 188, 1259, 23, 1175, 1618, 483, 918, 1167, 126, ... 
    1017, 1316, 454, 1715, 1989, 1734, 1037, 572, 1530, 486, 1961, 1271, 1230, 354, 186, 523, 1759, 1866, 1433, 1486, 471, 1180, 1661, 828, 2025, 185, 658, 1048, 125, 1487, 1140, 1085, ... 
    1700, 1759, 1616, 651, 927, 1541, 225, 225, 553, 1075, 1992, 1455, 639, 597, 1742, 1868, 1310, 523, 182, 1717, 1198, 1942, 125, 1198, 584, 1696, 392, 907, 806, 1693, 1387, 426, 652, ... 
    275, 1376, 1170, 348, 303, 976, 1860, 1131, 68, 111, 1649, 925, 784, 1618];

g =[747, 1091, 1458, 1785, 674, 1332, 1997, 156, 1203, 848, 634, 541, 1554, 2039, 383, 1600, 401, 2033, 1644, 869, 1493, 1021, 1657, 731, 151, 1211, 1865, 397, 886, 1535, 81, 1939, 1565, ... 
    1145, 377, 1020, 1061, 2037, 1751, 1972, 1391, 827, 1915, 982, 475, 812, 1444, 1144, 1550, 2039, 1972, 1096, 1975, 237, 106, 624, 1189, 1088, 1846, 1108, 885, 1112, 1460, 35, 1641, ... 
    292, 980, 526, 756, 1356, 348, 571, 406, 400, 670, 1803, 965, 828, 368, 1985, 835, 1730, 1261, 772, 1797, 1608, 953, 1668, 1841, 880, 685, 1222, 1848, 1438, 774, 1506, 1955, 1112, ... 
    1107, 638, 146, 373, 191, 950, 20, 1874, 1317, 3, 63, 427, 932, 261, 18, 1490, 726, 1599, 895, 895, 101, 102, 187, 1217, 494, 1724, 1756, 1974, 1002, 452, 464, 1100, 1561, 712, 945, ... 
    1310, 1879, 331, 1466, 1184, 888, 1811, 805, 367, 1298, 1278, 672, 1645, 2047, 2010, 261, 476, 49, 1245, 227, 835, 1811, 1123, 756, 427, 904, 1959, 255, 965, 1755, 89, 1417, 2005, ... 
    581, 274, 1404, 1863, 1252, 1844, 397, 1546, 710, 858, 319, 1678, 1280, 1513, 1649, 138, 1948, 1020, 1547, 1521, 1703, 321, 937, 1266, 1910, 1711, 1834, 1193, 1194, 1751, 72, 1814, ... 
    836, 75, 1529, 318, 295, 1242, 522, 664, 823, 833, 791, 1249, 342, 386, 194, 662, 1577, 480, 1517, 1419, 1688, 1696, 601, 634, 1072, 667, 1704, 1660, 1141, 539, 1394, 479, 935, 788, ... 
    1104, 2032, 1547, 2008, 481, 1083, 106, 1551, 1233, 1756, 2024, 1904, 839, 1, 1108, 426, 450, 668, 197, 1531, 1533, 1113, 693, 1705, 1132, 1962, 1829, 731, 1120, 711, 1276, 1632, ... 
    1528, 258, 1685, 52, 849, 1498, 1601, 753, 1526, 1828, 497, 266, 461, 717, 588, 1900, 106, 1214, 334, 1718, 344, 1029, 2047, 728, 97, 438, 815, 684, 471, 1918, 1400, 1971, 897, 1926, ...
    12, 1250, 1641, 478, 1910, 1564, 1693, 1175, 1624, 674, 458, 640, 1198, 1700, 595, 825, 1766, 1259, 2030, 418, 1695, 1385, 510, 975, 818, 1228, 1640, 216, 1683, 1723, 727, 881, 1172, ... 
    1436, 1521, 1553, 797, 880, 1959, 1174, 1741, 566, 1275, 1205, 1974, 176, 1026, 1069, 185, 1853, 1812, 900, 1601, 305, 1270, 534, 913, 1729, 402, 623, 990, 692, 1636, 2023, 326, 486, ... 
    1439, 769, 1995, 1992, 1319, 1762, 824, 1295, 2018, 1146, 1912, 1476, 992, 1309, 1818, 408, 810, 2032, 825, 1350, 1846, 2039, 1338, 223, 74, 1266, 1162, 1971, 1529, 1357, 1072, 533, ... 
    1971, 1107, 62, 1427, 1065, 121, 1823, 677, 471, 234, 637, 468, 1336, 136, 565, 578, 1803, 910, 1549, 1236, 1605, 234, 2005, 1738, 104, 955, 667, 1291, 472, 1188, 1236, 1229, 919, 73, ... 
    1053, 836, 222, 942, 924, 1129, 1650, 1436, 1787, 107, 450, 942, 1964, 1619, 926, 683, 122, 1518, 1038, 410, 875, 346, 1540, 755, 1929, 36, 1698, 1284, 1104, 1333, 1489, 194, 1798, 30, ... 
    603, 369, 1898, 140, 1191, 1305, 1334, 1771, 115, 1673, 1084, 1423, 436, 1113, 1439, 1959, 911, 175, 118, 1290, 1631, 1416, 708, 1940, 1066, 1954, 151, 425, 1588, 1873, 1603, 606, 311, ... 
    1737, 1608, 555, 467, 658, 1699, 1684, 1169, 1172, 586, 1432, 1631, 905, 914, 954];

h = textbook_multiplication_total(f,g);
%h_02 = mod(h,2048)
h_reduced = reduce_to_ringsize(h,512);

h_correct = textbook_multiplication(f,g);
h_correct02 = mod(h_correct,2048)

h_reduced - h_correct; % This one is all 0, so the product is correct.

%% Apply FFT: R[y]/(y^512-1) ⇒ R[y,w]/(y^16-w, w^32-1) ⇒ R[y,w]/(w^32-1)

% 1. Transform R[y]/(y^512-1) ⇒ R[y,w]/(y^16-w, w^32-1) ⇒ R[y,w]/(w^32-1)

f_1632 = [  f(1:16) zeros(1,16);  ... 
            f(17:32) zeros(1,16);  ... 
            f(33:48) zeros(1,16);  ... 
            f(49:64) zeros(1,16);  ... 
            f(65:80) zeros(1,16);  ... 
            f(81:96) zeros(1,16);  ... 
            f(97:112) zeros(1,16);  ... 
            f(113:128) zeros(1,16);  ... 
            f(129:144) zeros(1,16);  ... 
            f(145:160) zeros(1,16);  ... 
            f(161:176) zeros(1,16);  ...             
            f(177:192) zeros(1,16);  ...             
            f(193:208) zeros(1,16);  ...             
            f(209:224) zeros(1,16);  ...             
            f(225:240) zeros(1,16);  ...             
            f(241:256) zeros(1,16);  ...             
            f(257:272) zeros(1,16);  ...             
            f(273:288) zeros(1,16);  ...             
            f(289:304) zeros(1,16);  ...             
            f(305:320) zeros(1,16);  ...             
            f(321:336) zeros(1,16);  ...             
            f(337:352) zeros(1,16);  ...             
            f(353:368) zeros(1,16);  ...             
            f(369:384) zeros(1,16);  ...             
            f(385:400) zeros(1,16);  ...             
            f(401:416) zeros(1,16);  ...             
            f(417:432) zeros(1,16);  ...             
            f(433:448) zeros(1,16);  ...             
            f(449:464) zeros(1,16);  ...             
            f(465:480) zeros(1,16);  ...             
            f(481:496) zeros(1,16);  ...             
            f(497:512) zeros(1,16)  ...   
         ]

g_1632 = [  g(1:16) zeros(1,16);  ... 
            g(17:32) zeros(1,16);  ... 
            g(33:48) zeros(1,16);  ... 
            g(49:64) zeros(1,16);  ... 
            g(65:80) zeros(1,16);  ... 
            g(81:96) zeros(1,16);  ... 
            g(97:112) zeros(1,16);  ... 
            g(113:128) zeros(1,16);  ... 
            g(129:144) zeros(1,16);  ... 
            g(145:160) zeros(1,16);  ... 
            g(161:176) zeros(1,16);  ...             
            g(177:192) zeros(1,16);  ...             
            g(193:208) zeros(1,16);  ...             
            g(209:224) zeros(1,16);  ...             
            g(225:240) zeros(1,16);  ...             
            g(241:256) zeros(1,16);  ...             
            g(257:272) zeros(1,16);  ...             
            g(273:288) zeros(1,16);  ...             
            g(289:304) zeros(1,16);  ...             
            g(305:320) zeros(1,16);  ...             
            g(321:336) zeros(1,16);  ...             
            g(337:352) zeros(1,16);  ...             
            g(353:368) zeros(1,16);  ...             
            g(369:384) zeros(1,16);  ...             
            g(385:400) zeros(1,16);  ...             
            g(401:416) zeros(1,16);  ...             
            g(417:432) zeros(1,16);  ...             
            g(433:448) zeros(1,16);  ...             
            g(449:464) zeros(1,16);  ...             
            g(465:480) zeros(1,16);  ...             
            g(481:496) zeros(1,16);  ...             
            g(497:512) zeros(1,16)  ...   
         ]

% 2. We get the FFT

f_forward_fft_32 = FFT_Forward_32( ...
    f_1632(1,:),f_1632(2,:),f_1632(3,:),f_1632(4,:),f_1632(5,:),f_1632(6,:),f_1632(7,:),f_1632(8,:),f_1632(9,:),f_1632(10,:), ...
    f_1632(11,:),f_1632(12,:),f_1632(13,:),f_1632(14,:),f_1632(15,:),f_1632(16,:),f_1632(17,:),f_1632(18,:),f_1632(19,:),f_1632(20,:), ...
    f_1632(21,:),f_1632(22,:),f_1632(23,:),f_1632(24,:),f_1632(25,:),f_1632(26,:),f_1632(27,:),f_1632(28,:),f_1632(29,:),f_1632(30,:), ...
    f_1632(31,:),f_1632(32,:))

g_forward_fft_32 = FFT_Forward_32( ...
    g_1632(1,:),g_1632(2,:),g_1632(3,:),g_1632(4,:),g_1632(5,:),g_1632(6,:),g_1632(7,:),g_1632(8,:),g_1632(9,:),g_1632(10,:), ...
    g_1632(11,:),g_1632(12,:),g_1632(13,:),g_1632(14,:),g_1632(15,:),g_1632(16,:),g_1632(17,:),g_1632(18,:),g_1632(19,:),g_1632(20,:), ...
    g_1632(21,:),g_1632(22,:),g_1632(23,:),g_1632(24,:),g_1632(25,:),g_1632(26,:),g_1632(27,:),g_1632(28,:),g_1632(29,:),g_1632(30,:), ...
    g_1632(31,:),g_1632(32,:))

% 3. We multiply pointwise

h_fft_32 = zeros(32,32);

moduloTemp = 65536;

% h_fft_32(1,:) = multiplication_x32_plus1(f_forward_fft_32(1,:),g_forward_fft_32(1,:), moduloTemp);
% h_fft_32(2,:) = multiplication_x32_plus1(f_forward_fft_32(2,:),g_forward_fft_32(2,:), moduloTemp);
% h_fft_32(3,:) = multiplication_x32_plus1(f_forward_fft_32(3,:),g_forward_fft_32(3,:), moduloTemp);
% h_fft_32(4,:) = multiplication_x32_plus1(f_forward_fft_32(4,:),g_forward_fft_32(4,:), moduloTemp);
% h_fft_32(5,:) = multiplication_x32_plus1(f_forward_fft_32(5,:),g_forward_fft_32(5,:), moduloTemp);
% h_fft_32(6,:) = multiplication_x32_plus1(f_forward_fft_32(6,:),g_forward_fft_32(6,:), moduloTemp);
% h_fft_32(7,:) = multiplication_x32_plus1(f_forward_fft_32(7,:),g_forward_fft_32(7,:), moduloTemp);
% h_fft_32(8,:) = multiplication_x32_plus1(f_forward_fft_32(8,:),g_forward_fft_32(8,:), moduloTemp);
% h_fft_32(9,:) = multiplication_x32_plus1(f_forward_fft_32(9,:),g_forward_fft_32(9,:), moduloTemp);
% h_fft_32(10,:) = multiplication_x32_plus1(f_forward_fft_32(10,:),g_forward_fft_32(10,:), moduloTemp);
% 
% h_fft_32(11,:) = multiplication_x32_plus1(f_forward_fft_32(11,:),g_forward_fft_32(11,:), moduloTemp);
% h_fft_32(12,:) = multiplication_x32_plus1(f_forward_fft_32(12,:),g_forward_fft_32(12,:), moduloTemp);
% h_fft_32(13,:) = multiplication_x32_plus1(f_forward_fft_32(13,:),g_forward_fft_32(13,:), moduloTemp);
% h_fft_32(14,:) = multiplication_x32_plus1(f_forward_fft_32(14,:),g_forward_fft_32(14,:), moduloTemp);
% h_fft_32(15,:) = multiplication_x32_plus1(f_forward_fft_32(15,:),g_forward_fft_32(15,:), moduloTemp);
% h_fft_32(16,:) = multiplication_x32_plus1(f_forward_fft_32(16,:),g_forward_fft_32(16,:), moduloTemp);
% h_fft_32(17,:) = multiplication_x32_plus1(f_forward_fft_32(17,:),g_forward_fft_32(17,:), moduloTemp);
% h_fft_32(18,:) = multiplication_x32_plus1(f_forward_fft_32(18,:),g_forward_fft_32(18,:), moduloTemp);
% h_fft_32(19,:) = multiplication_x32_plus1(f_forward_fft_32(19,:),g_forward_fft_32(19,:), moduloTemp);
% h_fft_32(20,:) = multiplication_x32_plus1(f_forward_fft_32(20,:),g_forward_fft_32(20,:), moduloTemp);
% 
% h_fft_32(21,:) = multiplication_x32_plus1(f_forward_fft_32(21,:),g_forward_fft_32(21,:), moduloTemp);
% h_fft_32(22,:) = multiplication_x32_plus1(f_forward_fft_32(22,:),g_forward_fft_32(22,:), moduloTemp);
% h_fft_32(23,:) = multiplication_x32_plus1(f_forward_fft_32(23,:),g_forward_fft_32(23,:), moduloTemp);
% h_fft_32(24,:) = multiplication_x32_plus1(f_forward_fft_32(24,:),g_forward_fft_32(24,:), moduloTemp);
% h_fft_32(25,:) = multiplication_x32_plus1(f_forward_fft_32(25,:),g_forward_fft_32(25,:), moduloTemp);
% h_fft_32(26,:) = multiplication_x32_plus1(f_forward_fft_32(26,:),g_forward_fft_32(26,:), moduloTemp);
% h_fft_32(27,:) = multiplication_x32_plus1(f_forward_fft_32(27,:),g_forward_fft_32(27,:), moduloTemp);
% h_fft_32(28,:) = multiplication_x32_plus1(f_forward_fft_32(28,:),g_forward_fft_32(28,:), moduloTemp);
% h_fft_32(29,:) = multiplication_x32_plus1(f_forward_fft_32(29,:),g_forward_fft_32(29,:), moduloTemp);
% h_fft_32(30,:) = multiplication_x32_plus1(f_forward_fft_32(30,:),g_forward_fft_32(30,:), moduloTemp);
% 
% h_fft_32(31,:) = multiplication_x32_plus1(f_forward_fft_32(31,:),g_forward_fft_32(31,:), moduloTemp);
% h_fft_32(32,:) = multiplication_x32_plus1(f_forward_fft_32(32,:),g_forward_fft_32(32,:), moduloTemp);



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
)

% We now invert from (R[y,w]/(w^32-1))^32 to R[y]/(y^512-1) passing through R[y,w]/(y^16-w, w^32-1)
h_result = back_fft32inverse_y512( ...
	h_backwards_fft(1,:), h_backwards_fft(2,:), h_backwards_fft(3,:), h_backwards_fft(4,:), h_backwards_fft(5,:), h_backwards_fft(6,:), h_backwards_fft(7,:), h_backwards_fft(8,:), h_backwards_fft(9,:), h_backwards_fft(10,:),  ...
	h_backwards_fft(11,:), h_backwards_fft(12,:), h_backwards_fft(13,:), h_backwards_fft(14,:), h_backwards_fft(15,:), h_backwards_fft(16,:), h_backwards_fft(17,:), h_backwards_fft(18,:), h_backwards_fft(19,:), h_backwards_fft(20,:),  ...
	h_backwards_fft(21,:), h_backwards_fft(22,:), h_backwards_fft(23,:), h_backwards_fft(24,:), h_backwards_fft(25,:), h_backwards_fft(26,:), h_backwards_fft(27,:), h_backwards_fft(28,:), h_backwards_fft(29,:), h_backwards_fft(30,:),  ...
	h_backwards_fft(31,:), h_backwards_fft(32,:) ...
)

%% Test product

h_verification = mod(textbook_multiplication(f,g),2048)

h_result - h_verification


