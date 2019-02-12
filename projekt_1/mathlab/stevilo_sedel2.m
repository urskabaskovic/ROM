(* ::Package:: *)

#funkcija stevilo_sedel2 pove stevilo sedel v matriki A

function cnt = stevilo_sedel2(M)
  cnt = sum(sum(min(M, [], 2) == M & M == max(M, [], 1))) ...  
         + sum(sum(max(M, [], 2) == M & M == min(M, [], 1)));
endfunction
