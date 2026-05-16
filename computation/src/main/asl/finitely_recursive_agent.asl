/* Initial beliefs and rules */

/* Initial goals */
!start(4, 10).
!start(4).

/* Plans */
+!start(N, N) : true <-
    .print("hello world ", N);
    .wait(1000);
    .print("Done").

+!start(N) : true <-
    .print("That's wrong").

+!start(N, M) : N < M <- 
    .print("hello world ", N);
    .wait(1000);
    !start(N + 1, M).

