package stdgo._internal.encoding.base64;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
function newEncoder(_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser {
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L274"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _enc : _enc, _w : _w } : stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbase64dotbase64_t_encoderdott_encoder.__type__stdgodot_internaldotencodingdotbase64dotBase64_t_encoderdotT_encoder })) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbase64dotbase64_t_encoderdott_encoder.__type__stdgodot_internaldotencodingdotbase64dotBase64_t_encoderdotT_encoder }));
    }
