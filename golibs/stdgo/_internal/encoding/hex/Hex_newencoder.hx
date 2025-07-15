package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function newEncoder(_w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L156"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _w : _w } : stdgo._internal.encoding.hex.Hex_t_encoder.T_encoder), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdothexdothex_t_encoderdott_encoder.__type__stdgodot_internaldotencodingdothexdotHex_t_encoderdotT_encoder })) : stdgo.Ref<stdgo._internal.encoding.hex.Hex_t_encoder.T_encoder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdothexdothex_t_encoderdott_encoder.__type__stdgodot_internaldotencodingdothexdotHex_t_encoderdotT_encoder }));
    }
