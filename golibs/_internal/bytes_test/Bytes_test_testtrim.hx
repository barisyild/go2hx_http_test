package _internal.bytes_test;
function testTrim(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _toFn = @:assignType (function(_name:stdgo.GoString):{ var _0 : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8>; var _1 : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Slice<stdgo.GoUInt8>; } {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1394"
            {
                final __value__ = _name;
                if (__value__ == (("Trim" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1396"
                    return { _0 : stdgo._internal.bytes.Bytes_trim.trim, _1 : null };
                } else if (__value__ == (("TrimLeft" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1398"
                    return { _0 : stdgo._internal.bytes.Bytes_trimleft.trimLeft, _1 : null };
                } else if (__value__ == (("TrimRight" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1400"
                    return { _0 : stdgo._internal.bytes.Bytes_trimright.trimRight, _1 : null };
                } else if (__value__ == (("TrimPrefix" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1402"
                    return { _0 : null, _1 : stdgo._internal.bytes.Bytes_trimprefix.trimPrefix };
                } else if (__value__ == (("TrimSuffix" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1404"
                    return { _0 : null, _1 : stdgo._internal.bytes.Bytes_trimsuffix.trimSuffix };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1406"
                    _t.errorf(("Undefined trim function %s" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1407"
                    return { _0 : null, _1 : null };
                };
            };
        } : stdgo.GoString -> { var _0 : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8>; var _1 : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Slice<stdgo.GoUInt8>; });
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1411"
        if (_internal.bytes_test.Bytes_test__trimtests._trimTests != null) for (__0 => _tc in _internal.bytes_test.Bytes_test__trimtests._trimTests) {
            var _name = @:assignType (_tc._f?.__copy__() : stdgo.GoString);
            var __tmp__ = _toFn(_name?.__copy__()), _f:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _fb:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1414"
            if (((_f == null) && (_fb == null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1415"
                continue;
            };
            var _actual:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1418"
            if (_f != null) {
                _actual = (_f((_tc._in : stdgo.Slice<stdgo.GoUInt8>), _tc._arg?.__copy__()) : stdgo.GoString)?.__copy__();
            } else {
                _actual = (_fb((_tc._in : stdgo.Slice<stdgo.GoUInt8>), (_tc._arg : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoString)?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1423"
            if (_actual != (_tc._out)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1424"
                _t.errorf(("%s(%q, %q) = %q; want %q" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._arg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_actual, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1428"
        if (_internal.bytes_test.Bytes_test__trimniltests._trimNilTests != null) for (__1 => _tc in _internal.bytes_test.Bytes_test__trimniltests._trimNilTests) {
            var _name = @:assignType (_tc._f?.__copy__() : stdgo.GoString);
            var __tmp__ = _toFn(_name?.__copy__()), _f:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _fb:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1431"
            if (((_f == null) && (_fb == null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1432"
                continue;
            };
            var _actual:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1435"
            if (_f != null) {
                _actual = _f(_tc._in, _tc._arg?.__copy__());
            } else {
                _actual = _fb(_tc._in, (_tc._arg : stdgo.Slice<stdgo.GoUInt8>));
            };
            var _report = function(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1441"
                if (_s == null) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1442"
                    return ("nil" : stdgo.GoString);
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1444"
                    return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))))?.__copy__();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1447"
            if ((_actual.length) != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1448"
                _t.errorf(("%s(%s, %q) returned non-empty value" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_report(_tc._in), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._arg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            } else {
                var _actualNil = @:assignType (_actual == null : Bool);
                var _outNil = @:assignType (_tc._out == null : Bool);
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1452"
                if (_actualNil != (_outNil)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1453"
                    _t.errorf(("%s(%s, %q) got nil %t; want nil %t" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_report(_tc._in), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._arg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_actualNil, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_outNil, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
        };
    }
