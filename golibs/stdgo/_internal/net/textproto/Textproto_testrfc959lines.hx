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
function testRFC959Lines(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L370"
        if (stdgo._internal.net.textproto.Textproto__readresponsetests._readResponseTests != null) for (_i => _tt in stdgo._internal.net.textproto.Textproto__readresponsetests._readResponseTests) {
            var _r = stdgo._internal.net.textproto.Textproto__reader._reader((_tt._in + ("\nFOLLOWING DATA" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            var __tmp__ = _r.readResponse(_tt._inCode), _code:stdgo.GoInt = __tmp__._0, _msg:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L373"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L374"
                _t.errorf(("#%d: ReadResponse: %v" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L375"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L377"
            if (_code != (_tt._wantCode)) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L378"
                _t.errorf(("#%d: code=%d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_code, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_tt._wantCode, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L380"
            if (_msg != (_tt._wantMsg)) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L381"
                _t.errorf(("#%d: msg=%q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_msg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._wantMsg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
