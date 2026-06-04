(* ::Package:: *)

(* ::Input:: *)
(*ClearAll[energies, a, c, e\[Theta]uations, constraintE\[Theta], a , a2, sol, t1,t2,t3, H, Z]*)
(*(*Formula for the 2x2 case*)*)
(*c = 0;*)
(**)
(**)
(*H = {{-1+c, a}, {-a, 1-c}};*)
(**)
(*(*Formula for the Eigenvalue*)*)
(*energies[a_,c_] := Sqrt[(1+c)^2-a^2];*)
(**)
(*(*Hermitian ansatz; some guess of a metric operator that we can later determine the entries of*)*)
(*\[Theta] = {{t1, t2}, {t2, t3}};*)
(**)
(*(*Setup constraint e\[Theta]uation*)*)
(*(*Just using transpose because entries are real*)*)
(*constraintE\[Theta] = \[Theta] . H == Transpose[H] . \[Theta];*)
(*equations = Thread[Flatten[constraintE\[Theta]]];*)
(*(*Solve the system of e\[Theta]uations*)*)
(*sol = Solve[equations, {t1, t2, t3}]*)


(* ::Input:: *)
(*{{t3->-t1-(2 t2)/a}}*)


(* ::Input:: *)
(**)
(*(*We find this matches the solution from ref[15] in the paper. Likely that the paper has a typo in its solution for this condition*)*)


(* ::Input:: *)
(*(*We define the parametrization to demand that b\[NotEqual]0\[NotEqual]a+d\[LongEqual]2Z*)*)
(*(*Since Z is an arbitrary scaling factor, we can just set it to 1; \[Xi] is any real number*)*)
(*Z := 1;*)
(*t1:= Z(1+\[Xi]);*)
(*t3:=Z(1-\[Xi]);*)
(*t2:=-Z Cos[alpha];*)
(**)
(*(*Define the new metric operator \[Theta] based off of the determined values*)*)
(*\[Theta]Determined={{t1, t2}, {t2,t3}};*)
(*\[Theta]Determined//MatrixForm*)


(* ::Input:: *)
(*(*To verify if the new metric operator is positive definite we can check the eigenvalues*)*)
(*Eigenvalues[\[Theta]Determined]*)


(* ::Input:: *)
(*{1-Sqrt[\[Xi]^2+ZCos[alpha]^2],1+Sqrt[\[Xi]^2+ZCos[alpha]^2]}*)
(*(*We find the condition that \[Xi]^2\[LessEqual]sin^2\[Alpha] satisfies \[Theta] being positive definite*)*)


(* ::Input:: *)
(*(*We can confirm that this operator works by verifying equation 2*)*)
(*a=Cos[alpha];*)
(*hTran = Transpose[H];*)
(*\[Theta]Inverse = Inverse[\[Theta]Determined];*)
(*hCheck = \[Theta]Determined . H . \[Theta]Inverse // MatrixForm*)


(* ::Input:: *)
(*(*Using the check via Mathematica we can see the operator works, and H is 'quasi-Hermitian'*)*)
(*SameQ[hTran===hCheck]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)
(**)
