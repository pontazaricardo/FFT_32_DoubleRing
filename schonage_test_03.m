clear; clc;
format long g;

%% R[x]/(x^677-1) ⇒ R[x]

f_11 = [1383, 105, 1105, 1098, 1833, 186, 498, 483, 124, 84, 795, 1511, 1910, 302, 563, 1225, 870, 13, 561, 163, 293, 261, ...
    88, 1118, 1451, 205, 1691, 1108, 1038, 116, 1313, 1500, 624, 62, 577, 1532, 574, 1662, 490, 875, 1935, 92, 748, 1083,  ...
    562, 1340, 492, 2011, 258, 254, 251, 1706, 1531, 1489, 5, 1916, 1397, 1470, 1161, 1884, 1704, 1551, 1969, 1265, 1541,  ...
    1015, 1257, 570, 1994, 715, 328, 1892, 543, 1822, 1820, 1380, 788, 1626, 350, 889, 315, 1636, 529, 265, 170, 428, 1563,  ...
    175, 1587, 1763, 1608, 789, 1979, 1058, 1210, 125, 1803, 1050, 1919, 760, 248, 539, 1461, 1870, 664, 312, 633, 573, 1468,  ...
    846, 1530, 108, 684, 1569, 426, 597, 1470, 437, 1851, 1884, 1846, 691, 1250, 996, 847, 1301, 765, 1614, 520, 2004, 1418,  ...
    1620, 1690, 1724, 270, 1960, 1708, 499, 1868, 1581, 1289, 997, 196, 1455, 1699, 1663, 1965, 1910, 1246, 1052, 1098, 1584,  ...
    1568, 1669, 1531, 7, 2036, 779, 1568, 902, 1598, 241, 1753, 1075, 1689, 419, 1044, 1497, 2039, 1952, 272, 246, 916, 446,  ...
    1212, 1656, 1865, 230, 2000, 474, 1386, 332, 849, 947, 900, 314, 763, 1433, 1586, 68, 1179, 1513, 1573, 520, 1001, 1118,  ...
    1888, 722, 1232, 1530, 472, 1256, 358, 868, 473, 647, 613, 602, 1855, 1664, 68, 1148, 137, 599, 1491, 1453, 1926, 1152,  ...
    1303, 133, 908, 1382, 892, 1660, 1058, 1508, 2010, 1035, 431, 1468, 1716, 1839, 1535, 1831, 915, 519, 696, 1297, 1837,  ...
    239, 137, 1974, 309, 199, 548, 615, 493, 1810, 1349, 770, 1509, 2040, 1143, 1745, 150, 1780, 1685, 386, 620, 686, 205,  ...
    1384, 1708, 678, 692, 1226, 690, 311, 459, 719, 1993, 896, 110, 1576, 1868, 1898, 1517, 723, 332, 139, 802, 1178, 536, 1278,  ...
    1497, 1605, 401, 1025, 1737, 1241, 769, 1583, 277, 1415, 1660, 1634, 873, 1906, 205, 357, 1086, 1097, 369, 1998, 629, 1615,  ...
    234, 1636, 1409, 1121, 510, 1435, 1471, 745, 382, 1330, 1017, 908, 455, 1444, 2, 434, 114, 748, 1025, 496, 528, 871, 1177, 1627, ... 
    671, 980, 1290, 1027, 700, 781, 1435, 939, 1237, 1025, 1509, 1750, 1405, 1989, 142, 46, 431, 454, 867, 1418, 1904, 222, 1366,  ...
    794, 801, 769, 1293, 253, 1046, 1185, 1763, 2002, 210, 1867, 1889, 597, 1388, 989, 1980, 1261, 1555, 997, 455, 1451, 1444, 641,  ...
    1820, 1306, 1003, 1060, 315, 542, 428, 362, 1267, 1094, 1607, 1574, 1293, 1515, 1567, 1850, 704, 1322, 186, 504, 1991, 158, 529,  ...
    731, 96, 522, 1869, 1717, 1027, 1805, 1293, 1885, 667, 1656, 1493, 1356, 1158, 1807, 2034, 1436, 269, 1786, 2008, 1205, 592, 1533,  ...
    521, 1834, 482, 2043, 1555, 1364, 817, 306, 1614, 886, 1653, 1974, 33, 552, 46, 463, 1408, 1756, 1692, 1817, 1054, 1866, 209, 627,  ...
    1866, 1659, 90, 1037, 668, 749, 1627, 1282, 1461, 829, 694, 258, 1732, 1572, 200, 1717, 1664, 1490, 865, 1878, 22, 200, 1791, 589,  ...
    424, 263, 2017, 819, 597, 1595, 494, 815, 544, 1865, 738, 895, 227, 361, 529, 1176, 321, 24, 1960, 1992, 1186, 1306, 756, 1790, 331,  ...
    662, 1256, 1829, 604, 1454, 1093, 39, 2021, 1705, 906, 394, 1141, 1724, 1774, 1151, 1026, 1127, 1323, 1718, 1051, 1013, 1707, 1511,  ...
    1115, 1566, 770, 17, 1613, 1761, 1159, 1396, 630, 372, 1384, 1832, 1167, 484, 1849, 458, 1116, 889, 1937, 1750, 599, 793, 280, 1897, 617,  ...
    815, 264, 340, 1397, 209, 773, 67, 644, 1728, 1863, 2035, 845, 125, 921, 2035, 196, 1491, 1402, 1891, 609, 1949, 719, 1223, 925, 1896, 285,  ...
    1154, 615, 208, 1254, 1027, 998, 1910, 255, 1103, 1805, 198, 973, 1840, 277, 590, 1524, 1693, 977, 1629, 50, 1634, 1079, 1401, 1202, 150,  ...
    1461, 1436, 1770, 237, 870, 561, 525, 438, 61, 1685, 628, 1159, 720, 994, 969, 833, 1493, 769, 1451, 1214, 1835, 619, 1982, 1814, 1077,  ...
    106, 675, 1365, 1778, 1269, 1455, 1082, 276, 67, 810, 2000, 1009, 909, 1630, 939, 79, 317, 263, 101, 1993, 693, 1424, 253, 1579, 1380,  ...
    1602, 939, 1905, 1506, 476, 98, 1443, 1309, 49, 1700, 732, 1395, 73, 1809, 1968, 1994, 427, 37, 685, 1771, 1941, 1716, 237, 995, 339,  ...
    281, 993, 1180, 1276, 671, 35, 671, 1502];

