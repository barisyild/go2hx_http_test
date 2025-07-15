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
function testDotWriterCloseEmptyWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _w = stdgo._internal.net.textproto.Textproto_newwriter.newWriter(stdgo._internal.bufio.Bufio_newwriter.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder }))));
        var _d = @:assignType (_w.dotWriter() : stdgo._internal.io.Io_writecloser.WriteCloser);
        var __tmp__ = _d.write((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer_test.go#L42"
        if (((_n != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer_test.go#L43"
            _t.fatalf(("Write: %d, %s" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer_test.go#L45"
        _d.close();
        var _want = @:assignType (("\r\n.\r\n" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer_test.go#L47"
        {
            var _s = @:assignType ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer_test.go#L48"
                _t.fatalf(("wrote %q; want %q" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
