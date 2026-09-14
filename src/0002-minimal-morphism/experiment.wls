f = Morphism[fname, A, B];



Print[f];
Print[FullForm[f]];
Print[Head[f]];
Print[List @@ f];

source[Morphism[_, from_, _]] := from;
target[Morphism[_, _, to_]] := to;

Print[source[f]];
Print[target[f]];

g = Morphism[gName, B, C];

Print[g]; 

compose[
    Morphism[gName_, gSource_, gTarget_],
    Morphism[iName_, iSource_, iTarget_]
] /; iTarget === iSource :=
	Morphism[gName, gSource, gTarget];




compose[
    Morphism[gName_, gSource_, gTarget_],
    Morphism[fName_, fSource_, fTarget_]
] /; fTarget === gSource :=
    Morphism[Composite[gName, fName], fSource, gTarget];

h = compose[g, f];

Print[h];


Print["Now we are  experimenting with the wrong one the output must not resolve the compose just outputs it as it is"]

nf = Morphism[nfName, A, B]
ng = Morphism[ngName, C, D]

k = compose[ng,nf]

Print[k];



Print["Morphism Identity"]
identity[
	Morphism[iName_, iSource_, iSource_]
]/; iSource === iSource :=
	Morphism[Identity[iName], iSource,iSource];

idA= Morphism[aName, A,A]

Print[idA]


b = Morphism[Identity[aName], A,B]

Print[b]








idH = compose[ f, idA]
Print["Compose Identity"]
Print[idH]
