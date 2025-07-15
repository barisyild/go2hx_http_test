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
function _reader(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> {
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L20"
        return stdgo._internal.net.textproto.Textproto_newreader.newReader(stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_s?.__copy__()), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader }))));
    }
