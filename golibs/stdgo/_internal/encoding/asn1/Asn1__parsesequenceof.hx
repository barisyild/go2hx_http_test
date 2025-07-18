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
function _parseSequenceOf(_bytes:stdgo.Slice<stdgo.GoUInt8>, _sliceType:stdgo._internal.reflect.Reflect_type_.Type_, _elemType:stdgo._internal.reflect.Reflect_type_.Type_):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : stdgo.Error; } {
        var _ret = ({} : stdgo._internal.reflect.Reflect_value.Value), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__getuniversaltype._getUniversalType(_elemType), _matchAny:Bool = __tmp__._0, _expectedTag:stdgo.GoInt = __tmp__._1, _compoundType:Bool = __tmp__._2, _ok:Bool = __tmp__._3;
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L610"
        if (!_ok) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("unknown Go type for slice" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_structuralerrordotstructuralerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_structuralerrordotStructuralError);
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L612"
            return { _0 : _ret, _1 : _err };
        };
        var _numElements = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L618"
        {
            var _offset = @:assignType (0 : stdgo.GoInt);
            while ((_offset < (_bytes.length) : Bool)) {
                var _t:stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength = ({} : stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength);
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsetagandlength._parseTagAndLength(_bytes, _offset);
                    _t = @:tmpset0 __tmp__._0?.__copy__();
                    _offset = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L621"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L622"
                    return { _0 : _ret, _1 : _err };
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L624"
                {
                    final __value__ = _t._tag;
                    if (__value__ == ((22 : stdgo.GoInt)) || __value__ == ((27 : stdgo.GoInt)) || __value__ == ((20 : stdgo.GoInt)) || __value__ == ((12 : stdgo.GoInt)) || __value__ == ((18 : stdgo.GoInt)) || __value__ == ((30 : stdgo.GoInt))) {
                        _t._tag = (19 : stdgo.GoInt);
                    } else if (__value__ == ((24 : stdgo.GoInt)) || __value__ == ((23 : stdgo.GoInt))) {
                        _t._tag = (23 : stdgo.GoInt);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L635"
                if ((!_matchAny && (((_t._class != ((0 : stdgo.GoInt)) || _t._isCompound != (_compoundType) : Bool) || (_t._tag != _expectedTag) : Bool)) : Bool)) {
                    _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("sequence tag mismatch" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_structuralerrordotstructuralerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_structuralerrordotStructuralError);
                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L637"
                    return { _0 : _ret, _1 : _err };
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L639"
                if (stdgo._internal.encoding.asn1.Asn1__invalidlength._invalidLength(_offset, _t._length, (_bytes.length))) {
                    _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("truncated sequence" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_syntaxerrordotSyntaxError);
                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L641"
                    return { _0 : _ret, _1 : _err };
                };
                _offset = (_offset + (_t._length) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L644"
                _numElements++;
            };
        };
        _ret = stdgo._internal.reflect.Reflect_makeslice.makeSlice(_sliceType, _numElements, _numElements)?.__copy__();
        var _params = @:assignType (new stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters() : stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters);
        var _offset = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L649"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _numElements : Bool)) {
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsefield._parseField(_ret.index(_i).__copy__(), _bytes, _offset, _params.__copy__());
                    _offset = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
//"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L651"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L652"
                    return { _0 : _ret, _1 : _err };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L655"
        return { _0 : _ret, _1 : _err };
    }
