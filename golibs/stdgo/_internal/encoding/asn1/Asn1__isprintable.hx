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
function _isPrintable(_b:stdgo.GoUInt8, _asterisk:stdgo._internal.encoding.asn1.Asn1_t_asteriskflag.T_asteriskFlag, _ampersand:stdgo._internal.encoding.asn1.Asn1_t_ampersandflag.T_ampersandFlag):Bool {
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L434"
        return (((((((((((((97 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((48 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((39 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (41 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((43 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (47 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || _b == ((32 : stdgo.GoUInt8)) : Bool) || _b == ((58 : stdgo.GoUInt8)) : Bool) || _b == ((61 : stdgo.GoUInt8)) : Bool) || _b == ((63 : stdgo.GoUInt8)) : Bool) || (((_asterisk : Bool) && (_b == (42 : stdgo.GoUInt8)) : Bool)) : Bool) || (((_ampersand : Bool) && (_b == (38 : stdgo.GoUInt8)) : Bool)) : Bool);
    }
