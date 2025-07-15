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
function testCanonicalMIMEHeaderKey(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/header_test.go#L37"
        if (stdgo._internal.net.textproto.Textproto__canonicalheaderkeytests._canonicalHeaderKeyTests != null) for (__0 => _tt in stdgo._internal.net.textproto.Textproto__canonicalheaderkeytests._canonicalHeaderKeyTests) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/header_test.go#L38"
            {
                var _s = @:assignType (stdgo._internal.net.textproto.Textproto_canonicalmimeheaderkey.canonicalMIMEHeaderKey(_tt._in?.__copy__())?.__copy__() : stdgo.GoString);
                if (_s != (_tt._out)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/textproto/header_test.go#L39"
                    _t.errorf(("CanonicalMIMEHeaderKey(%q) = %q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_tt._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
    }
