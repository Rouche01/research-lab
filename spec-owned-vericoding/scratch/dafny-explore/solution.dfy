// contract.dfy - Finding the minimum of two integers
method Min(a: int, b: int) returns(m: int)
    requires true
    ensures m <= a && m <= b && (m == a || m == b)
{
    if a <= b {
        return a;
    } else {
        return b;
    }
}

// Helper predicate defining what a sorted array means
predicate IsSorted(a: array<int>)
    reads a
{
    forall i, j :: 0 <= i < j < a.Length ==> a[i] <= a[j]
}

method BinarySearch(a: array<int>, key: int) returns (index: int)
    requires IsSorted(a)
    ensures 0 <= index < a.Length ==> a[index] == key
    ensures index == -1 ==> forall k :: 0 <= k < a.Length ==> a[k] != key
{
    var low := 0;
    var high := a.Length;
    while low < high
        invariant 0 <= low <= high <= a.Length
        invariant forall k :: 0 <= k < low ==> a[k] < key
        invariant forall k :: high <= k < a.Length ==> a[k] > key
        decreases high - low
    {
        var mid := low + (high - low) / 2;
        if a[mid] == key {
            return mid;
        } else if a[mid] < key {
            low := mid + 1;
        } else {
            high := mid;
        }
    }
    return -1;
}

predicate IsValid(a: array<int>)
    reads a
{
    forall k :: 0 <= k < a.Length ==> a[k] == 0 || a[k] == 1 || a[k] == 2
}

method DutchNationalFlag(a: array<int>) returns (b: int, c: int)
    modifies a
    requires IsValid(a)
    ensures 0 <= b <= c <= a.Length
    ensures forall k :: 0 <= k < b ==> a[k] == 0
    ensures forall k :: b <= k < c ==> a[k] == 1
    ensures forall k :: c <= k < a.Length ==> a[k] == 2
{
    var low := 0;
    var mid := 0;
    var high := a.Length;
    while mid < high
        invariant 0 <= low <= mid <= high <= a.Length
        invariant forall k :: 0 <= k < low ==> a[k] == 0
        invariant forall k :: low <= k < mid ==> a[k] == 1
        invariant forall k :: high <= k < a.Length ==> a[k] == 2
        invariant forall k :: mid <= k < high ==> a[k] == 0 || a[k] == 1 || a[k] == 2
        decreases high - mid
    {
        if a[mid] == 0 {
            a[mid], a[low] := a[low], a[mid];
            low := low + 1;
            mid := mid + 1;
        } else if a[mid] == 1 {
            mid := mid + 1;
        } else {
            high := high - 1;
            a[mid], a[high] := a[high], a[mid];
        }
    }
    b := low;
    c := mid;
}