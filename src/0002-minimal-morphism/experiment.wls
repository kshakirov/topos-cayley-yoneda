f = Morphism[name, A, B];

Print[f];
Print[FullForm[f]];
Print[Head[f]];
Print[List @@ f];

source[Morphism[_, from_, _]] := from;
target[Morphism[_, _, to_]] := to;

Print[source[f]];
Print[target[f]];

g = Morphism[gName, B, C];

compose[
    Morphism[gName_, gSource_, gTarget_],
    Morphism[fName_, fSource_, fTarget_]
] /; fTarget === gSource :=
    Morphism[Composite[gName, fName], fSource, gTarget];

h = compose[g, f];

Print[h];
