// name: InStreamNominalThreshold
// keywords: stream instream connector outside
// status: correct
// cflags: -d=newInst
//
// Checks that the nominal value of a flow is used for the flow rate threshold.
//

connector S
  Real r;
  flow Real f;
  stream Real s;
end S;

model A
  S s1(f(nominal = 1e-3));
  S s2(f(nominal = 2000));
  S s3;
  Real instream_s1;
  Real instream_s2;
  Real instream_s3;
equation
  connect(s1, s2);
  connect(s2, s3);
  instream_s1 = inStream(s1.s);
  instream_s2 = inStream(s2.s);
end A;

model InStreamNominalThreshold
  A a;
  Real instream_a_s1;
  Real instream_a_s2;
equation
  instream_a_s1 = inStream(a.s1.s);
  instream_a_s2 = inStream(a.s2.s);
end InStreamNominalThreshold;

// Result:
// class InStreamNominalThreshold
//   Real a.s1.r;
//   Real a.s1.f(nominal = 0.001);
//   Real a.s1.s;
//   Real a.s2.r;
//   Real a.s2.f(nominal = 2000.0);
//   Real a.s2.s;
//   Real a.s3.r;
//   Real a.s3.f;
//   Real a.s3.s;
//   Real a.instream_s1;
//   Real a.instream_s2;
//   Real a.instream_s3;
//   Real instream_a_s1;
//   Real instream_a_s2;
// equation
//   a.s2.r = a.s3.r;
//   a.s2.r = a.s1.r;
//   (-a.s2.f) + (-a.s3.f) + (-a.s1.f) = 0.0;
//   a.s1.s = (max(a.s3.f, 1e-07) * a.s3.s + max(a.s2.f, 1e-07 * 2000.0) * a.s2.s) / (max(a.s3.f, 1e-07) + max(a.s2.f, 1e-07 * 2000.0));
//   a.s3.s = (max(a.s1.f, 1e-07 * 0.001) * a.s1.s + max(a.s2.f, 1e-07 * 2000.0) * a.s2.s) / (max(a.s1.f, 1e-07 * 0.001) + max(a.s2.f, 1e-07 * 2000.0));
//   a.s2.s = (max(a.s1.f, 1e-07 * 0.001) * a.s1.s + max(a.s3.f, 1e-07) * a.s3.s) / (max(a.s1.f, 1e-07 * 0.001) + max(a.s3.f, 1e-07));
//   a.s1.f = 0.0;
//   a.s2.f = 0.0;
//   a.s3.f = 0.0;
//   a.instream_s1 = a.s1.s;
//   a.instream_s2 = a.s2.s;
//   instream_a_s1 = a.s1.s;
//   instream_a_s2 = a.s2.s;
// end InStreamNominalThreshold;
// endResult
