package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function _mustHaveFieldNameColon(_line:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L590"
        if ((stdgo._internal.bytes.Bytes_indexbyte.indexByte(_line, (58 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L591"
            return stdgo.Go.asInterface((stdgo._internal.fmt.Fmt_sprintf.sprintf(("malformed MIME header: missing colon: %q" : stdgo.GoString), new stdgo.AnyInterface(_line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })))) : stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_protocolerrordotprotocolerror.__type__stdgodot_internaldotnetdottextprotodotTextproto_protocolerrordotProtocolError);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L593"
        return (null : stdgo.Error);
    }
