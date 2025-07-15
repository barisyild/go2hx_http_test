package _internal.bytes_test;
function testReaderAt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = stdgo._internal.bytes.Bytes_newreader.newReader(((("0123456789" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        var _tests = (new stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_164.T__struct_164>(6, 6, ...[({ _off : (0i64 : stdgo.GoInt64), _n : (10 : stdgo.GoInt), _want : ("0123456789" : stdgo.GoString), _wanterr : (null : stdgo.AnyInterface) } : _internal.bytes_test.Bytes_test_t__struct_164.T__struct_164), ({ _off : (1i64 : stdgo.GoInt64), _n : (10 : stdgo.GoInt), _want : ("123456789" : stdgo.GoString), _wanterr : ({
            final __t__ = stdgo._internal.io.Io_eof.eOF;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) } : _internal.bytes_test.Bytes_test_t__struct_164.T__struct_164), ({ _off : (1i64 : stdgo.GoInt64), _n : (9 : stdgo.GoInt), _want : ("123456789" : stdgo.GoString), _wanterr : (null : stdgo.AnyInterface) } : _internal.bytes_test.Bytes_test_t__struct_164.T__struct_164), ({ _off : (11i64 : stdgo.GoInt64), _n : (10 : stdgo.GoInt), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _wanterr : ({
            final __t__ = stdgo._internal.io.Io_eof.eOF;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) } : _internal.bytes_test.Bytes_test_t__struct_164.T__struct_164), ({ _off : (0i64 : stdgo.GoInt64), _n : (0 : stdgo.GoInt), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _wanterr : (null : stdgo.AnyInterface) } : _internal.bytes_test.Bytes_test_t__struct_164.T__struct_164), ({ _off : (-1i64 : stdgo.GoInt64), _n : (0 : stdgo.GoInt), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _wanterr : new stdgo.AnyInterface(("bytes.Reader.ReadAt: negative offset" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))) } : _internal.bytes_test.Bytes_test_t__struct_164.T__struct_164)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _off : (0 : stdgo.GoInt64), _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _wanterr : (null : stdgo.AnyInterface) } : _internal.bytes_test.Bytes_test_t__struct_164.T__struct_164)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_164.T__struct_164>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L88"
        if (_tests != null) for (_i => _tt in _tests) {
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((_tt._n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _r.readAt(_b, _tt._off), _rn:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            var _got = @:assignType (((_b.__slice__(0, _rn) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L92"
            if (_got != (_tt._want)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L93"
                _t.errorf(("%d. got %q; want %q" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L95"
            if (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) != (stdgo._internal.fmt.Fmt_sprintf.sprintf((("%v" : stdgo.GoString) : stdgo.GoString), _tt._wanterr))) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L96"
                _t.errorf(("%d. got error = %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _tt._wanterr);
            };
        };
    }