% This is g on Z/2048Z (2047 = -1)
g_11 = [1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 2047, 0, 2047, 1, 1, 0, 0, 0, 1, 1, 0, 2047, 1, 2047, 0, 1, 2047, 0, 2047, 1, 0, 0, 2047, 0, 2047, 0, 0, 0, 2047,   ...
    2047, 0, 2047, 0, 2047, 1, 0, 0, 1, 0, 2047, 1, 1, 0, 2047, 0, 2047, 2047, 1, 2047, 2047, 0, 1, 2047, 2047, 1, 1, 0, 2047, 2047, 2047, 0, 2047, 2047,   ...
    0, 2047, 0, 2047, 1, 0, 2047, 1, 2047, 2047, 1, 1, 1, 2047, 0, 1, 1, 2047, 1, 2047, 1, 1, 1, 1, 2047, 0, 0, 1, 1, 2047, 1, 1, 0, 0, 0, 0, 2047, 2047,   ...
    2047, 0, 2047, 1, 2047, 2047, 0, 1, 2047, 0, 0, 2047, 1, 1, 1, 0, 2047, 2047, 0, 2047, 1, 2047, 0, 2047, 0, 2047, 1, 2047, 2047, 1, 2047, 0, 2047, 1, 0,   ...
    0, 1, 2047, 0, 2047, 0, 1, 0, 0, 2047, 1, 0, 2047, 2047, 0, 0, 1, 1, 2047, 1, 2047, 0, 2047, 1, 1, 2047, 1, 2047, 0, 2047, 0, 1, 2047, 2047, 2047, 2047,   ...
    0, 1, 1, 1, 2047, 2047, 1, 1, 1, 1, 1, 1, 2047, 0, 1, 2047, 1, 0, 1, 0, 0, 0, 2047, 1, 2047, 0, 0, 0, 0, 2047, 1, 1, 2047, 1, 0, 1, 2047, 0, 0, 0, 2047,   ...
    1, 2047, 2047, 0, 1, 2047, 0, 2047, 0, 2047, 2047, 2047, 0, 2047, 0, 1, 1, 1, 2047, 0, 1, 2047, 0, 1, 2047, 0, 2047, 0, 0, 2047, 0, 0, 0, 0, 1, 2047, 2047,   ...
    2047, 1, 0, 0, 2047, 1, 1, 1, 0, 1, 1, 1, 1, 2047, 0, 1, 2047, 2047, 0, 1, 1, 1, 0, 1, 2047, 1, 0, 0, 2047, 2047, 1, 0, 1, 0, 1, 1, 0, 2047, 1, 0, 1, 1, 1,   ...
    1, 1, 1, 2047, 1, 0, 2047, 2047, 1, 1, 2047, 2047, 2047, 1, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 2047, 0, 0, 2047, 0, 0, 1, 2047, 1, 1, 2047, 2047,   ...
    1, 0, 0, 0, 2047, 2047, 0, 2047, 2047, 2047, 0, 2047, 2047, 1, 0, 0, 2047, 2047, 0, 0, 0, 0, 1, 1, 2047, 2047, 2047, 2047, 2047, 0, 0, 0, 2047, 0, 0, 1, 0,   ...
    2047, 2047, 1, 2047, 1, 2047, 0, 2047, 0, 2047, 0, 1, 0, 0, 1, 2047, 0, 1, 2047, 0, 0, 2047, 0, 2047, 1, 1, 2047, 0, 2047, 0, 0, 1, 0, 2047, 2047, 2047, 0,   ...
    1, 0, 1, 0, 1, 2047, 1, 1, 2047, 2047, 0, 1, 1, 0, 0, 2047, 0, 2047, 2047, 2047, 0, 1, 0, 1, 0, 1, 2047, 1, 1, 1, 2047, 0, 2047, 0, 1, 0, 1, 1, 0, 1, 1, 0,   ...
    1, 0, 0, 2047, 1, 0, 1, 2047, 1, 2047, 2047, 1, 0, 0, 1, 0, 0, 2047, 1, 0, 0, 1, 2047, 2047, 1, 1, 1, 2047, 0, 2047, 1, 1, 2047, 0, 1, 1, 2047, 1, 1, 2047,   ...
    1, 1, 2047, 0, 2047, 1, 1, 1, 2047, 0, 2047, 0, 0, 1, 2047, 2047, 1, 2047, 2047, 2047, 0, 1, 1, 2047, 2047, 2047, 0, 0, 2047, 0, 1, 2047, 1, 2047, 0, 1, 0,   ...
    2047, 0, 1, 1, 0, 2047, 1, 0, 0, 2047, 2047, 2047, 1, 2047, 0, 1, 1, 1, 0, 2047, 1, 2047, 1, 2047, 0, 1, 2047, 0, 2047, 2047, 1, 0, 2047, 1, 2047, 2047, 2047,   ...
    2047, 0, 2047, 1, 2047, 0, 0, 0, 2047, 2047, 0, 0, 2047, 2047, 1, 1, 0, 0, 1, 2047, 1, 1, 1, 0, 2047, 0, 1, 1, 0, 2047, 0, 1, 0, 0, 0, 1, 0, 2047, 0, 2047,   ...
    2047, 2047, 1, 1, 1, 0, 2047, 2047, 0, 2047, 1, 0, 1, 1, 2047, 1, 1, 0, 1, 2047, 0, 2047, 1, 0, 0, 2047, 1, 2047, 1, 2047, 1, 2047, 0, 0, 2047, 1, 0, 2047,   ...
    2047, 0, 0, 2047, 2047, 2047, 0, 0, 2047, 2047, 2047, 0, 2047, 2047, 0, 2047, 2047, 2047, 2047, 2047, 1, 2047, 0, 1, 0];


