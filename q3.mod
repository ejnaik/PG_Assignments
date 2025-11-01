set FOODS;
set NUTRIENTS;

param cost {FOODS};
param nut_val {FOODS, NUTRIENTS};
param nut_req_min {NUTRIENTS};
param nut_req_max {NUTRIENTS};

var amt {FOODS} >= 0;

minimize Total_Cost:
    sum {f in FOODS} amt[f] * cost[f];

subject to Nutrition_Min {n in NUTRIENTS}:
    sum {f in FOODS} nut_val[f,n] * amt[f] >= nut_req_min[n];

subject to Nutrition_Max {n in NUTRIENTS}:
    sum {f in FOODS} nut_val[f,n] * amt[f] <= nut_req_max[n];
