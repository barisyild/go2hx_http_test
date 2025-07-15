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
function testReadContinuedLine(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = stdgo._internal.net.textproto.Textproto__reader._reader(("line1\nline\n 2\nline3\n" : stdgo.GoString));
        var __tmp__ = _r.readContinuedLine(), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L42"
        if (((_s != ("line1" : stdgo.GoString)) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L43"
            _t.fatalf(("Line 1: %s, %v" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        {
            var __tmp__ = _r.readContinuedLine();
            _s = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L46"
        if (((_s != ("line 2" : stdgo.GoString)) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L47"
            _t.fatalf(("Line 2: %s, %v" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        {
            var __tmp__ = _r.readContinuedLine();
            _s = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L50"
        if (((_s != ("line3" : stdgo.GoString)) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L51"
            _t.fatalf(("Line 3: %s, %v" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        {
            var __tmp__ = _r.readContinuedLine();
            _s = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L54"
        if (((_s != (stdgo.Go.str() : stdgo.GoString)) || (({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) != ({
            final __t__ = stdgo._internal.io.Io_eof.eOF;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L55"
            _t.fatalf(("EOF: %s, %v" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
    }
