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
function unmarshalWithParams(_b:stdgo.Slice<stdgo.GoUInt8>, _val:stdgo.AnyInterface, _params:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _rest = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_val)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L1117"
        if (((_v.kind() != (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || _v.isNil() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L1118"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.asn1.Asn1_t_invalidunmarshalerror.T_invalidUnmarshalError(stdgo._internal.reflect.Reflect_typeof.typeOf(_val)) : stdgo._internal.encoding.asn1.Asn1_t_invalidunmarshalerror.T_invalidUnmarshalError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_invalidunmarshalerrordott_invalidunmarshalerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_invalidunmarshalerrordotT_invalidUnmarshalError })) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_invalidunmarshalerror.T_invalidUnmarshalError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_invalidunmarshalerrordott_invalidunmarshalerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_invalidunmarshalerrordotT_invalidUnmarshalError })) };
                _rest = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsefield._parseField(_v.elem()?.__copy__(), _b, (0 : stdgo.GoInt), stdgo._internal.encoding.asn1.Asn1__parsefieldparameters._parseFieldParameters(_params?.__copy__())?.__copy__()), _offset:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L1121"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L1122"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                _rest = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L1124"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (_b.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            _rest = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
