/* TODO */

turn(me).
other(ping).

/* Initial goals */

// !send_pong.

/* Plans */

+ball[source(Sender)] : turn(other) & other(Sender) <-
    -ball[source(Sender)];
    .print("Received ball from ", Sender);
    .send(Sender, tell, ball);
    .print("Sent ball back to ", Sender);
    .print("Done").

// +!send_ping : turn(me) & other(Receiver) <-
//   -+turn(other);
//   !waitMessage(ball, Receiver).

// +ball[source(Sender)] : turn(other) & other(Sender) <-
//   -+turn(me);
//   -ball[source(Sender)];
//   .print("Received ball from ", Sender);
//   .print("Done").

// +! waitMessage(Message, Receiver) <-
//   .print("Waiting for ", Message, " fror ", Receiver);
//   .wait(Receiver, tell, Message);
//   !sendMessageTo(Message, Receiver).



// +!sendMessageTo(Message, Receiver) <-
//   .print("Sending ", Message, " to ", Receiver);
//   .acheve()
//   .send(Receiver, tell, Message).

