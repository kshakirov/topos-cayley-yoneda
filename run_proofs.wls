#!/usr/bin/env wolframscript
(* ::Package:: *)

(* 1. Define Category ZCat *)
zCat = {"OnlyThis"};
zCompose[f_, g_] := f + g;
zId = 0;

(* 2. Define Cayley Functor *)
cayleyFunctor[n_] := Function[x, x + n];

(* 3. Strict Symbolic Proof *)
Clear[f, g, x];

leftSide = cayleyFunctor[zCompose[f, g]][x];
rightSide = cayleyFunctor[g][cayleyFunctor[f][x]];

(* Output the results *)
Print["=== Topos Cayley-Yoneda Proof ==="];
Print["Left Side (Image of Composition): ", leftSide];
Print["Right Side (Composition of Images): ", rightSide];
Print["Is Functorial? -> ", leftSide === rightSide];
