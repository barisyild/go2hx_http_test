package _internal.fmt_test;
function testScanlnNewlinesTerminate(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _a:stdgo.GoInt = (0 : stdgo.GoInt), _b:stdgo.GoInt = (0 : stdgo.GoInt), _b__pointer__ = stdgo.Go.pointer(_b), _a__pointer__ = stdgo.Go.pointer(_a);
        var _tests = (new stdgo.Slice<_internal.fmt_test.Fmt_test_t__struct_53.T__struct_53>(4, 4, ...[({ _name : ("one line one item" : stdgo.GoString), _text : ("1\n" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_t__struct_53.T__struct_53), ({ _name : ("one line two items with spaces " : stdgo.GoString), _text : ("   1 2    \n" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_53.T__struct_53), ({ _name : ("one line two items no newline" : stdgo.GoString), _text : ("   1 2" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_53.T__struct_53), ({ _name : ("two lines two items" : stdgo.GoString), _text : ("1\n2\n" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_t__struct_53.T__struct_53)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _text : ("" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_t__struct_53.T__struct_53)])) : stdgo.Slice<_internal.fmt_test.Fmt_test_t__struct_53.T__struct_53>);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1224"
        if (_tests != null) for (__2 => _test in _tests) {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanln.sscanln(_test._text?.__copy__(), new stdgo.AnyInterface(_a__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface(_b__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1226"
            if (_n != (_test._count)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1227"
                _t.errorf(("%s: expected to scan %d item(s), scanned %d" : stdgo.GoString), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._count, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1229"
            if ((_test._ok && (_err != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1230"
                _t.errorf(("%s: unexpected error: %s" : stdgo.GoString), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1232"
            if ((!_test._ok && (_err == null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1233"
                _t.errorf(("%s: expected error; got none" : stdgo.GoString), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
