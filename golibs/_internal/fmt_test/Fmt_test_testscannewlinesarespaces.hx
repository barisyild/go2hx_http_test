package _internal.fmt_test;
function testScanNewlinesAreSpaces(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _a:stdgo.GoInt = (0 : stdgo.GoInt), _b:stdgo.GoInt = (0 : stdgo.GoInt), _b__pointer__ = stdgo.Go.pointer(_b), _a__pointer__ = stdgo.Go.pointer(_a);
        var _tests = (new stdgo.Slice<_internal.fmt_test.Fmt_test_t__struct_51.T__struct_51>(4, 4, ...[({ _name : ("newlines" : stdgo.GoString), _text : ("1\n2\n" : stdgo.GoString), _count : (2 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_t__struct_51.T__struct_51), ({ _name : ("no final newline" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _count : (2 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_t__struct_51.T__struct_51), ({ _name : ("newlines with spaces " : stdgo.GoString), _text : ("1  \n  2  \n" : stdgo.GoString), _count : (2 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_t__struct_51.T__struct_51), ({ _name : ("no final newline with spaces" : stdgo.GoString), _text : ("1  \n  2" : stdgo.GoString), _count : (2 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_t__struct_51.T__struct_51)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _text : ("" : stdgo.GoString), _count : (0 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_t__struct_51.T__struct_51)])) : stdgo.Slice<_internal.fmt_test.Fmt_test_t__struct_51.T__struct_51>);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1200"
        if (_tests != null) for (__2 => _test in _tests) {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(_test._text?.__copy__(), new stdgo.AnyInterface(_a__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface(_b__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1202"
            if (_n != (_test._count)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1203"
                _t.errorf(("%s: expected to scan %d item(s), scanned %d" : stdgo.GoString), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._count, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1205"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1206"
                _t.errorf(("%s: unexpected error: %s" : stdgo.GoString), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
    }