%% R[x] ⇒ R[x]/(x^1536-1)

% We must convert the arrays to dim 1536

f_11_1536 = forward_expandDimension(f_11);
g_11_1536 = forward_expandDimension(g_11);

%TEST SECTION
f_11_outTest = back_expandDimension(f_11_1536);
g_11_outTest = back_expandDimension(g_11_1536);

disp('Test of forward_back_expandDimension')
[isequal(f_11,f_11_outTest), isequal(g_11,g_11_outTest)]


%% R[x]/(x^1536-1) ⇒  R[y,z]/(y^512-1,z^3-1) ⇒ (R[y]/(y^512-1))^3

f_split01 = forward_split01(f_11_1536);
g_split01 = forward_split01(g_11_1536);


%TEST SECTION
f_11_1536_outTest = back_split01(f_split01);
g_11_1536_outTest = back_split01(g_split01);

disp('Test of forward_back_expandDimension')
[isequal(f_11_1536,f_11_1536_outTest), isequal(g_11_1536,g_11_1536_outTest)]

% At this point, we have two polynomials of the form AX^2+BX+C. We can use
% Karatsuba to make it slightly faster
% TODO: Check if karatsuba can be used, right now we are using textbook +
% reduction as we must reduce in the inner variable first (y, then z).

% MULTIPLY AND REDUCE

