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
function _makeUTF8String(_s:stdgo.GoString):stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder {
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L350"
        return stdgo.Go.asInterface((_s : stdgo._internal.encoding.asn1.Asn1_t_stringencoder.T_stringEncoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_stringencoderdott_stringencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_stringencoderdotT_stringEncoder);
    }
