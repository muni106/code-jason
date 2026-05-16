/* Initial beliefs and rules */
count(0).

/* Initial goals */
!start.

/* Plans */
+!start <-
    while(count(X) & X >= 0) {
        .print("value ", X);
        .wait(1000);
        // atomic utpdate to increase X
        -+count(X + 1)
    }.