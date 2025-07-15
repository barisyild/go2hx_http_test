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
function testReadCodeLine(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = stdgo._internal.net.textproto.Textproto__reader._reader(("123 hi\n234 bye\n345 no way\n" : stdgo.GoString));
        var __tmp__ = _r.readCodeLine((0 : stdgo.GoInt)), _code:stdgo.GoInt = __tmp__._0, _msg:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L62"
        if (((_code != ((123 : stdgo.GoInt)) || _msg != (("hi" : stdgo.GoString)) : Bool) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L63"
            _t.fatalf(("Line 1: %d, %s, %v" : stdgo.GoString), new stdgo.AnyInterface(_code, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_msg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        {
            var __tmp__ = _r.readCodeLine((23 : stdgo.GoInt));
            _code = @:tmpset0 __tmp__._0;
            _msg = @:tmpset0 __tmp__._1?.__copy__();
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L66"
        if (((_code != ((234 : stdgo.GoInt)) || _msg != (("bye" : stdgo.GoString)) : Bool) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L67"
            _t.fatalf(("Line 2: %d, %s, %v" : stdgo.GoString), new stdgo.AnyInterface(_code, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_msg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        {
            var __tmp__ = _r.readCodeLine((346 : stdgo.GoInt));
            _code = @:tmpset0 __tmp__._0;
            _msg = @:tmpset0 __tmp__._1?.__copy__();
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L70"
        if (((_code != ((345 : stdgo.GoInt)) || _msg != (("no way" : stdgo.GoString)) : Bool) || (_err == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L71"
            _t.fatalf(("Line 3: %d, %s, %v" : stdgo.GoString), new stdgo.AnyInterface(_code, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_msg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L73"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_errordoterror.__type__stdgodot_internaldotnetdottextprotodotTextproto_errordotError })) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_error.Error>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.textproto.Textproto_error.Error>), _1 : false };
            }, _e = __tmp__._0, _ok = __tmp__._1;
            if (((!_ok || (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).code != (_code) : Bool) || ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).msg != _msg) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L74"
                _t.fatalf(("Line 3: wrong error %v\n" : stdgo.GoString), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        {
            var __tmp__ = _r.readCodeLine((1 : stdgo.GoInt));
            _code = @:tmpset0 __tmp__._0;
            _msg = @:tmpset0 __tmp__._1?.__copy__();
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L77"
        if (((_code != ((0 : stdgo.GoInt)) || _msg != ((stdgo.Go.str() : stdgo.GoString)) : Bool) || (({
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
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L78"
            _t.fatalf(("EOF: %d, %s, %v" : stdgo.GoString), new stdgo.AnyInterface(_code, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_msg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
    }
