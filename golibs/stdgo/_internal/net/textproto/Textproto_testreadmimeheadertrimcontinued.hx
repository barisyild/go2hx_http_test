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
function testReadMIMEHeaderTrimContinued(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = stdgo._internal.net.textproto.Textproto__reader._reader(("a:\n 0 \r\nb:1 \t\r\nc: 2\r\n 3\t\n  \t 4  \r\n\n" : stdgo.GoString));
        var __tmp__ = _r.readMIMEHeader(), _m:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L298"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L299"
            _t.fatal(({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        var _want = @:assignType (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            x.set(("A" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("0" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
x.set(("B" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("1" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
x.set(("C" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("2 3 4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L306"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface(stdgo.Go.asInterface(_m, _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader)), new stdgo.AnyInterface(stdgo.Go.asInterface(_want, _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader)))) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L307"
            _t.fatalf(("ReadMIMEHeader mismatch.\n got: %q\nwant: %q" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_m, _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader)), new stdgo.AnyInterface(stdgo.Go.asInterface(_want, _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader)));
        };
    }
