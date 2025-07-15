package _internal.bytes_test;
function testMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _a = @:assignType (_internal.bytes_test.Bytes_test__tenrunes._tenRunes((97 : stdgo.GoInt32))?.__copy__() : stdgo.GoString);
        var _maxRune = @:assignType (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1072"
            return (1114111 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        var _m = stdgo._internal.bytes.Bytes_map_.map_(_maxRune, (_a : stdgo.Slice<stdgo.GoUInt8>));
        var _expect = @:assignType (_internal.bytes_test.Bytes_test__tenrunes._tenRunes((1114111 : stdgo.GoInt32))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1075"
        if ((_m : stdgo.GoString) != (_expect)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1076"
            _t.errorf(("growing: expected %q got %q" : stdgo.GoString), new stdgo.AnyInterface(_expect, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        };
        var _minRune = @:assignType (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1080"
            return (97 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = stdgo._internal.bytes.Bytes_map_.map_(_minRune, (_internal.bytes_test.Bytes_test__tenrunes._tenRunes((1114111 : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoUInt8>));
        _expect = _a?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1083"
        if ((_m : stdgo.GoString) != (_expect)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1084"
            _t.errorf(("shrinking: expected %q got %q" : stdgo.GoString), new stdgo.AnyInterface(_expect, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        };
        _m = stdgo._internal.bytes.Bytes_map_.map_(_internal.bytes_test.Bytes_test__rot13._rot13, ((("a to zed" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _expect = ("n gb mrq" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1090"
        if ((_m : stdgo.GoString) != (_expect)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1091"
            _t.errorf(("rot13: expected %q got %q" : stdgo.GoString), new stdgo.AnyInterface(_expect, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        };
        _m = stdgo._internal.bytes.Bytes_map_.map_(_internal.bytes_test.Bytes_test__rot13._rot13, stdgo._internal.bytes.Bytes_map_.map_(_internal.bytes_test.Bytes_test__rot13._rot13, ((("a to zed" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)));
        _expect = ("a to zed" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1097"
        if ((_m : stdgo.GoString) != (_expect)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1098"
            _t.errorf(("rot13: expected %q got %q" : stdgo.GoString), new stdgo.AnyInterface(_expect, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        };
        var _dropNotLatin = @:assignType (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1103"
            if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_latin.latin, _r)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1104"
                return _r;
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1106"
            return (-1 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = stdgo._internal.bytes.Bytes_map_.map_(_dropNotLatin, ((("Hello, 세계" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _expect = ("Hello" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1110"
        if ((_m : stdgo.GoString) != (_expect)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1111"
            _t.errorf(("drop: expected %q got %q" : stdgo.GoString), new stdgo.AnyInterface(_expect, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        };
        var _invalidRune = @:assignType (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1116"
            return (1114112 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = stdgo._internal.bytes.Bytes_map_.map_(_invalidRune, ((("x" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _expect = ("�" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1120"
        if ((_m : stdgo.GoString) != (_expect)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1121"
            _t.errorf(("invalidRune: expected %q got %q" : stdgo.GoString), new stdgo.AnyInterface(_expect, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        };
    }
