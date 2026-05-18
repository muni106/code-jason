/* TODO */

// beliefs
turn(other).
other(ping).


// goals

    // no initial goal: purely reactive


// plans
+ball[source(Sender)] : turn(other) & other(Sender) <-
    .wait(1000);
    -+turn(me);
    -ball[source(Sender)];
    .print("Received the ball from: ", Sender);
    !send_pong.

+!send_pong : turn(me) & other(Receiver) <-
    -+turn(other);
    !sendMessageTo(ball, Receiver).


+!sendMessageTo(Message, Receiver) <-
  .print("Sending ", Message, " to ", Receiver);
  .send(Receiver, tell, Message).



