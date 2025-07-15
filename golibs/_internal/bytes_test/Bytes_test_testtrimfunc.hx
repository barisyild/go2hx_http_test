package _internal.bytes_test;
function testTrimFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1533"
        if (_internal.bytes_test.Bytes_test__trimfunctests._trimFuncTests != null) for (__0 => _tc in _internal.bytes_test.Bytes_test__trimfunctests._trimFuncTests) {
            var _trimmers = (new stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_153.T__struct_153>(3, 3, ...[({ _name : ("TrimFunc" : stdgo.GoString), _trim : stdgo._internal.bytes.Bytes_trimfunc.trimFunc, _out : _tc._trimOut } : _internal.bytes_test.Bytes_test_t__struct_153.T__struct_153), ({ _name : ("TrimLeftFunc" : stdgo.GoString), _trim : stdgo._internal.bytes.Bytes_trimleftfunc.trimLeftFunc, _out : _tc._leftOut } : _internal.bytes_test.Bytes_test_t__struct_153.T__struct_153), ({ _name : ("TrimRightFunc" : stdgo.GoString), _trim : stdgo._internal.bytes.Bytes_trimrightfunc.trimRightFunc, _out : _tc._rightOut } : _internal.bytes_test.Bytes_test_t__struct_153.T__struct_153)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _trim : null, _out : (null : stdgo.Slice<stdgo.GoUInt8>) } : _internal.bytes_test.Bytes_test_t__struct_153.T__struct_153)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_153.T__struct_153>);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1543"
            if (_trimmers != null) for (__1 => _trimmer in _trimmers) {
                var _actual = _trimmer._trim((_tc._in : stdgo.Slice<stdgo.GoUInt8>), _tc._f._f);
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1545"
                if (((_actual == null) && (_trimmer._out != null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1546"
                    _t.errorf(("%s(%q, %q) = nil; want %q" : stdgo.GoString), new stdgo.AnyInterface(_trimmer._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._f._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_trimmer._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                };
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1548"
                if (((_actual != null) && (_trimmer._out == null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1549"
                    _t.errorf(("%s(%q, %q) = %q; want nil" : stdgo.GoString), new stdgo.AnyInterface(_trimmer._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._f._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_actual, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                };
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1551"
                if (!stdgo._internal.bytes.Bytes_equal.equal(_actual, _trimmer._out)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1552"
                    _t.errorf(("%s(%q, %q) = %q; want %q" : stdgo.GoString), new stdgo.AnyInterface(_trimmer._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._f._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_actual, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_trimmer._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                };
            };
        };
    }
