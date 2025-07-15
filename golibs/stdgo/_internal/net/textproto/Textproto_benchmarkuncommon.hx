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
function benchmarkUncommon(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L511"
        _b.reportAllocs();
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _br = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })));
        var _r = stdgo._internal.net.textproto.Textproto_newreader.newReader(_br);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L515"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L516"
                _buf.writeString(("uncommon-header-for-benchmark: foo\r\n\r\n" : stdgo.GoString));
var __tmp__ = _r.readMIMEHeader(), _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L518"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L519"
                    _b.fatal(({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
//"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L521"
                {
                    var __tmp__ = (_h != null && _h.__exists__(("Uncommon-Header-For-Benchmark" : stdgo.GoString)) ? { _0 : _h[("Uncommon-Header-For-Benchmark" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L522"
                        _b.fatal(new stdgo.AnyInterface(("Missing result header." : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                };
                _i++;
            };
        };
    }
