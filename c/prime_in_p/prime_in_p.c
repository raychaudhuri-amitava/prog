/*
Input: integer n > 1.
1. If (n = ab for a ∈ N and b > 1), output COMPOSITE.
2. Find the smallest r such that or(n) > log2 n.
3. If 1 < (a, n) < n for some a ≤ r, output COMPOSITE.
4. If n ≤ r, output PRIME.1
5. For a = 1 to 

φ(r) log n	 do
if ((X + a)n 
= Xn + a (mod Xr − 1, n)), output COMPOSITE;
6. Output PRIME.
*/

#define PRIME 1
#define COMPOSITE 2

int isPrime(
