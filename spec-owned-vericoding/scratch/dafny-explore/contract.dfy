// contract.dfy - Finding the minimum of two integers
// {:axiom} indicates that the method is an axiom, i.e. it is true by definition.
method {:axiom} Min(a: int, b: int) returns(m: int)
    requires true
    ensures m <= a && m <= b && (m == a || m == b)

// Helper predicate defining what a sorted array means
predicate IsSorted(a: array<int>)
    reads a
{
    forall i, j :: 0 <= i < j < a.Length ==> a[i] <= a[j]
}

method {:axiom} BinarySearch(a: array<int>, key: int) returns (index: int)
    requires IsSorted(a)
    ensures 0 <= index < a.Length ==> a[index] == key
    ensures index == -1 ==> forall k :: 0 <= k < a.Length ==> a[k] != key

predicate IsValid(a: array<int>)
    reads a
{
    forall k :: 0 <= k < a.Length ==> a[k] >= 0 || a[k] == 0 || a[k] == 1 || a[k] == 2
}

method {:axiom} DutchNationalFlag(a: array<int>) returns (b: int, c: int)
    modifies a
    requires IsValid(a)
    ensures 0 <= b <= c <= a.Length
    ensures forall k :: 0 <= k < b ==> a[k] == 0
    ensures forall k :: b <= k < c ==> a[k] == 1
    ensures forall k :: c <= k < a.Length ==> a[k] == 2
