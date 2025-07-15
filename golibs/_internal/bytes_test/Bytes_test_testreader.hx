package _internal.bytes_test;
function testReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = stdgo._internal.bytes.Bytes_newreader.newReader(((("0123456789" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        var _tests = (new stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_163.T__struct_163>(9, 9, ...[({ _seek : (0 : stdgo.GoInt), _off : (0i64 : stdgo.GoInt64), _n : (20 : stdgo.GoInt), _want : ("0123456789" : stdgo.GoString), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_t__struct_163.T__struct_163), ({ _seek : (0 : stdgo.GoInt), _off : (1i64 : stdgo.GoInt64), _n : (1 : stdgo.GoInt), _want : ("1" : stdgo.GoString), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_t__struct_163.T__struct_163), ({ _seek : (1 : stdgo.GoInt), _off : (1i64 : stdgo.GoInt64), _wantpos : (3i64 : stdgo.GoInt64), _n : (2 : stdgo.GoInt), _want : ("34" : stdgo.GoString), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_t__struct_163.T__struct_163), ({ _seek : (0 : stdgo.GoInt), _off : (-1i64 : stdgo.GoInt64), _seekerr : ("bytes.Reader.Seek: negative position" : stdgo.GoString), _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error) } : _internal.bytes_test.Bytes_test_t__struct_163.T__struct_163), ({ _seek : (0 : stdgo.GoInt), _off : (8589934592i64 : stdgo.GoInt64), _wantpos : (8589934592i64 : stdgo.GoInt64), _readerr : stdgo._internal.io.Io_eof.eOF, _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _seekerr : ("" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_t__struct_163.T__struct_163), ({ _seek : (1 : stdgo.GoInt), _off : (1i64 : stdgo.GoInt64), _wantpos : (8589934593i64 : stdgo.GoInt64), _readerr : stdgo._internal.io.Io_eof.eOF, _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _seekerr : ("" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_t__struct_163.T__struct_163), ({ _seek : (0 : stdgo.GoInt), _n : (5 : stdgo.GoInt), _want : ("01234" : stdgo.GoString), _off : (0 : stdgo.GoInt64), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_t__struct_163.T__struct_163), ({ _seek : (1 : stdgo.GoInt), _n : (5 : stdgo.GoInt), _want : ("56789" : stdgo.GoString), _off : (0 : stdgo.GoInt64), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_t__struct_163.T__struct_163), ({ _seek : (2 : stdgo.GoInt), _off : (-1i64 : stdgo.GoInt64), _n : (1 : stdgo.GoInt), _wantpos : (9i64 : stdgo.GoInt64), _want : ("9" : stdgo.GoString), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_t__struct_163.T__struct_163)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _off : (0 : stdgo.GoInt64), _seek : (0 : stdgo.GoInt), _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_t__struct_163.T__struct_163)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_163.T__struct_163>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L37"
        if (_tests != null) for (_i => _tt in _tests) {
            var __tmp__ = _r.seek(_tt._off, _tt._seek), _pos:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L39"
            if (((_err == null) && (_tt._seekerr != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L40"
                _t.errorf(("%d. want seek error %q" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_tt._seekerr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L41"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L43"
            if (((_err != null) && (_err.error() != _tt._seekerr) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L44"
                _t.errorf(("%d. seek error = %q; want %q" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_err.error(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._seekerr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L45"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L47"
            if (((_tt._wantpos != (0i64 : stdgo.GoInt64)) && (_tt._wantpos != _pos) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L48"
                _t.errorf(("%d. pos = %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_pos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_tt._wantpos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
            };
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_tt._n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _r.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L52"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != (({
                final __t__ = _tt._readerr;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L53"
                _t.errorf(("%d. read = %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), ({
                    final __t__ = _tt._readerr;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L54"
                continue;
            };
            var _got = @:assignType (((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L57"
            if (_got != (_tt._want)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L58"
                _t.errorf(("%d. got %q; want %q" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
