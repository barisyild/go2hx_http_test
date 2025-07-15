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
function _parseObjectIdentifier(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier; var _1 : stdgo.Error; } {
        var _s = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L258"
        if ((_bytes.length) == ((0 : stdgo.GoInt))) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("zero length OBJECT IDENTIFIER" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_syntaxerrordotSyntaxError);
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L260"
            return { _0 : _s, _1 : _err };
        };
        _s = (new stdgo.Slice<stdgo.GoInt>(((_bytes.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsebase128int._parseBase128Int(_bytes, (0 : stdgo.GoInt)), _v:stdgo.GoInt = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L272"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L273"
            return { _0 : _s, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L275"
        if ((_v < (80 : stdgo.GoInt) : Bool)) {
            _s[(0 : stdgo.GoInt)] = (_v / (40 : stdgo.GoInt) : stdgo.GoInt);
            _s[(1 : stdgo.GoInt)] = (_v % (40 : stdgo.GoInt) : stdgo.GoInt);
        } else {
            _s[(0 : stdgo.GoInt)] = (2 : stdgo.GoInt);
            _s[(1 : stdgo.GoInt)] = (_v - (80 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _i = @:assignType (2 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L284"
        while ((_offset < (_bytes.length) : Bool)) {
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsebase128int._parseBase128Int(_bytes, _offset);
                _v = @:tmpset0 __tmp__._0;
                _offset = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
//"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L286"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L287"
                return { _0 : _s, _1 : _err };
            };
_s[(_i : stdgo.GoInt)] = _v;
            _i++;
        };
        _s = (_s.__slice__((0 : stdgo.GoInt), _i) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L292"
        return { _0 : _s, _1 : _err };
    }
