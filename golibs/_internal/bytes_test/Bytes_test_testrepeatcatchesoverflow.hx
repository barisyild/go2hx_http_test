package _internal.bytes_test;
function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tests = {
            var s:stdgo.GoArray<_internal.bytes_test.Bytes_test_t__struct_152.T__struct_152> = new stdgo.GoArray<_internal.bytes_test.Bytes_test_t__struct_152.T__struct_152>(7, 7, ...[for (i in 0 ... 7) ({ _s : ("" : stdgo.GoString), _count : (0 : stdgo.GoInt), _errStr : ("" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_t__struct_152.T__struct_152)]);
            s[0] = ({ _s : ("--" : stdgo.GoString), _count : (-2147483647 : stdgo.GoInt), _errStr : ("negative" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_t__struct_152.T__struct_152);
            s[1] = ({ _s : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _count : ((2147483647u32 : stdgo.GoUInt) : stdgo.GoInt), _errStr : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.bytes_test.Bytes_test_t__struct_152.T__struct_152);
            s[2] = ({ _s : ("-" : stdgo.GoString), _count : (10 : stdgo.GoInt), _errStr : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.bytes_test.Bytes_test_t__struct_152.T__struct_152);
            s[3] = ({ _s : ("gopher" : stdgo.GoString), _count : (0 : stdgo.GoInt), _errStr : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.bytes_test.Bytes_test_t__struct_152.T__struct_152);
            s[4] = ({ _s : ("-" : stdgo.GoString), _count : (-1 : stdgo.GoInt), _errStr : ("negative" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_t__struct_152.T__struct_152);
            s[5] = ({ _s : ("--" : stdgo.GoString), _count : (-102 : stdgo.GoInt), _errStr : ("negative" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_t__struct_152.T__struct_152);
            s[6] = ({ _s : ((new stdgo.Slice<stdgo.GoUInt8>((255 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), _count : ((16843010u32 : stdgo.GoUInt) : stdgo.GoInt), _errStr : ("overflow" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_t__struct_152.T__struct_152);
            s;
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1254"
        for (_i => _tt in _tests.__copy__()) {
            var _err = @:assignType (_internal.bytes_test.Bytes_test__repeat._repeat((_tt._s : stdgo.Slice<stdgo.GoUInt8>), _tt._count) : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1256"
            if (_tt._errStr == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1257"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1258"
                    _t.errorf(("#%d panicked %v" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1260"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1263"
            if (((_err == null) || !stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _tt._errStr?.__copy__()) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1264"
                _t.errorf(("#%d expected %q got %q" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_tt._errStr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
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
