# prolog5
Riddle
The excursion to the jungle you did for your biology class did not go as planned. You find yourself
on the run in the middle of the night from some scary creatures which you where unable to clearly
see, but they certainly looked very hungry and scary. Together with you are Adam, Brianna, and
Charlotte.
You reached an old shaky bridge you have to cross to get to safety. The bridge can only be crossed by
at most two people at once. Additionally, since it is night, you need a light to cross the bridge, but
you only have one working light left. Thus, whenever somebody crossed the bridge, somebody has to
run back with the light to enable the next to cross it. Each time two people are crossing the bridge,
they are as fast as the slowest person.
Adam is athlete and can cross the bridge in 1 minute. Brianna, thanks to her major in nutrition, is also
in good shape and can cross the bridge in 2 minutes. You as a computer science major spend your days
sitting at your computer eating pizza and, therefore, need 5 minutes to cross the bridge. Charlotte, the
biology grad student who is guiding you, was convinced that the big spider she showed you earlier is
totally harmless. As a result, her leg is swollen and crossing the bridge takes her 10 minutes.
What is the fastest way to get everybody on the other side of the bridge?
Assignment
Implement a Prolog program that allows you to determine the fastest way to cross the bridge. Your
implementation should be similar to the riddle discussed in class. You should have a predicate
move(C1, S, C2) stating that configuration C1 leads to configuration C2 if the students in S cross
the bridge. (You can use atoms or list of atoms for the different options of S.) You should also have a
predicate solution(C, L, T) stating that applying the list of moves L to the configuration C leads to
a solution (everybody crossed the bridge) in T time (in minutes).
