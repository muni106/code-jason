/* Initial beliefs and rules */

/* Initial goals */

!start.

!fuck.

/* Plans */

+!start : true <- 
	.print("hello world").

+!fuck : true <-
	.print("fuck you").