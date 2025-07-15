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
function _parseBitString(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString; var _1 : stdgo.Error; } {
        var _ret = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L196"
        if ((_bytes.length) == ((0 : stdgo.GoInt))) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("zero length BIT STRING" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_syntaxerrordotSyntaxError);
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L198"
            return { _0 : _ret, _1 : _err };
        };
        var _paddingBits = @:assignType (_bytes[(0 : stdgo.GoInt)] : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L201"
        if ((((_paddingBits > (7 : stdgo.GoInt) : Bool) || ((_bytes.length) == ((1 : stdgo.GoInt)) && (_paddingBits > (0 : stdgo.GoInt) : Bool) : Bool) : Bool) || ((_bytes[((_bytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] & (((((1 : stdgo.GoUInt8) << _bytes[(0 : stdgo.GoInt)] : stdgo.GoUInt8)) - (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool)) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("invalid padding bits in BIT STRING" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_syntaxerrordotSyntaxError);
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L205"
            return { _0 : _ret, _1 : _err };
        };
        _ret.bitLength = (((((_bytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) - _paddingBits : stdgo.GoInt);
        _ret.bytes = (_bytes.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L209"
        return { _0 : _ret, _1 : _err };
    }
