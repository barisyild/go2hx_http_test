package stdgo.slices;
/**
    * Package slices defines various functions useful with slices of any type.
**/
class Slices {
    /**
        * Equal reports whether two slices are equal: the same length and all
        * elements equal. If the lengths are different, Equal returns false.
        * Otherwise, the elements are compared in increasing index order, and the
        * comparison stops at the first unequal pair.
        * Floating point NaNs are not considered equal.
    **/
    static public inline extern overload function equal(_s1:stdgo.Slice<stdgo.Comparable>, _s2:stdgo.Slice<stdgo.Comparable>):Bool return stdgo._internal.slices.Slices_equal.equal(_s1, _s2);
    /**
        * EqualFunc reports whether two slices are equal using an equality
        * function on each pair of elements. If the lengths are different,
        * EqualFunc returns false. Otherwise, the elements are compared in
        * increasing index order, and the comparison stops at the first index
        * for which eq returns false.
    **/
    static public inline extern overload function equalFunc<E1, E2>(_s1:stdgo.Slice<E1>, _s2:stdgo.Slice<E2>, _eq:(E1, E2) -> Bool):Bool return stdgo._internal.slices.Slices_equalfunc.equalFunc(_s1, _s2, _eq);
    /**
        * Compare compares the elements of s1 and s2, using [cmp.Compare] on each pair
        * of elements. The elements are compared sequentially, starting at index 0,
        * until one element is not equal to the other.
        * The result of comparing the first non-matching elements is returned.
        * If both slices are equal until one of them ends, the shorter slice is
        * considered less than the longer one.
        * The result is 0 if s1 == s2, -1 if s1 < s2, and +1 if s1 > s2.
    **/
    static public inline extern overload function compare(_s1:stdgo.Slice<stdgo.GoInt8>, _s2:stdgo.Slice<stdgo.GoInt8>):stdgo.GoInt return stdgo._internal.slices.Slices_compare.compare(_s1, _s2);
    /**
        * Compare compares the elements of s1 and s2, using [cmp.Compare] on each pair
        * of elements. The elements are compared sequentially, starting at index 0,
        * until one element is not equal to the other.
        * The result of comparing the first non-matching elements is returned.
        * If both slices are equal until one of them ends, the shorter slice is
        * considered less than the longer one.
        * The result is 0 if s1 == s2, -1 if s1 < s2, and +1 if s1 > s2.
    **/
    static public inline extern overload function compare(_s1:stdgo.Slice<stdgo.GoInt16>, _s2:stdgo.Slice<stdgo.GoInt16>):stdgo.GoInt return stdgo._internal.slices.Slices_compare.compare(_s1, _s2);
    /**
        * Compare compares the elements of s1 and s2, using [cmp.Compare] on each pair
        * of elements. The elements are compared sequentially, starting at index 0,
        * until one element is not equal to the other.
        * The result of comparing the first non-matching elements is returned.
        * If both slices are equal until one of them ends, the shorter slice is
        * considered less than the longer one.
        * The result is 0 if s1 == s2, -1 if s1 < s2, and +1 if s1 > s2.
    **/
    static public inline extern overload function compare(_s1:stdgo.Slice<stdgo.GoInt32>, _s2:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt return stdgo._internal.slices.Slices_compare.compare(_s1, _s2);
    /**
        * Compare compares the elements of s1 and s2, using [cmp.Compare] on each pair
        * of elements. The elements are compared sequentially, starting at index 0,
        * until one element is not equal to the other.
        * The result of comparing the first non-matching elements is returned.
        * If both slices are equal until one of them ends, the shorter slice is
        * considered less than the longer one.
        * The result is 0 if s1 == s2, -1 if s1 < s2, and +1 if s1 > s2.
    **/
    static public inline extern overload function compare(_s1:stdgo.Slice<stdgo.GoInt64>, _s2:stdgo.Slice<stdgo.GoInt64>):stdgo.GoInt return stdgo._internal.slices.Slices_compare.compare(_s1, _s2);
    /**
        * Compare compares the elements of s1 and s2, using [cmp.Compare] on each pair
        * of elements. The elements are compared sequentially, starting at index 0,
        * until one element is not equal to the other.
        * The result of comparing the first non-matching elements is returned.
        * If both slices are equal until one of them ends, the shorter slice is
        * considered less than the longer one.
        * The result is 0 if s1 == s2, -1 if s1 < s2, and +1 if s1 > s2.
    **/
    static public inline extern overload function compare(_s1:stdgo.Slice<stdgo.GoUInt8>, _s2:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return stdgo._internal.slices.Slices_compare.compare(_s1, _s2);
    /**
        * Compare compares the elements of s1 and s2, using [cmp.Compare] on each pair
        * of elements. The elements are compared sequentially, starting at index 0,
        * until one element is not equal to the other.
        * The result of comparing the first non-matching elements is returned.
        * If both slices are equal until one of them ends, the shorter slice is
        * considered less than the longer one.
        * The result is 0 if s1 == s2, -1 if s1 < s2, and +1 if s1 > s2.
    **/
    static public inline extern overload function compare(_s1:stdgo.Slice<stdgo.GoUInt16>, _s2:stdgo.Slice<stdgo.GoUInt16>):stdgo.GoInt return stdgo._internal.slices.Slices_compare.compare(_s1, _s2);
    /**
        * Compare compares the elements of s1 and s2, using [cmp.Compare] on each pair
        * of elements. The elements are compared sequentially, starting at index 0,
        * until one element is not equal to the other.
        * The result of comparing the first non-matching elements is returned.
        * If both slices are equal until one of them ends, the shorter slice is
        * considered less than the longer one.
        * The result is 0 if s1 == s2, -1 if s1 < s2, and +1 if s1 > s2.
    **/
    static public inline extern overload function compare(_s1:stdgo.Slice<stdgo.GoUInt32>, _s2:stdgo.Slice<stdgo.GoUInt32>):stdgo.GoInt return stdgo._internal.slices.Slices_compare.compare(_s1, _s2);
    /**
        * Compare compares the elements of s1 and s2, using [cmp.Compare] on each pair
        * of elements. The elements are compared sequentially, starting at index 0,
        * until one element is not equal to the other.
        * The result of comparing the first non-matching elements is returned.
        * If both slices are equal until one of them ends, the shorter slice is
        * considered less than the longer one.
        * The result is 0 if s1 == s2, -1 if s1 < s2, and +1 if s1 > s2.
    **/
    static public inline extern overload function compare(_s1:stdgo.Slice<stdgo.GoUInt64>, _s2:stdgo.Slice<stdgo.GoUInt64>):stdgo.GoInt return stdgo._internal.slices.Slices_compare.compare(_s1, _s2);
    /**
        * Compare compares the elements of s1 and s2, using [cmp.Compare] on each pair
        * of elements. The elements are compared sequentially, starting at index 0,
        * until one element is not equal to the other.
        * The result of comparing the first non-matching elements is returned.
        * If both slices are equal until one of them ends, the shorter slice is
        * considered less than the longer one.
        * The result is 0 if s1 == s2, -1 if s1 < s2, and +1 if s1 > s2.
    **/
    static public inline extern overload function compare(_s1:stdgo.Slice<stdgo.GoUIntptr>, _s2:stdgo.Slice<stdgo.GoUIntptr>):stdgo.GoInt return stdgo._internal.slices.Slices_compare.compare(_s1, _s2);
    /**
        * Compare compares the elements of s1 and s2, using [cmp.Compare] on each pair
        * of elements. The elements are compared sequentially, starting at index 0,
        * until one element is not equal to the other.
        * The result of comparing the first non-matching elements is returned.
        * If both slices are equal until one of them ends, the shorter slice is
        * considered less than the longer one.
        * The result is 0 if s1 == s2, -1 if s1 < s2, and +1 if s1 > s2.
    **/
    static public inline extern overload function compare(_s1:stdgo.Slice<stdgo.GoFloat32>, _s2:stdgo.Slice<stdgo.GoFloat32>):stdgo.GoInt return stdgo._internal.slices.Slices_compare.compare(_s1, _s2);
    /**
        * Compare compares the elements of s1 and s2, using [cmp.Compare] on each pair
        * of elements. The elements are compared sequentially, starting at index 0,
        * until one element is not equal to the other.
        * The result of comparing the first non-matching elements is returned.
        * If both slices are equal until one of them ends, the shorter slice is
        * considered less than the longer one.
        * The result is 0 if s1 == s2, -1 if s1 < s2, and +1 if s1 > s2.
    **/
    static public inline extern overload function compare(_s1:stdgo.Slice<stdgo.GoFloat64>, _s2:stdgo.Slice<stdgo.GoFloat64>):stdgo.GoInt return stdgo._internal.slices.Slices_compare.compare(_s1, _s2);
    /**
        * Compare compares the elements of s1 and s2, using [cmp.Compare] on each pair
        * of elements. The elements are compared sequentially, starting at index 0,
        * until one element is not equal to the other.
        * The result of comparing the first non-matching elements is returned.
        * If both slices are equal until one of them ends, the shorter slice is
        * considered less than the longer one.
        * The result is 0 if s1 == s2, -1 if s1 < s2, and +1 if s1 > s2.
    **/
    static public inline extern overload function compare(_s1:stdgo.Slice<stdgo.GoString>, _s2:stdgo.Slice<stdgo.GoString>):stdgo.GoInt return stdgo._internal.slices.Slices_compare.compare(_s1, _s2);
    /**
        * CompareFunc is like [Compare] but uses a custom comparison function on each
        * pair of elements.
        * The result is the first non-zero result of cmp; if cmp always
        * returns 0 the result is 0 if len(s1) == len(s2), -1 if len(s1) < len(s2),
        * and +1 if len(s1) > len(s2).
    **/
    static public inline extern overload function compareFunc<E1, E2>(_s1:stdgo.Slice<E1>, _s2:stdgo.Slice<E2>, _cmp:(E1, E2) -> stdgo.GoInt):stdgo.GoInt return stdgo._internal.slices.Slices_comparefunc.compareFunc(_s1, _s2, _cmp);
    /**
        * Index returns the index of the first occurrence of v in s,
        * or -1 if not present.
    **/
    static public inline extern overload function index(_s:stdgo.Slice<stdgo.Comparable>, _v:stdgo.Comparable):stdgo.GoInt return stdgo._internal.slices.Slices_index.index(_s, _v);
    /**
        * IndexFunc returns the first index i satisfying f(s[i]),
        * or -1 if none do.
    **/
    static public inline extern overload function indexFunc<E>(_s:stdgo.Slice<E>, _f:E -> Bool):stdgo.GoInt return stdgo._internal.slices.Slices_indexfunc.indexFunc(_s, _f);
    /**
        * Contains reports whether v is present in s.
    **/
    static public inline extern overload function contains(_s:stdgo.Slice<stdgo.Comparable>, _v:stdgo.Comparable):Bool return stdgo._internal.slices.Slices_contains.contains(_s, _v);
    /**
        * ContainsFunc reports whether at least one
        * element e of s satisfies f(e).
    **/
    static public inline extern overload function containsFunc<E>(_s:stdgo.Slice<E>, _f:E -> Bool):Bool return stdgo._internal.slices.Slices_containsfunc.containsFunc(_s, _f);
    /**
        * Insert inserts the values v... into s at index i,
        * returning the modified slice.
        * The elements at s[i:] are shifted up to make room.
        * In the returned slice r, r[i] == v[0],
        * and r[i+len(v)] == value originally at r[i].
        * Insert panics if i is out of range.
        * This function is O(len(s) + len(v)).
    **/
    static public inline extern overload function insert<E>(_s:stdgo.Slice<E>, _i:stdgo.GoInt, _v:haxe.Rest<E>):stdgo.Slice<E> return stdgo._internal.slices.Slices_insert.insert(_s, _i, ...[for (i in _v) i]);
    /**
        * Delete removes the elements s[i:j] from s, returning the modified slice.
        * Delete panics if s[i:j] is not a valid slice of s.
        * Delete is O(len(s)-j), so if many items must be deleted, it is better to
        * make a single call deleting them all together than to delete one at a time.
        * Delete might not modify the elements s[len(s)-(j-i):len(s)]. If those
        * elements contain pointers you might consider zeroing those elements so that
        * objects they reference can be garbage collected.
    **/
    static public inline extern overload function delete<E>(_s:stdgo.Slice<E>, _i:stdgo.GoInt, _j:stdgo.GoInt):stdgo.Slice<E> return stdgo._internal.slices.Slices_delete.delete(_s, _i, _j);
    /**
        * DeleteFunc removes any elements from s for which del returns true,
        * returning the modified slice.
        * When DeleteFunc removes m elements, it might not modify the elements
        * s[len(s)-m:len(s)]. If those elements contain pointers you might consider
        * zeroing those elements so that objects they reference can be garbage
        * collected.
    **/
    static public inline extern overload function deleteFunc<E>(_s:stdgo.Slice<E>, _del:E -> Bool):stdgo.Slice<E> return stdgo._internal.slices.Slices_deletefunc.deleteFunc(_s, _del);
    /**
        * Replace replaces the elements s[i:j] by the given v, and returns the
        * modified slice. Replace panics if s[i:j] is not a valid slice of s.
    **/
    static public inline extern overload function replace<E>(_s:stdgo.Slice<E>, _i:stdgo.GoInt, _j:stdgo.GoInt, _v:haxe.Rest<E>):stdgo.Slice<E> return stdgo._internal.slices.Slices_replace.replace(_s, _i, _j, ...[for (i in _v) i]);
    /**
        * Clone returns a copy of the slice.
        * The elements are copied using assignment, so this is a shallow clone.
    **/
    static public inline extern overload function clone<E>(_s:stdgo.Slice<E>):stdgo.Slice<E> return stdgo._internal.slices.Slices_clone.clone(_s);
    /**
        * Compact replaces consecutive runs of equal elements with a single copy.
        * This is like the uniq command found on Unix.
        * Compact modifies the contents of the slice s and returns the modified slice,
        * which may have a smaller length.
        * When Compact discards m elements in total, it might not modify the elements
        * s[len(s)-m:len(s)]. If those elements contain pointers you might consider
        * zeroing those elements so that objects they reference can be garbage collected.
    **/
    static public inline extern overload function compact(_s:stdgo.Slice<stdgo.Comparable>):stdgo.Slice<stdgo.Comparable> return stdgo._internal.slices.Slices_compact.compact(_s);
    /**
        * CompactFunc is like [Compact] but uses an equality function to compare elements.
        * For runs of elements that compare equal, CompactFunc keeps the first one.
    **/
    static public inline extern overload function compactFunc<E>(_s:stdgo.Slice<E>, _eq:(E, E) -> Bool):stdgo.Slice<E> return stdgo._internal.slices.Slices_compactfunc.compactFunc(_s, _eq);
    /**
        * Grow increases the slice's capacity, if necessary, to guarantee space for
        * another n elements. After Grow(n), at least n elements can be appended
        * to the slice without another allocation. If n is negative or too large to
        * allocate the memory, Grow panics.
    **/
    static public inline extern overload function grow<E>(_s:stdgo.Slice<E>, _n:stdgo.GoInt):stdgo.Slice<E> return stdgo._internal.slices.Slices_grow.grow(_s, _n);
    /**
        * Clip removes unused capacity from the slice, returning s[:len(s):len(s)].
    **/
    static public inline extern overload function clip<E>(_s:stdgo.Slice<E>):stdgo.Slice<E> return stdgo._internal.slices.Slices_clip.clip(_s);
    /**
        * Reverse reverses the elements of the slice in place.
    **/
    static public inline extern overload function reverse<E>(_s:stdgo.Slice<E>):Void stdgo._internal.slices.Slices_reverse.reverse(_s);
    /**
        * Sort sorts a slice of any ordered type in ascending order.
        * When sorting floating-point numbers, NaNs are ordered before other values.
    **/
    static public inline extern overload function sort(_x:stdgo.Slice<stdgo.GoInt8>):Void stdgo._internal.slices.Slices_sort.sort(_x);
    /**
        * Sort sorts a slice of any ordered type in ascending order.
        * When sorting floating-point numbers, NaNs are ordered before other values.
    **/
    static public inline extern overload function sort(_x:stdgo.Slice<stdgo.GoInt16>):Void stdgo._internal.slices.Slices_sort.sort(_x);
    /**
        * Sort sorts a slice of any ordered type in ascending order.
        * When sorting floating-point numbers, NaNs are ordered before other values.
    **/
    static public inline extern overload function sort(_x:stdgo.Slice<stdgo.GoInt32>):Void stdgo._internal.slices.Slices_sort.sort(_x);
    /**
        * Sort sorts a slice of any ordered type in ascending order.
        * When sorting floating-point numbers, NaNs are ordered before other values.
    **/
    static public inline extern overload function sort(_x:stdgo.Slice<stdgo.GoInt64>):Void stdgo._internal.slices.Slices_sort.sort(_x);
    /**
        * Sort sorts a slice of any ordered type in ascending order.
        * When sorting floating-point numbers, NaNs are ordered before other values.
    **/
    static public inline extern overload function sort(_x:stdgo.Slice<stdgo.GoUInt8>):Void stdgo._internal.slices.Slices_sort.sort(_x);
    /**
        * Sort sorts a slice of any ordered type in ascending order.
        * When sorting floating-point numbers, NaNs are ordered before other values.
    **/
    static public inline extern overload function sort(_x:stdgo.Slice<stdgo.GoUInt16>):Void stdgo._internal.slices.Slices_sort.sort(_x);
    /**
        * Sort sorts a slice of any ordered type in ascending order.
        * When sorting floating-point numbers, NaNs are ordered before other values.
    **/
    static public inline extern overload function sort(_x:stdgo.Slice<stdgo.GoUInt32>):Void stdgo._internal.slices.Slices_sort.sort(_x);
    /**
        * Sort sorts a slice of any ordered type in ascending order.
        * When sorting floating-point numbers, NaNs are ordered before other values.
    **/
    static public inline extern overload function sort(_x:stdgo.Slice<stdgo.GoUInt64>):Void stdgo._internal.slices.Slices_sort.sort(_x);
    /**
        * Sort sorts a slice of any ordered type in ascending order.
        * When sorting floating-point numbers, NaNs are ordered before other values.
    **/
    static public inline extern overload function sort(_x:stdgo.Slice<stdgo.GoUIntptr>):Void stdgo._internal.slices.Slices_sort.sort(_x);
    /**
        * Sort sorts a slice of any ordered type in ascending order.
        * When sorting floating-point numbers, NaNs are ordered before other values.
    **/
    static public inline extern overload function sort(_x:stdgo.Slice<stdgo.GoFloat32>):Void stdgo._internal.slices.Slices_sort.sort(_x);
    /**
        * Sort sorts a slice of any ordered type in ascending order.
        * When sorting floating-point numbers, NaNs are ordered before other values.
    **/
    static public inline extern overload function sort(_x:stdgo.Slice<stdgo.GoFloat64>):Void stdgo._internal.slices.Slices_sort.sort(_x);
    /**
        * Sort sorts a slice of any ordered type in ascending order.
        * When sorting floating-point numbers, NaNs are ordered before other values.
    **/
    static public inline extern overload function sort(_x:stdgo.Slice<stdgo.GoString>):Void stdgo._internal.slices.Slices_sort.sort(_x);
    /**
        * SortFunc sorts the slice x in ascending order as determined by the cmp
        * function. This sort is not guaranteed to be stable.
        * cmp(a, b) should return a negative number when a < b, a positive number when
        * a > b and zero when a == b.
        * 
        * SortFunc requires that cmp is a strict weak ordering.
        * See https://en.wikipedia.org/wiki/Weak_ordering#Strict_weak_orderings.
    **/
    static public inline extern overload function sortFunc<E>(_x:stdgo.Slice<E>, _cmp:(E, E) -> stdgo.GoInt):Void stdgo._internal.slices.Slices_sortfunc.sortFunc(_x, _cmp);
    /**
        * SortStableFunc sorts the slice x while keeping the original order of equal
        * elements, using cmp to compare elements in the same way as [SortFunc].
    **/
    static public inline extern overload function sortStableFunc<E>(_x:stdgo.Slice<E>, _cmp:(E, E) -> stdgo.GoInt):Void stdgo._internal.slices.Slices_sortstablefunc.sortStableFunc(_x, _cmp);
    /**
        * IsSorted reports whether x is sorted in ascending order.
    **/
    static public inline extern overload function isSorted(_x:stdgo.Slice<stdgo.GoInt8>):Bool return stdgo._internal.slices.Slices_issorted.isSorted(_x);
    /**
        * IsSorted reports whether x is sorted in ascending order.
    **/
    static public inline extern overload function isSorted(_x:stdgo.Slice<stdgo.GoInt16>):Bool return stdgo._internal.slices.Slices_issorted.isSorted(_x);
    /**
        * IsSorted reports whether x is sorted in ascending order.
    **/
    static public inline extern overload function isSorted(_x:stdgo.Slice<stdgo.GoInt32>):Bool return stdgo._internal.slices.Slices_issorted.isSorted(_x);
    /**
        * IsSorted reports whether x is sorted in ascending order.
    **/
    static public inline extern overload function isSorted(_x:stdgo.Slice<stdgo.GoInt64>):Bool return stdgo._internal.slices.Slices_issorted.isSorted(_x);
    /**
        * IsSorted reports whether x is sorted in ascending order.
    **/
    static public inline extern overload function isSorted(_x:stdgo.Slice<stdgo.GoUInt8>):Bool return stdgo._internal.slices.Slices_issorted.isSorted(_x);
    /**
        * IsSorted reports whether x is sorted in ascending order.
    **/
    static public inline extern overload function isSorted(_x:stdgo.Slice<stdgo.GoUInt16>):Bool return stdgo._internal.slices.Slices_issorted.isSorted(_x);
    /**
        * IsSorted reports whether x is sorted in ascending order.
    **/
    static public inline extern overload function isSorted(_x:stdgo.Slice<stdgo.GoUInt32>):Bool return stdgo._internal.slices.Slices_issorted.isSorted(_x);
    /**
        * IsSorted reports whether x is sorted in ascending order.
    **/
    static public inline extern overload function isSorted(_x:stdgo.Slice<stdgo.GoUInt64>):Bool return stdgo._internal.slices.Slices_issorted.isSorted(_x);
    /**
        * IsSorted reports whether x is sorted in ascending order.
    **/
    static public inline extern overload function isSorted(_x:stdgo.Slice<stdgo.GoUIntptr>):Bool return stdgo._internal.slices.Slices_issorted.isSorted(_x);
    /**
        * IsSorted reports whether x is sorted in ascending order.
    **/
    static public inline extern overload function isSorted(_x:stdgo.Slice<stdgo.GoFloat32>):Bool return stdgo._internal.slices.Slices_issorted.isSorted(_x);
    /**
        * IsSorted reports whether x is sorted in ascending order.
    **/
    static public inline extern overload function isSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Bool return stdgo._internal.slices.Slices_issorted.isSorted(_x);
    /**
        * IsSorted reports whether x is sorted in ascending order.
    **/
    static public inline extern overload function isSorted(_x:stdgo.Slice<stdgo.GoString>):Bool return stdgo._internal.slices.Slices_issorted.isSorted(_x);
    /**
        * IsSortedFunc reports whether x is sorted in ascending order, with cmp as the
        * comparison function as defined by [SortFunc].
    **/
    static public inline extern overload function isSortedFunc<E>(_x:stdgo.Slice<E>, _cmp:(E, E) -> stdgo.GoInt):Bool return stdgo._internal.slices.Slices_issortedfunc.isSortedFunc(_x, _cmp);
    /**
        * Min returns the minimal value in x. It panics if x is empty.
        * For floating-point numbers, Min propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function min(_x:stdgo.Slice<stdgo.GoInt8>):stdgo.GoInt8 return stdgo._internal.slices.Slices_min.min(_x);
    /**
        * Min returns the minimal value in x. It panics if x is empty.
        * For floating-point numbers, Min propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function min(_x:stdgo.Slice<stdgo.GoInt16>):stdgo.GoInt16 return stdgo._internal.slices.Slices_min.min(_x);
    /**
        * Min returns the minimal value in x. It panics if x is empty.
        * For floating-point numbers, Min propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function min(_x:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt32 return stdgo._internal.slices.Slices_min.min(_x);
    /**
        * Min returns the minimal value in x. It panics if x is empty.
        * For floating-point numbers, Min propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function min(_x:stdgo.Slice<stdgo.GoInt64>):stdgo.GoInt64 return stdgo._internal.slices.Slices_min.min(_x);
    /**
        * Min returns the minimal value in x. It panics if x is empty.
        * For floating-point numbers, Min propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function min(_x:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt8 return stdgo._internal.slices.Slices_min.min(_x);
    /**
        * Min returns the minimal value in x. It panics if x is empty.
        * For floating-point numbers, Min propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function min(_x:stdgo.Slice<stdgo.GoUInt16>):stdgo.GoUInt16 return stdgo._internal.slices.Slices_min.min(_x);
    /**
        * Min returns the minimal value in x. It panics if x is empty.
        * For floating-point numbers, Min propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function min(_x:stdgo.Slice<stdgo.GoUInt32>):stdgo.GoUInt32 return stdgo._internal.slices.Slices_min.min(_x);
    /**
        * Min returns the minimal value in x. It panics if x is empty.
        * For floating-point numbers, Min propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function min(_x:stdgo.Slice<stdgo.GoUInt64>):stdgo.GoUInt64 return stdgo._internal.slices.Slices_min.min(_x);
    /**
        * Min returns the minimal value in x. It panics if x is empty.
        * For floating-point numbers, Min propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function min(_x:stdgo.Slice<stdgo.GoUIntptr>):stdgo.GoUIntptr return stdgo._internal.slices.Slices_min.min(_x);
    /**
        * Min returns the minimal value in x. It panics if x is empty.
        * For floating-point numbers, Min propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function min(_x:stdgo.Slice<stdgo.GoFloat32>):stdgo.GoFloat32 return stdgo._internal.slices.Slices_min.min(_x);
    /**
        * Min returns the minimal value in x. It panics if x is empty.
        * For floating-point numbers, Min propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function min(_x:stdgo.Slice<stdgo.GoFloat64>):stdgo.GoFloat64 return stdgo._internal.slices.Slices_min.min(_x);
    /**
        * Min returns the minimal value in x. It panics if x is empty.
        * For floating-point numbers, Min propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function min(_x:stdgo.Slice<stdgo.GoString>):stdgo.GoString return stdgo._internal.slices.Slices_min.min(_x);
    /**
        * MinFunc returns the minimal value in x, using cmp to compare elements.
        * It panics if x is empty. If there is more than one minimal element
        * according to the cmp function, MinFunc returns the first one.
    **/
    static public inline extern overload function minFunc<E>(_x:stdgo.Slice<E>, _cmp:(E, E) -> stdgo.GoInt):E return stdgo._internal.slices.Slices_minfunc.minFunc(_x, _cmp);
    /**
        * Max returns the maximal value in x. It panics if x is empty.
        * For floating-point E, Max propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function max(_x:stdgo.Slice<stdgo.GoInt8>):stdgo.GoInt8 return stdgo._internal.slices.Slices_max.max(_x);
    /**
        * Max returns the maximal value in x. It panics if x is empty.
        * For floating-point E, Max propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function max(_x:stdgo.Slice<stdgo.GoInt16>):stdgo.GoInt16 return stdgo._internal.slices.Slices_max.max(_x);
    /**
        * Max returns the maximal value in x. It panics if x is empty.
        * For floating-point E, Max propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function max(_x:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt32 return stdgo._internal.slices.Slices_max.max(_x);
    /**
        * Max returns the maximal value in x. It panics if x is empty.
        * For floating-point E, Max propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function max(_x:stdgo.Slice<stdgo.GoInt64>):stdgo.GoInt64 return stdgo._internal.slices.Slices_max.max(_x);
    /**
        * Max returns the maximal value in x. It panics if x is empty.
        * For floating-point E, Max propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function max(_x:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt8 return stdgo._internal.slices.Slices_max.max(_x);
    /**
        * Max returns the maximal value in x. It panics if x is empty.
        * For floating-point E, Max propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function max(_x:stdgo.Slice<stdgo.GoUInt16>):stdgo.GoUInt16 return stdgo._internal.slices.Slices_max.max(_x);
    /**
        * Max returns the maximal value in x. It panics if x is empty.
        * For floating-point E, Max propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function max(_x:stdgo.Slice<stdgo.GoUInt32>):stdgo.GoUInt32 return stdgo._internal.slices.Slices_max.max(_x);
    /**
        * Max returns the maximal value in x. It panics if x is empty.
        * For floating-point E, Max propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function max(_x:stdgo.Slice<stdgo.GoUInt64>):stdgo.GoUInt64 return stdgo._internal.slices.Slices_max.max(_x);
    /**
        * Max returns the maximal value in x. It panics if x is empty.
        * For floating-point E, Max propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function max(_x:stdgo.Slice<stdgo.GoUIntptr>):stdgo.GoUIntptr return stdgo._internal.slices.Slices_max.max(_x);
    /**
        * Max returns the maximal value in x. It panics if x is empty.
        * For floating-point E, Max propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function max(_x:stdgo.Slice<stdgo.GoFloat32>):stdgo.GoFloat32 return stdgo._internal.slices.Slices_max.max(_x);
    /**
        * Max returns the maximal value in x. It panics if x is empty.
        * For floating-point E, Max propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function max(_x:stdgo.Slice<stdgo.GoFloat64>):stdgo.GoFloat64 return stdgo._internal.slices.Slices_max.max(_x);
    /**
        * Max returns the maximal value in x. It panics if x is empty.
        * For floating-point E, Max propagates NaNs (any NaN value in x
        * forces the output to be NaN).
    **/
    static public inline extern overload function max(_x:stdgo.Slice<stdgo.GoString>):stdgo.GoString return stdgo._internal.slices.Slices_max.max(_x);
    /**
        * MaxFunc returns the maximal value in x, using cmp to compare elements.
        * It panics if x is empty. If there is more than one maximal element
        * according to the cmp function, MaxFunc returns the first one.
    **/
    static public inline extern overload function maxFunc<E>(_x:stdgo.Slice<E>, _cmp:(E, E) -> stdgo.GoInt):E return stdgo._internal.slices.Slices_maxfunc.maxFunc(_x, _cmp);
    /**
        * BinarySearch searches for target in a sorted slice and returns the position
        * where target is found, or the position where target would appear in the
        * sort order; it also returns a bool saying whether the target is really found
        * in the slice. The slice must be sorted in increasing order.
    **/
    static public inline extern overload function binarySearch(_x:stdgo.Slice<stdgo.GoInt8>, _target:stdgo.GoInt8):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.slices.Slices_binarysearch.binarySearch(_x, _target);
    /**
        * BinarySearch searches for target in a sorted slice and returns the position
        * where target is found, or the position where target would appear in the
        * sort order; it also returns a bool saying whether the target is really found
        * in the slice. The slice must be sorted in increasing order.
    **/
    static public inline extern overload function binarySearch(_x:stdgo.Slice<stdgo.GoInt16>, _target:stdgo.GoInt16):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.slices.Slices_binarysearch.binarySearch(_x, _target);
    /**
        * BinarySearch searches for target in a sorted slice and returns the position
        * where target is found, or the position where target would appear in the
        * sort order; it also returns a bool saying whether the target is really found
        * in the slice. The slice must be sorted in increasing order.
    **/
    static public inline extern overload function binarySearch(_x:stdgo.Slice<stdgo.GoInt32>, _target:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.slices.Slices_binarysearch.binarySearch(_x, _target);
    /**
        * BinarySearch searches for target in a sorted slice and returns the position
        * where target is found, or the position where target would appear in the
        * sort order; it also returns a bool saying whether the target is really found
        * in the slice. The slice must be sorted in increasing order.
    **/
    static public inline extern overload function binarySearch(_x:stdgo.Slice<stdgo.GoInt64>, _target:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.slices.Slices_binarysearch.binarySearch(_x, _target);
    /**
        * BinarySearch searches for target in a sorted slice and returns the position
        * where target is found, or the position where target would appear in the
        * sort order; it also returns a bool saying whether the target is really found
        * in the slice. The slice must be sorted in increasing order.
    **/
    static public inline extern overload function binarySearch(_x:stdgo.Slice<stdgo.GoUInt8>, _target:stdgo.GoUInt8):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.slices.Slices_binarysearch.binarySearch(_x, _target);
    /**
        * BinarySearch searches for target in a sorted slice and returns the position
        * where target is found, or the position where target would appear in the
        * sort order; it also returns a bool saying whether the target is really found
        * in the slice. The slice must be sorted in increasing order.
    **/
    static public inline extern overload function binarySearch(_x:stdgo.Slice<stdgo.GoUInt16>, _target:stdgo.GoUInt16):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.slices.Slices_binarysearch.binarySearch(_x, _target);
    /**
        * BinarySearch searches for target in a sorted slice and returns the position
        * where target is found, or the position where target would appear in the
        * sort order; it also returns a bool saying whether the target is really found
        * in the slice. The slice must be sorted in increasing order.
    **/
    static public inline extern overload function binarySearch(_x:stdgo.Slice<stdgo.GoUInt32>, _target:stdgo.GoUInt32):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.slices.Slices_binarysearch.binarySearch(_x, _target);
    /**
        * BinarySearch searches for target in a sorted slice and returns the position
        * where target is found, or the position where target would appear in the
        * sort order; it also returns a bool saying whether the target is really found
        * in the slice. The slice must be sorted in increasing order.
    **/
    static public inline extern overload function binarySearch(_x:stdgo.Slice<stdgo.GoUInt64>, _target:stdgo.GoUInt64):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.slices.Slices_binarysearch.binarySearch(_x, _target);
    /**
        * BinarySearch searches for target in a sorted slice and returns the position
        * where target is found, or the position where target would appear in the
        * sort order; it also returns a bool saying whether the target is really found
        * in the slice. The slice must be sorted in increasing order.
    **/
    static public inline extern overload function binarySearch(_x:stdgo.Slice<stdgo.GoUIntptr>, _target:stdgo.GoUIntptr):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.slices.Slices_binarysearch.binarySearch(_x, _target);
    /**
        * BinarySearch searches for target in a sorted slice and returns the position
        * where target is found, or the position where target would appear in the
        * sort order; it also returns a bool saying whether the target is really found
        * in the slice. The slice must be sorted in increasing order.
    **/
    static public inline extern overload function binarySearch(_x:stdgo.Slice<stdgo.GoFloat32>, _target:stdgo.GoFloat32):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.slices.Slices_binarysearch.binarySearch(_x, _target);
    /**
        * BinarySearch searches for target in a sorted slice and returns the position
        * where target is found, or the position where target would appear in the
        * sort order; it also returns a bool saying whether the target is really found
        * in the slice. The slice must be sorted in increasing order.
    **/
    static public inline extern overload function binarySearch(_x:stdgo.Slice<stdgo.GoFloat64>, _target:stdgo.GoFloat64):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.slices.Slices_binarysearch.binarySearch(_x, _target);
    /**
        * BinarySearch searches for target in a sorted slice and returns the position
        * where target is found, or the position where target would appear in the
        * sort order; it also returns a bool saying whether the target is really found
        * in the slice. The slice must be sorted in increasing order.
    **/
    static public inline extern overload function binarySearch(_x:stdgo.Slice<stdgo.GoString>, _target:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.slices.Slices_binarysearch.binarySearch(_x, _target);
    /**
        * BinarySearchFunc works like [BinarySearch], but uses a custom comparison
        * function. The slice must be sorted in increasing order, where "increasing"
        * is defined by cmp. cmp should return 0 if the slice element matches
        * the target, a negative number if the slice element precedes the target,
        * or a positive number if the slice element follows the target.
        * cmp must implement the same ordering as the slice, such that if
        * cmp(a, t) < 0 and cmp(b, t) >= 0, then a must precede b in the slice.
    **/
    static public inline extern overload function binarySearchFunc<E, T_>(_x:stdgo.Slice<E>, _target:T_, _cmp:(E, T_) -> stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.slices.Slices_binarysearchfunc.binarySearchFunc(_x, _target, _cmp);
}
