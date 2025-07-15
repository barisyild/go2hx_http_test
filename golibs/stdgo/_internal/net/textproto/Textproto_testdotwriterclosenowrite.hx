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
function testDotWriterCloseNoWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _w = stdgo._internal.net.textproto.Textproto_newwriter.newWriter(stdgo._internal.bufio.Bufio_newwriter.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder }))));
        var _d = @:assignType (_w.dotWriter() : stdgo._internal.io.Io_writecloser.WriteCloser);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer_test.go#L56"
        _d.close();
        var _want = @:assignType (("\r\n.\r\n" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer_test.go#L58"
        {
            var _s = @:assignType ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer_test.go#L59"
                _t.fatalf(("wrote %q; want %q" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
