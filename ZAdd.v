Require Import Group.
Require Import ZArith.

Open Scope Z_scope.

Include BinIntDef.Z.

(* Make a Group consisting of all integers under addition, with 0 as the identity element *)
Instance ZAdd : Group Zplus opp 0.
Proof.
  split.
  * apply Zplus_assoc.
  * intros x.
    rewrite Z.add_opp_l.
    apply Zminus_diag.
  * intros x.
    rewrite Z.add_opp_r.
    apply Zminus_diag.
  * reflexivity.
  * apply Zplus_0_r.
Qed.
