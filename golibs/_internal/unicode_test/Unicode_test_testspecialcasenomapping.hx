package _internal.unicode_test;
function testSpecialCaseNoMapping(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _noChangeForCapitalA = (new stdgo._internal.unicode.Unicode_caserange.CaseRange((65u32 : stdgo.GoUInt32), (65u32 : stdgo.GoUInt32), (new stdgo.GoArray<stdgo.GoInt32>(3, 3, ...[(0 : stdgo.GoInt32), (0 : stdgo.GoInt32), (0 : stdgo.GoInt32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt32>)?.__copy__()) : stdgo._internal.unicode.Unicode_caserange.CaseRange);
        var _got = (stdgo._internal.strings.Strings_tolowerspecial.toLowerSpecial(((new stdgo.Slice<stdgo._internal.unicode.Unicode_caserange.CaseRange>(1, 1, ...[_noChangeForCapitalA?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode.Unicode_caserange.CaseRange)])) : stdgo.Slice<stdgo._internal.unicode.Unicode_caserange.CaseRange>) : stdgo._internal.unicode.Unicode_specialcase.SpecialCase), ("ABC" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _want = (("Abc" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L562"
        if (_got != (_want)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L563"
            _t.errorf(("got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
