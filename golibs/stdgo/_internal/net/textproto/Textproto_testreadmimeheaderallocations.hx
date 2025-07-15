package stdgo._internal.net.textproto;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.testing.Testing;
import stdgo._internal.net.Net;
function testReadMIMEHeaderAllocations(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _totalAlloc:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {};
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L315"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (200 : stdgo.GoInt) : Bool)) {
                var _r = stdgo._internal.net.textproto.Textproto__reader._reader((("A: b\r\n\r\n" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("\n" : stdgo.GoString), (4096 : stdgo.GoInt)).__copy__() : stdgo.GoString).__copy__());
var _m1:stdgo._internal.runtime.Runtime_memstats.MemStats = ({} : stdgo._internal.runtime.Runtime_memstats.MemStats), _m2:stdgo._internal.runtime.Runtime_memstats.MemStats = ({} : stdgo._internal.runtime.Runtime_memstats.MemStats);
//"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L318"
                stdgo._internal.runtime.Runtime_readmemstats.readMemStats((stdgo.Go.setRef(_m1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_memstatsdotmemstats.__type__stdgodot_internaldotruntimedotRuntime_memstatsdotMemStats })) : stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats>));
var __tmp__ = _r.readMIMEHeader(), __0:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L320"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L321"
                    _t.fatalf(("ReadMIMEHeader: %v" : stdgo.GoString), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
//"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L323"
                stdgo._internal.runtime.Runtime_readmemstats.readMemStats((stdgo.Go.setRef(_m2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_memstatsdotmemstats.__type__stdgodot_internaldotruntimedotRuntime_memstatsdotMemStats })) : stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats>));
_totalAlloc = (_totalAlloc + ((_m2.totalAlloc - _m1.totalAlloc : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L328"
        {
            var __0 = @:assignType (_totalAlloc / (200i64 : stdgo.GoUInt64) : stdgo.GoUInt64), __1 = @:assignType ((32768i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
var _want = __1, _got = __0;
            if ((_got > _want : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L329"
                _t.fatalf(("ReadMIMEHeader allocated %v bytes, want < %v" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
            };
        };
    }
