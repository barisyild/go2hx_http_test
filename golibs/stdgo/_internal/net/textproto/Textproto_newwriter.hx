package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function newWriter(_w:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer> {
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L22"
        return (stdgo.Go.setRef(({ w : _w } : stdgo._internal.net.textproto.Textproto_writer.Writer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_writerdotwriter.__type__stdgodot_internaldotnetdottextprotodotTextproto_writerdotWriter })) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>);
    }
