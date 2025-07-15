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
function testLargeReadMIMEHeader(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoUInt8>((16384 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L180"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_data.length) : Bool)) {
                _data[(_i : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
                _i++;
            };
        };
        var _sdata = @:assignType ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _r = stdgo._internal.net.textproto.Textproto__reader._reader(((("Cookie: " : stdgo.GoString) + _sdata?.__copy__() : stdgo.GoString) + ("\r\n\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        var __tmp__ = _r.readMIMEHeader(), _m:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L186"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L187"
            _t.fatalf(("ReadMIMEHeader: %v" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        var _cookie = @:assignType (_m.get(("Cookie" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L190"
        if (_cookie != (_sdata)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L191"
            _t.fatalf(("ReadMIMEHeader: %v bytes, want %v bytes" : stdgo.GoString), new stdgo.AnyInterface((_cookie.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_sdata.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }
