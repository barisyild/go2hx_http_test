package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function newReader(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> {
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L33"
        return (stdgo.Go.setRef(({ r : _r } : stdgo._internal.net.textproto.Textproto_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_readerdotreader.__type__stdgodot_internaldotnetdottextprotodotTextproto_readerdotReader })) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
    }
