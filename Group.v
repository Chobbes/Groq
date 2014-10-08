Class Group {A : Type} (dot : A -> A -> A) (inverse : A -> A) (unit : A) : Prop := {
  (* Associativity of group multiplication *)
  dot_assoc : forall x y z : A, dot x (dot y z) = dot (dot x y) z;

  (* Each element of a group has an inverse *)
  inverse_left : forall x : A, dot (inverse x) x = unit;
  inverse_right : forall x : A, dot x (inverse x) = unit;

  (* The group has a unit (identity) element *)
  unit_left : forall x : A, dot unit x = x;
  unit_right : forall x : A, dot x unit = x
}.