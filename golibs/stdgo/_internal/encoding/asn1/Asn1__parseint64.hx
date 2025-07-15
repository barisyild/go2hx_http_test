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
function _parseInt64(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _ret = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        _err = stdgo._internal.encoding.asn1.Asn1__checkinteger._checkInteger(_bytes);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L96"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L97"
            return { _0 : _ret, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L99"
        if (((_bytes.length) > (8 : stdgo.GoInt) : Bool)) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("integer too large" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_structuralerrordotstructuralerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_structuralerrordotStructuralError);
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L102"
            return { _0 : _ret, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L104"
        {
            var _bytesRead = @:assignType (0 : stdgo.GoInt);
            while ((_bytesRead < (_bytes.length) : Bool)) {
                _ret = (_ret << ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
_ret = (_ret | ((_bytes[(_bytesRead : stdgo.GoInt)] : stdgo.GoInt64)) : stdgo.GoInt64);
                _bytesRead++;
            };
        };
        _ret = (_ret << (((64 : stdgo.GoUInt8) - ((_bytes.length : stdgo.GoUInt8) * (8 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoInt64);
        _ret = (_ret >> (((64 : stdgo.GoUInt8) - ((_bytes.length : stdgo.GoUInt8) * (8 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L112"
        return { _0 : _ret, _1 : _err };
    }
