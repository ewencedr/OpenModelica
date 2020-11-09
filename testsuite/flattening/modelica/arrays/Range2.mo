// name:     Range2
// keywords: array bug1825
// status:   correct
// cflags: -d=-newInst
//
// Some tests of range expressions with tricky limits due to floating point
// rounding errors.
//

class Range2
  Real r1[25] = -2.4 : 0.2 : 2.4;
  Real r2[25] = 2.4 : -0.2 : -2.4;
  Real r3[5] = 0.0001 : 0.0001 : 0.0005;
  Real r4[5] = -0.0002 : 0.0001 : 0.0002;
  Real r5[5] = 0.0005 : -0.0001 : 0.0001;
end Range2;

// Result:
// class Range2
//   Real r1[1];
//   Real r1[2];
//   Real r1[3];
//   Real r1[4];
//   Real r1[5];
//   Real r1[6];
//   Real r1[7];
//   Real r1[8];
//   Real r1[9];
//   Real r1[10];
//   Real r1[11];
//   Real r1[12];
//   Real r1[13];
//   Real r1[14];
//   Real r1[15];
//   Real r1[16];
//   Real r1[17];
//   Real r1[18];
//   Real r1[19];
//   Real r1[20];
//   Real r1[21];
//   Real r1[22];
//   Real r1[23];
//   Real r1[24];
//   Real r1[25];
//   Real r2[1];
//   Real r2[2];
//   Real r2[3];
//   Real r2[4];
//   Real r2[5];
//   Real r2[6];
//   Real r2[7];
//   Real r2[8];
//   Real r2[9];
//   Real r2[10];
//   Real r2[11];
//   Real r2[12];
//   Real r2[13];
//   Real r2[14];
//   Real r2[15];
//   Real r2[16];
//   Real r2[17];
//   Real r2[18];
//   Real r2[19];
//   Real r2[20];
//   Real r2[21];
//   Real r2[22];
//   Real r2[23];
//   Real r2[24];
//   Real r2[25];
//   Real r3[1];
//   Real r3[2];
//   Real r3[3];
//   Real r3[4];
//   Real r3[5];
//   Real r4[1];
//   Real r4[2];
//   Real r4[3];
//   Real r4[4];
//   Real r4[5];
//   Real r5[1];
//   Real r5[2];
//   Real r5[3];
//   Real r5[4];
//   Real r5[5];
// equation
//   r1 = {-2.4, -2.1999999999999997, -2.0, -1.7999999999999998, -1.5999999999999999, -1.4, -1.1999999999999997, -0.9999999999999998, -0.7999999999999998, -0.5999999999999999, -0.3999999999999999, -0.19999999999999973, 0.0000000000000004440892098500626, 0.20000000000000018, 0.40000000000000036, 0.6000000000000001, 0.8000000000000003, 1.0000000000000004, 1.2000000000000002, 1.4000000000000004, 1.6, 1.8000000000000003, 2.0000000000000004, 2.2000000000000006, 2.400000000000001};
//   r2 = {2.4, 2.1999999999999997, 2.0, 1.7999999999999998, 1.5999999999999999, 1.4, 1.1999999999999997, 0.9999999999999998, 0.7999999999999998, 0.5999999999999999, 0.3999999999999999, 0.19999999999999973, -0.0000000000000004440892098500626, -0.20000000000000018, -0.40000000000000036, -0.6000000000000001, -0.8000000000000003, -1.0000000000000004, -1.2000000000000002, -1.4000000000000004, -1.6, -1.8000000000000003, -2.0000000000000004, -2.2000000000000006, -2.400000000000001};
//   r3 = {0.0001, 0.0002, 0.00030000000000000003, 0.0004, 0.0005};
//   r4 = {-0.0002, -0.0001, 0.0, 0.00010000000000000002, 0.0002};
//   r5 = {0.0005, 0.0004, 0.00030000000000000003, 0.00019999999999999998, 0.00009999999999999999};
// end Range2;
// endResult
