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
function _parseBMPString(_bmpString:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L493"
        if (((_bmpString.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L494"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("pkcs12: odd-length BMP string" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L498"
        {
            var _l = @:assignType (_bmpString.length : stdgo.GoInt);
            if ((((_l >= (2 : stdgo.GoInt) : Bool) && _bmpString[(_l - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((0 : stdgo.GoUInt8)) : Bool) && (_bmpString[(_l - (2 : stdgo.GoInt) : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
                _bmpString = (_bmpString.__slice__(0, (_l - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        var _s = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), ((_bmpString.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L503"
        while (((_bmpString.length) > (0 : stdgo.GoInt) : Bool)) {
            _s = (_s.__append__((((_bmpString[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) + (_bmpString[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo.Slice<stdgo.GoUInt16>);
            _bmpString = (_bmpString.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L508"
        return { _0 : (stdgo._internal.unicode.utf16.Utf16_decode.decode(_s) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
