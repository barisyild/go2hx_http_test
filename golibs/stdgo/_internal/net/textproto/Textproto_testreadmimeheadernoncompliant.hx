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
function testReadMIMEHeaderNonCompliant(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = stdgo._internal.net.textproto.Textproto__reader._reader(("Foo: bar\r\nContent-Language: en\r\nSID : 0\r\nAudio Mode : None\r\nPrivilege : 127\r\n\r\n" : stdgo.GoString));
        var __tmp__ = _r.readMIMEHeader(), _m:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _want = @:assignType (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            x.set(("Foo" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
x.set(("Content-Language" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("en" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
x.set(("SID " : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("0" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
x.set(("Audio Mode " : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("None" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
x.set(("Privilege " : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("127" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L212"
        if ((!stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface(stdgo.Go.asInterface(_m, _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader)), new stdgo.AnyInterface(stdgo.Go.asInterface(_want, _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader))) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L213"
            _t.fatalf(("ReadMIMEHeader =\n%v, %v; want:\n%v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_m, _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader)), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), new stdgo.AnyInterface(stdgo.Go.asInterface(_want, _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader)));
        };
    }
