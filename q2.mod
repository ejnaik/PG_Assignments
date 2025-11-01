set ZONE;
set RD;

param pair{ZONE, RD};
param K{RD};
param c{RD};

var y{RD} binary;
var x{ZONE, RD} binary;

minimize cost:
	sum{j in RD} c[j]*y[j];
	
subject to c1{i in ZONE}:
	sum{j in RD} x[i,j] >=1;
	
subject to c2{j in RD}:
	sum{i in ZONE} x[i,j] <= K[j]*y[j];

subject to c3:
	sum{i in ZONE, j in RD} x[i,j] >=1;
subject to c4{i in ZONE, j in RD}:
	x[i, j]<= pair[i,j];
