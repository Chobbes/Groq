Require Import Group.
Require Import ZArith.

Open Scope Z_scope.

Include BinIntDef.Z.

(* Make a Group consisting of all integers under addition, with 0 as the identity element *)
Instance ZAdd : Group (fun x y:Z => x + y)  opp 1.
Proof.
  split.
  * symmetry. Zplus_assoc_reverse.