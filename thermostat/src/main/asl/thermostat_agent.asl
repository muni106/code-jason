target(20).

// belief that represent the current temperature
+temperature(X) <- !regulate_temperature(X).

+!regulate_temperature(X) : target(Y) & X - Y > 0.5 <-
    .print("Temperature is ", X, ": need to cool down");
    spray_air(cold).

+!regulate_temperature(X) : target(Y) & Y - X > 0.5 <-
    .print("Temperature is ", X, ": need to warm up");
    spray_air(hot).

+!regulate_temperature(X) : target(Y) & Z = X - Y & Z >= -0.5 & Z <= 0.5 <-
    .print("Temperature is ", X, ": it's ok.").

// this is a failure plan
-!regulate_temperature(X) <-
    .print("Failed to spray air. Retrying.");
    !regulate_temperature(X).


