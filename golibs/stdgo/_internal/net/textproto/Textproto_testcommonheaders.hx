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
function testCommonHeaders(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L416"
        stdgo._internal.net.textproto.Textproto__commonheaderonce._commonHeaderOnce.do_(stdgo._internal.net.textproto.Textproto__initcommonheader._initCommonHeader);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L417"
        if (stdgo._internal.net.textproto.Textproto__commonheader._commonHeader != null) for (_h => _ in stdgo._internal.net.textproto.Textproto__commonheader._commonHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L418"
            if (_h != (stdgo._internal.net.textproto.Textproto_canonicalmimeheaderkey.canonicalMIMEHeaderKey(_h?.__copy__()))) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L419"
                _t.errorf(("Non-canonical header %q in commonHeader" : stdgo.GoString), new stdgo.AnyInterface(_h, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        var _b = ((("content-Length" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _want = @:assignType (("Content-Length" : stdgo.GoString) : stdgo.GoString);
        var _n = @:assignType (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((200 : stdgo.GoInt), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L425"
            {
                var __tmp__ = stdgo._internal.net.textproto.Textproto__canonicalmimeheaderkey._canonicalMIMEHeaderKey(_b), _x:stdgo.GoString = __tmp__._0, __0:Bool = __tmp__._1;
                if (_x != (_want)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L426"
                    _t.fatalf(("canonicalMIMEHeaderKey(%q) = %q; want %q" : stdgo.GoString), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        }) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L429"
        if ((_n > (0 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L430"
            _t.errorf(("canonicalMIMEHeaderKey allocs = %v; want 0" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
        };
    }
