(* #!/usr/bin/env wolframscript *)

expr = F[A, B];

Print[FullForm[expr]];

f = Morphism[name, A, B]

source[Morphism[_, from_, _]] := from
target[Morphism[_, _, to_]] := to


compose[
    Morphism[gName_, gSource_, gTarget_],
    Morphism[fName_, fSource_, fTarget_]
]/; fTarget === gSource


f = Morphism[name, A, B];
g = Morphism[gName, B, C];


compose[f,g]

Morphism[Composite[gName, name], A, C]
