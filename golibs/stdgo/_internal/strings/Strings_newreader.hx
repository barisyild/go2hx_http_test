package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function newReader(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader> {
        //"file:///Users/o/.go/go1.21.3/src/strings/reader.go#L160"
        return (stdgo.Go.setRef((new stdgo._internal.strings.Strings_reader.Reader(_s?.__copy__(), (0i64 : stdgo.GoInt64), (-1 : stdgo.GoInt)) : stdgo._internal.strings.Strings_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader })) : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>);
    }
