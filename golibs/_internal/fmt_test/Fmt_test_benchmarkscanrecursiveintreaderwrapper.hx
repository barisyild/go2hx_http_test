package _internal.fmt_test;
function benchmarkScanRecursiveIntReaderWrapper(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1123"
        _b.stopTimer();
        var _ints = _internal.fmt_test.Fmt_test__makeints._makeInts((800 : stdgo.GoInt));
        var _r:_internal.fmt_test.Fmt_test_recursiveint.RecursiveInt = ({} : _internal.fmt_test.Fmt_test_recursiveint.RecursiveInt);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1126"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                var _buf = @:assignType ({ reader : stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader((_ints : stdgo.GoString).__copy__()), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader })) } : _internal.fmt_test.Fmt_test_t__struct_48.T__struct_48);
//"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1128"
                _b.startTimer();
//"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1129"
                stdgo._internal.fmt.Fmt_fscan.fscan(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.structType([{ name : "reader", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false }])), new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recursiveintdotrecursiveint.__type___internaldotfmt_testdotFmt_test_recursiveintdotRecursiveInt })) : stdgo.Ref<_internal.fmt_test.Fmt_test_recursiveint.RecursiveInt>), _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recursiveintdotrecursiveint.__type___internaldotfmt_testdotFmt_test_recursiveintdotRecursiveInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recursiveintdotrecursiveint.__type___internaldotfmt_testdotFmt_test_recursiveintdotRecursiveInt }))));
//"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1130"
                _b.stopTimer();
                _i++;
            };
        };
    }
