var x1>=0;
var x2<=0;
var x3;

minimize z : 2*x1 + x2+(-3)*x3;

subject to c1: 3*x1 + x2+(-3)*x3 >= 2;
subject to c2:x1+(-3)*x2 = 5;
subject to c3:x1 + x2+(-1)*x3 <=7;
subject to c4:x2 >= (-3);
