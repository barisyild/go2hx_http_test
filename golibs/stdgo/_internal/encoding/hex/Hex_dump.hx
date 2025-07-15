package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function dump(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L129"
        if ((_data.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L130"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L137"
        _buf.grow(((((1 : stdgo.GoInt) + (((((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) * (79 : stdgo.GoInt) : stdgo.GoInt));
        var _dumper = @:assignType (stdgo._internal.encoding.hex.Hex_dumper.dumper(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder }))) : stdgo._internal.io.Io_writecloser.WriteCloser);
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L140"
        _dumper.write(_data);
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L141"
        _dumper.close();
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L142"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
