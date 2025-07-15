package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function newConn(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn> {
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/textproto.go#L66"
        return (stdgo.Go.setRef(({ reader : ({ r : stdgo._internal.bufio.Bufio_newreader.newReader(_conn) } : stdgo._internal.net.textproto.Textproto_reader.Reader), writer : ({ w : stdgo._internal.bufio.Bufio_newwriter.newWriter(_conn) } : stdgo._internal.net.textproto.Textproto_writer.Writer), _conn : _conn } : stdgo._internal.net.textproto.Textproto_conn.Conn), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_conndotconn.__type__stdgodot_internaldotnetdottextprotodotTextproto_conndotConn })) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn>);
    }
