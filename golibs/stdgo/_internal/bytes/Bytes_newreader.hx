package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function newReader(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader> {
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader.go#L159"
        return (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_reader.Reader(_b, (0i64 : stdgo.GoInt64), (-1 : stdgo.GoInt)) : stdgo._internal.bytes.Bytes_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader })) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>);
    }
