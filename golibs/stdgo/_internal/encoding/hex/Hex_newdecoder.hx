package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function newDecoder(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L185"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _r } : stdgo._internal.encoding.hex.Hex_t_decoder.T_decoder), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdothexdothex_t_decoderdott_decoder.__type__stdgodot_internaldotencodingdothexdotHex_t_decoderdotT_decoder })) : stdgo.Ref<stdgo._internal.encoding.hex.Hex_t_decoder.T_decoder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdothexdothex_t_decoderdott_decoder.__type__stdgodot_internaldotencodingdothexdotHex_t_decoderdotT_decoder }));
    }
