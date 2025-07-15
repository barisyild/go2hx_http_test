package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
function _checkInteger(_bytes:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L80"
        if ((_bytes.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L81"
            return stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("empty integer" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_structuralerrordotstructuralerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_structuralerrordotStructuralError);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L83"
        if ((_bytes.length) == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L84"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L86"
        if (((((_bytes[(0 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) && ((_bytes[(1 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) || (((_bytes[(0 : stdgo.GoInt)] == (255 : stdgo.GoUInt8)) && ((_bytes[(1 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == (128 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L87"
            return stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("integer not minimally-encoded" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_structuralerrordotstructuralerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_structuralerrordotStructuralError);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L89"
        return (null : stdgo.Error);
    }
