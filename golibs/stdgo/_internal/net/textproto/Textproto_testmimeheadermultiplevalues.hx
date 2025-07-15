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
function testMIMEHeaderMultipleValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testHeader = @:assignType (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            x.set(("Set-Cookie" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("cookie 1" : stdgo.GoString), ("cookie 2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader);
        var _values = _testHeader.values(("set-cookie" : stdgo.GoString));
        var _n = @:assignType (_values.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/header_test.go#L51"
        if (_n != ((2 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/header_test.go#L52"
            _t.errorf(("count: %d; want 2" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }
