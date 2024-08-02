----------------------------- MODULE HelloWorld -----------------------------

EXTENDS TLC

(*

--algorithm HelloWorld {
    variables greeting = "Hello, World!";
    {
        print greeting
    }
}

*)
\* BEGIN TRANSLATION (chksum(pcal) = "5dfec12d" /\ chksum(tla) = "557b2231")
VARIABLES greeting, pc

vars == << greeting, pc >>

Init == (* Global variables *)
        /\ greeting = "Hello, World!"
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ PrintT(greeting)
         /\ pc' = "Done"
         /\ UNCHANGED greeting

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Lbl_1
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION 

=============================================================================
\* Modification History
\* Last modified Fri Aug 02 10:34:23 EDT 2024 by rbolh
\* Created Fri Aug 02 10:19:21 EDT 2024 by rbolh
