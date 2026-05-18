/* Exercise */

/* Initial beliefs and rules */

/* Initial Goals */
!start(1, 10).


/* Plans */

+!start(N, M) : N > M <-
    .print("End").

+!start(N, M) : N <= M <-
    !on_step(N);
    .wait(1000);
    !start(N + 1, M).

+!on_step(N) : N mod 2 = 0<-
    E = "even";
    .print("hello world ", N, " ", E).

+!on_step(N) : N mod 2 > 0 <-
    E = "odd";
    .print("hello world ", N, " ", E).
    
    

