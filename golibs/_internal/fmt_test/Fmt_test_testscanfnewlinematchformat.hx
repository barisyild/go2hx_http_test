package _internal.fmt_test;
function testScanfNewlineMatchFormat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _a:stdgo.GoInt = (0 : stdgo.GoInt), _b:stdgo.GoInt = (0 : stdgo.GoInt), _b__pointer__ = stdgo.Go.pointer(_b), _a__pointer__ = stdgo.Go.pointer(_a);
        var _tests = (new stdgo.Slice<_internal.fmt_test.Fmt_test_t__struct_54.T__struct_54>(40, 40, ...[
({ _name : ("newline in both" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d\n%d\n" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("newline in input" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d %d" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space-newline in input" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d %d" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("newline in format" : stdgo.GoString), _text : ("1 2" : stdgo.GoString), _format : ("%d\n%d" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space-newline in format" : stdgo.GoString), _text : ("1 2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space-newline in both" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("extra space in format" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d\n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("two extra spaces in format" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d \n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline 0000" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d\n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline 0001" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d\n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline 0010" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline 0011" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d \n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline 0100" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("%d\n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline 0101" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("%d\n%d " : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline 0110" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline 0111" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("%d \n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline 1000" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d\n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline 1001" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d\n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline 1010" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline 1011" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d \n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline 1100" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("%d\n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline 1101" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("%d\n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline 1110" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline 1111" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("%d \n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline no-percent 0000" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("1\n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline no-percent 0001" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("1\n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline no-percent 0010" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("1 \n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline no-percent 0011" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("1 \n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline no-percent 0100" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("1\n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline no-percent 0101" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("1\n2 " : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline no-percent 0110" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("1 \n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline no-percent 0111" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("1 \n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline no-percent 1000" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("1\n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline no-percent 1001" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("1\n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline no-percent 1010" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("1 \n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline no-percent 1011" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("1 \n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline no-percent 1100" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("1\n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline no-percent 1101" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("1\n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline no-percent 1110" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("1 \n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54),
({ _name : ("space vs newline no-percent 1111" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("1 \n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54)].concat([for (i in 40 ... (40 > 40 ? 40 : 40 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _text : ("" : stdgo.GoString), _format : ("" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_t__struct_54.T__struct_54)])) : stdgo.Slice<_internal.fmt_test.Fmt_test_t__struct_54.T__struct_54>);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1288"
        if (_tests != null) for (__2 => _test in _tests) {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err:stdgo.Error = (null : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1291"
            if (stdgo._internal.strings.Strings_contains.contains(_test._format?.__copy__(), ("%" : stdgo.GoString))) {
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(_test._text?.__copy__(), _test._format?.__copy__(), new stdgo.AnyInterface(_a__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface(_b__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(_test._text?.__copy__(), _test._format?.__copy__());
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1296"
            if (_n != (_test._count)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1297"
                _t.errorf(("%s: expected to scan %d item(s), scanned %d" : stdgo.GoString), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._count, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1299"
            if ((_test._ok && (_err != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1300"
                _t.errorf(("%s: unexpected error: %s" : stdgo.GoString), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1302"
            if ((!_test._ok && (_err == null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1303"
                _t.errorf(("%s: expected error; got none" : stdgo.GoString), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