coeff00_00 = textbook_multiplication(f_split01(0+1,:),g_split01(0+1,:));
coeff00_01 = textbook_multiplication(f_split01(1+1,:),g_split01(2+1,:));
coeff00_02 = textbook_multiplication(f_split01(2+1,:),g_split01(1+1,:));

coeff00_total = mod(coeff00_00+coeff00_01+coeff00_02,2048);

coeff01_00 = textbook_multiplication(f_split01(0+1,:),g_split01(1+1,:));
coeff01_01 = textbook_multiplication(f_split01(1+1,:),g_split01(0+1,:));
coeff01_02 = textbook_multiplication(f_split01(2+1,:),g_split01(2+1,:));

coeff01_total = mod(coeff01_00+coeff01_01+coeff01_02,2048);

coeff02_00 = textbook_multiplication(f_split01(0+1,:),g_split01(2+1,:));
coeff02_01 = textbook_multiplication(f_split01(1+1,:),g_split01(1+1,:));
coeff02_02 = textbook_multiplication(f_split01(2+1,:),g_split01(0+1,:));

coeff02_total = mod(coeff02_00+coeff02_01+coeff02_02,2048);

h_goodRotated = [coeff00_total, coeff01_total, coeff02_total] %This has the correct values, but rotated as per Good's rotation, we must de-rotate

h_goodRotated_03_512=[h_goodRotated(1,[1:512]); h_goodRotated(1,[513:1024]); h_goodRotated(1,[1025:1536])]; %Convert to 3*512 matrix

h_final_afterGood = back_split01(h_goodRotated_03_512)


%TEST
% h_final should be equal to text_book + reduce_ring
% h_1536_afterCRT_trimmed - mod(textbook_multiplication_total(f_11,g_11),2048)

h_verification = mod(textbook_multiplication_total(f_11,g_11),2048)

h_final_afterGood(1,[1:1353]) - h_verification

















