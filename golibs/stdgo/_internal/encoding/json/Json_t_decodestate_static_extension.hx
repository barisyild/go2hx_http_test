package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_decodeState_asInterface) class T_decodeState_static_extension {
    @:keep
    @:tdfield
    static public function _literalInterface( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):stdgo.AnyInterface {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var _start = @:assignType (_d._readIndex() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1118"
        _d._rescanLiteral();
        var _item = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.__slice__(_start, _d._readIndex()) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1122"
        {
            var _c = @:assignType (_item[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            {
                final __value__ = _c;
                if (__value__ == ((110 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1124"
                    return (null : stdgo.AnyInterface);
                } else if (__value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((102 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1127"
                    return new stdgo.AnyInterface(_c == ((116 : stdgo.GoUInt8)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind)));
                } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                    var __tmp__ = stdgo._internal.encoding.json.Json__unquote._unquote(_item), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1131"
                    if (!_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1132"
                        throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1134"
                    return new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1137"
                    if (((_c != (45 : stdgo.GoUInt8)) && (((_c < (48 : stdgo.GoUInt8) : Bool) || (_c > (57 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1138"
                        throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    };
                    var __tmp__ = _d._convertNumber((_item : stdgo.GoString)?.__copy__()), _n:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1141"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1142"
                        _d._saveError(_err);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1144"
                    return _n;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _objectInterface( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1066"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1068"
            _d._scanWhile((9 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1069"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode == ((5 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1071"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1073"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode != ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1074"
                throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            var _start = @:assignType (_d._readIndex() : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1079"
            _d._rescanLiteral();
            var _item = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.__slice__(_start, _d._readIndex()) : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.encoding.json.Json__unquote._unquote(_item), _key:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1082"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1083"
                throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1087"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode == ((9 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1088"
                _d._scanWhile((9 : stdgo.GoInt));
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1090"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode != ((3 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1091"
                throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1093"
            _d._scanWhile((9 : stdgo.GoInt));
            _m[_key] = _d._valueInterface();
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1099"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode == ((9 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1100"
                _d._scanWhile((9 : stdgo.GoInt));
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1102"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode == ((5 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1103"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1105"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode != ((4 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1106"
                throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1109"
        return _m;
    }
    @:keep
    @:tdfield
    static public function _arrayInterface( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):stdgo.Slice<stdgo.AnyInterface> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var _v = (new stdgo.Slice<stdgo.AnyInterface>((0 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1040"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1042"
            _d._scanWhile((9 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1043"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode == ((8 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1044"
                break;
            };
            _v = (_v.__append__(_d._valueInterface()) : stdgo.Slice<stdgo.AnyInterface>);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1050"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode == ((9 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1051"
                _d._scanWhile((9 : stdgo.GoInt));
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1053"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode == ((8 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1054"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1056"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode != ((7 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1057"
                throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1060"
        return _v;
    }
    @:keep
    @:tdfield
    static public function _valueInterface( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):stdgo.AnyInterface {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var _val = (null : stdgo.AnyInterface);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1022"
        {
            final __value__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode;
            if (__value__ == ((6 : stdgo.GoInt))) {
                _val = new stdgo.AnyInterface(_d._arrayInterface(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })));
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1027"
                _d._scanNext();
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _val = new stdgo.AnyInterface(_d._objectInterface(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })));
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1030"
                _d._scanNext();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _val = _d._literalInterface();
            } else {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1024"
                throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1034"
        return _val;
    }
    @:keep
    @:tdfield
    static public function _literalStore( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _item:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo._internal.reflect.Reflect_value.Value, _fromQuoted:Bool):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L844"
        if ((_item.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L846"
            _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), new stdgo.AnyInterface(_item, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), ({
                final __t__ = _v.type();
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })));
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L847"
            return (null : stdgo.Error);
        };
        var _isNull = @:assignType (_item[(0 : stdgo.GoInt)] == ((110 : stdgo.GoUInt8)) : Bool);
        var __tmp__ = stdgo._internal.encoding.json.Json__indirect._indirect(_v?.__copy__(), _isNull), _u:stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler = __tmp__._0, _ut:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler = __tmp__._1, _pv:stdgo._internal.reflect.Reflect_value.Value = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L851"
        if (_u != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L852"
            return _u.unmarshalJSON(_item);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L854"
        if (_ut != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L855"
            if (_item[(0 : stdgo.GoInt)] != ((34 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L856"
                if (_fromQuoted) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L857"
                    _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), new stdgo.AnyInterface(_item, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), ({
                        final __t__ = _v.type();
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    })));
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L858"
                    return (null : stdgo.Error);
                };
                var _val = @:assignType (("number" : stdgo.GoString) : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L861"
                {
                    final __value__ = _item[(0 : stdgo.GoInt)];
                    if (__value__ == ((110 : stdgo.GoUInt8))) {
                        _val = ("null" : stdgo.GoString);
                    } else if (__value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((102 : stdgo.GoUInt8))) {
                        _val = ("bool" : stdgo.GoString);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L867"
                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : _val?.__copy__(), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L868"
                return (null : stdgo.Error);
            };
            var __tmp__ = stdgo._internal.encoding.json.Json__unquotebytes._unquoteBytes(_item), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L871"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L872"
                if (_fromQuoted) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L873"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), new stdgo.AnyInterface(_item, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), ({
                        final __t__ = _v.type();
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L875"
                throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L877"
            return _ut.unmarshalText(_s);
        };
        _v = _pv?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L882"
        {
            var _c = @:assignType (_item[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _c;
                        if (__value__ == ((110 : stdgo.GoUInt8))) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L886"
                            if ((_fromQuoted && ((_item : stdgo.GoString) != ("null" : stdgo.GoString)) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L887"
                                _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), new stdgo.AnyInterface(_item, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), ({
                                    final __t__ = _v.type();
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                })));
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L888"
                                break;
                            };
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L890"
                            {
                                final __value__ = _v.kind();
                                if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L892"
                                    _v.setZero();
                                };
                            };
                            break;
                        } else if (__value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((102 : stdgo.GoUInt8))) {
                            var _value = @:assignType (_item[(0 : stdgo.GoInt)] == ((116 : stdgo.GoUInt8)) : Bool);
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L899"
                            if (((_fromQuoted && (_item : stdgo.GoString) != (("true" : stdgo.GoString)) : Bool) && ((_item : stdgo.GoString) != ("false" : stdgo.GoString)) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L900"
                                _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), new stdgo.AnyInterface(_item, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), ({
                                    final __t__ = _v.type();
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                })));
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L901"
                                break;
                            };
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L903"
                            {
                                final __value__ = _v.kind();
                                if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L911"
                                    _v.setBool(_value);
                                } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L913"
                                    if (_v.numMethod() == ((0 : stdgo.GoInt))) {
                                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L914"
                                        _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))))?.__copy__());
                                    } else {
                                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L916"
                                        _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("bool" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
                                    };
                                } else {
                                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L905"
                                    if (_fromQuoted) {
                                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L906"
                                        _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), new stdgo.AnyInterface(_item, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), ({
                                            final __t__ = _v.type();
                                            if (__t__ == null) {
                                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                                            } else {
                                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                            };
                                        })));
                                    } else {
                                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L908"
                                        _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("bool" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
                                    };
                                };
                            };
                            break;
                        } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                            var __tmp__ = stdgo._internal.encoding.json.Json__unquotebytes._unquoteBytes(_item), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L922"
                            if (!_ok) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L923"
                                if (_fromQuoted) {
                                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L924"
                                    return stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), new stdgo.AnyInterface(_item, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), ({
                                        final __t__ = _v.type();
                                        if (__t__ == null) {
                                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                                        } else {
                                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                        };
                                    }));
                                };
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L926"
                                throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                            };
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L928"
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _v.kind();
                                        if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L932"
                                            if (_v.type().elem().kind() != ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L933"
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("string" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L934"
                                                break;
                                            };
                                            var _b = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.decodedLen((_s.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                            var __tmp__ = stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.decode(_b, _s), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L938"
                                            if (_err != null) {
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L939"
                                                _d._saveError(_err);
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L940"
                                                break;
                                            };
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L942"
                                            _v.setBytes((_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                                            break;
                                        } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L944"
                                            if ((((_v.type().string() : String) == (stdgo._internal.encoding.json.Json__numbertype._numberType.string() : String)) && !stdgo._internal.encoding.json.Json__isvalidnumber._isValidNumber((_s : stdgo.GoString)?.__copy__()) : Bool)) {
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L945"
                                                return stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid number literal, trying to unmarshal %q into Number" : stdgo.GoString), new stdgo.AnyInterface(_item, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                                            };
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L947"
                                            _v.setString((_s : stdgo.GoString)?.__copy__());
                                            break;
                                        } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L949"
                                            if (_v.numMethod() == ((0 : stdgo.GoInt))) {
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L950"
                                                _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((_s : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
                                            } else {
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L952"
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("string" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
                                            };
                                            break;
                                        } else {
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L930"
                                            _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("string" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
                                        };
                                    };
                                    break;
                                };
                            };
                            break;
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L957"
                            if (((_c != (45 : stdgo.GoUInt8)) && (((_c < (48 : stdgo.GoUInt8) : Bool) || (_c > (57 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L958"
                                if (_fromQuoted) {
                                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L959"
                                    return stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), new stdgo.AnyInterface(_item, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), ({
                                        final __t__ = _v.type();
                                        if (__t__ == null) {
                                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                                        } else {
                                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                        };
                                    }));
                                };
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L961"
                                throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                            };
                            var _s = @:assignType ((_item : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L964"
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _v.kind();
                                        if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            var __tmp__ = _d._convertNumber(_s?.__copy__()), _n:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L978"
                                            if (_err != null) {
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L979"
                                                _d._saveError(_err);
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L980"
                                                break;
                                            };
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L982"
                                            if (_v.numMethod() != ((0 : stdgo.GoInt))) {
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L983"
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L984"
                                                break;
                                            };
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L986"
                                            _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(_n)?.__copy__());
                                            break;
                                        } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_s?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L990"
                                            if (((_err != null) || _v.overflowInt(_n) : Bool)) {
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L991"
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L992"
                                                break;
                                            };
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L994"
                                            _v.setInt(_n);
                                            break;
                                        } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_s?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L998"
                                            if (((_err != null) || _v.overflowUint(_n) : Bool)) {
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L999"
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1000"
                                                break;
                                            };
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1002"
                                            _v.setUint(_n);
                                            break;
                                        } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_s?.__copy__(), _v.type().bits()), _n:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1006"
                                            if (((_err != null) || _v.overflowFloat(_n) : Bool)) {
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1007"
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1008"
                                                break;
                                            };
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1010"
                                            _v.setFloat(_n);
                                            break;
                                        } else {
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L966"
                                            if (((_v.kind() == (24u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && ((_v.type().string() : String) == (stdgo._internal.encoding.json.Json__numbertype._numberType.string() : String)) : Bool)) {
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L969"
                                                _v.setString(_s?.__copy__());
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L970"
                                                break;
                                            };
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L972"
                                            if (_fromQuoted) {
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L973"
                                                return stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), new stdgo.AnyInterface(_item, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), ({
                                                    final __t__ = _v.type();
                                                    if (__t__ == null) {
                                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                                                    } else {
                                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                    };
                                                }));
                                            };
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L975"
                                            _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
                                        };
                                    };
                                    break;
                                };
                            };
                        };
                    };
                    break;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1013"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _convertNumber( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _s:stdgo.GoString):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L825"
        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._useNumber) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L826"
            return { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface((_s : stdgo._internal.encoding.json.Json_number.Number), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_numberdotnumber.__type__stdgodot_internaldotencodingdotjsondotJson_numberdotNumber), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_numberdotnumber.__type__stdgodot_internaldotencodingdotjsondotJson_numberdotNumber)), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_s?.__copy__(), (64 : stdgo.GoInt)), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L829"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L830"
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind)))), offset : ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L832"
        return { _0 : new stdgo.AnyInterface(_f, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _object( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var __tmp__ = stdgo._internal.encoding.json.Json__indirect._indirect(_v?.__copy__(), false), _u:stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler = __tmp__._0, _ut:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler = __tmp__._1, _pv:stdgo._internal.reflect.Reflect_value.Value = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L601"
        if (_u != null) {
            var _start = @:assignType (_d._readIndex() : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L603"
            _d._skip();
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L604"
            return _u.unmarshalJSON(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.__slice__(_start, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off) : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L606"
        if (_ut != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L607"
            _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("object" : stdgo.GoString), type : _v.type(), offset : ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L608"
            _d._skip();
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L609"
            return (null : stdgo.Error);
        };
        _v = _pv?.__copy__();
        var _t = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L615"
        if (((_v.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (_v.numMethod() == (0 : stdgo.GoInt)) : Bool)) {
            var _oi = _d._objectInterface();
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L617"
            _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_oi, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }))))?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L618"
            return (null : stdgo.Error);
        };
        var _fields:stdgo._internal.encoding.json.Json_t_structfields.T_structFields = ({} : stdgo._internal.encoding.json.Json_t_structfields.T_structFields);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L627"
        {
            final __value__ = _v.kind();
            if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L631"
                {
                    final __value__ = _t.key().kind();
                    if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {} else {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L636"
                        if (!stdgo._internal.reflect.Reflect_pointerto.pointerTo(_t.key()).implements_(stdgo._internal.encoding.json.Json__textunmarshalertype._textUnmarshalerType)) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L637"
                            _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("object" : stdgo.GoString), type : _t, offset : ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L638"
                            _d._skip();
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L639"
                            return (null : stdgo.Error);
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L642"
                if (_v.isNil()) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L643"
                    _v.set(stdgo._internal.reflect.Reflect_makemap.makeMap(_t)?.__copy__());
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _fields = stdgo._internal.encoding.json.Json__cachedtypefields._cachedTypeFields(_t)?.__copy__();
            } else {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L649"
                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("object" : stdgo.GoString), type : _t, offset : ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L650"
                _d._skip();
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L651"
                return (null : stdgo.Error);
            };
        };
        var _mapElem:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _origErrorContext:stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext = ({} : stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L656"
        if (({
            final value = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            _origErrorContext = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext : stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L660"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L662"
            _d._scanWhile((9 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L663"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode == ((5 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L665"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L667"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode != ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L668"
                throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            var _start = @:assignType (_d._readIndex() : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L673"
            _d._rescanLiteral();
            var _item = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.__slice__(_start, _d._readIndex()) : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.encoding.json.Json__unquotebytes._unquoteBytes(_item), _key:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L676"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L677"
                throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            var _subv:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
            var _destring = @:assignType (false : Bool);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L684"
            if (_v.kind() == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _elemType = @:assignType (_t.elem() : stdgo._internal.reflect.Reflect_type_.Type_);
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L686"
                if (!_mapElem.isValid()) {
                    _mapElem = stdgo._internal.reflect.Reflect_new_.new_(_elemType).elem()?.__copy__();
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L689"
                    _mapElem.setZero();
                };
                _subv = _mapElem?.__copy__();
            } else {
                var _f = (_fields._byExactName[(_key : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>));
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L694"
                if (({
                    final value = _f;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    _f = (_fields._byFoldedName[(stdgo._internal.encoding.json.Json__foldname._foldName(_key) : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>));
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L697"
                if (({
                    final value = _f;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    _subv = _v?.__copy__();
                    _destring = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quoted;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L700"
                    if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index != null) for (__2 => _i in (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L701"
                        if (_subv.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L702"
                            if (_subv.isNil()) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L708"
                                if (!_subv.canSet()) {
                                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L709"
                                    _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: cannot set embedded pointer to unexported struct: %v" : stdgo.GoString), ({
                                        final __t__ = _subv.type().elem();
                                        if (__t__ == null) {
                                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                                        } else {
                                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                        };
                                    })));
                                    _subv = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
                                    _destring = false;
                                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L714"
                                    break;
                                };
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L716"
                                _subv.set(stdgo._internal.reflect.Reflect_new_.new_(_subv.type().elem())?.__copy__());
                            };
                            _subv = _subv.elem()?.__copy__();
                        };
                        _subv = _subv.field(_i)?.__copy__();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L722"
                    if (({
                        final value = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext = (stdgo.Go.setRef(({} : stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_errorcontextdott_errorcontext.__type__stdgodot_internaldotencodingdotjsondotJson_t_errorcontextdotT_errorContext })) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext>);
                    };
                    (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fieldStack = ((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fieldStack.__append__((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext ?? throw stdgo.Error._nullPointerDereference.__underlying__()).struct_ = _t;
                } else if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._disallowUnknownFields) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L728"
                    _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: unknown field %q" : stdgo.GoString), new stdgo.AnyInterface(_key, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L733"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode == ((9 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L734"
                _d._scanWhile((9 : stdgo.GoInt));
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L736"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode != ((3 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L737"
                throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L739"
            _d._scanWhile((9 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L741"
            if (_destring) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L742"
                {
                    final __type__ = _d._valueQuoted();
                    if (__type__ == null) {
                        var _qv:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : __type__.__underlying__();
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L744"
                        {
                            var _err = @:assignType (_d._literalStore(stdgo._internal.encoding.json.Json__nullliteral._nullLiteral, _subv?.__copy__(), false) : stdgo.Error);
                            if (_err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L745"
                                return _err;
                            };
                        };
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(string_kind))) {
                        var _qv:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L748"
                        {
                            var _err = @:assignType (_d._literalStore((_qv : stdgo.Slice<stdgo.GoUInt8>), _subv?.__copy__(), true) : stdgo.Error);
                            if (_err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L749"
                                return _err;
                            };
                        };
                    } else {
                        var _qv:stdgo.AnyInterface = __type__?.__underlying__();
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L752"
                        _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal unquoted value into %v" : stdgo.GoString), ({
                            final __t__ = _subv.type();
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        })));
                    };
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L755"
                {
                    var _err = @:assignType (_d._value(_subv?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L756"
                        return _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L762"
            if (_v.kind() == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _kt = @:assignType (_t.key() : stdgo._internal.reflect.Reflect_type_.Type_);
                var _kv:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L765"
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        if (stdgo._internal.reflect.Reflect_pointerto.pointerTo(_kt).implements_(stdgo._internal.encoding.json.Json__textunmarshalertype._textUnmarshalerType)) {
                            _kv = stdgo._internal.reflect.Reflect_new_.new_(_kt)?.__copy__();
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L768"
                            {
                                var _err = @:assignType (_d._literalStore(_item, _kv?.__copy__(), true) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L769"
                                    return _err;
                                };
                            };
                            _kv = _kv.elem()?.__copy__();
                            break;
                        } else if (_kt.kind() == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            _kv = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_key, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })))).convert(_kt)?.__copy__();
                            break;
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L775"
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _kt.kind();
                                        if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            var _s = @:assignType ((_key : stdgo.GoString)?.__copy__() : stdgo.GoString);
                                            var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_s?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L779"
                                            if (((_err != null) || stdgo._internal.reflect.Reflect_zero.zero(_kt).overflowInt(_n) : Bool)) {
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L780"
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : _kt, offset : ((_start + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L781"
                                                break;
                                            };
                                            _kv = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind)))).convert(_kt)?.__copy__();
                                            break;
                                        } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            var _s = @:assignType ((_key : stdgo.GoString)?.__copy__() : stdgo.GoString);
                                            var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_s?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L787"
                                            if (((_err != null) || stdgo._internal.reflect.Reflect_zero.zero(_kt).overflowUint(_n) : Bool)) {
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L788"
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : _kt, offset : ((_start + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
                                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L789"
                                                break;
                                            };
                                            _kv = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind)))).convert(_kt)?.__copy__();
                                            break;
                                        } else {
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L793"
                                            throw new stdgo.AnyInterface(("json: Unexpected key type" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                                        };
                                    };
                                    break;
                                };
                            };
                        };
                        break;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L796"
                if (_kv.isValid()) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L797"
                    _v.setMapIndex(_kv?.__copy__(), _subv?.__copy__());
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L802"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode == ((9 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L803"
                _d._scanWhile((9 : stdgo.GoInt));
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L805"
            if (({
                final value = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fieldStack = ((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fieldStack.__slice__(0, (_origErrorContext.fieldStack.length)) : stdgo.Slice<stdgo.GoString>);
                (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext ?? throw stdgo.Error._nullPointerDereference.__underlying__()).struct_ = _origErrorContext.struct_;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L812"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode == ((5 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L813"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L815"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode != ((4 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L816"
                throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L819"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _array( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var __tmp__ = stdgo._internal.encoding.json.Json__indirect._indirect(_v?.__copy__(), false), _u:stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler = __tmp__._0, _ut:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler = __tmp__._1, _pv:stdgo._internal.reflect.Reflect_value.Value = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L504"
        if (_u != null) {
            var _start = @:assignType (_d._readIndex() : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L506"
            _d._skip();
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L507"
            return _u.unmarshalJSON(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.__slice__(_start, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off) : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L509"
        if (_ut != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L510"
            _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("array" : stdgo.GoString), type : _v.type(), offset : ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L511"
            _d._skip();
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L512"
            return (null : stdgo.Error);
        };
        _v = _pv?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L517"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _v.kind();
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L519"
                        if (_v.numMethod() == ((0 : stdgo.GoInt))) {
                            var _ai = _d._arrayInterface();
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L522"
                            _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_ai, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }))))?.__copy__());
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L523"
                            return (null : stdgo.Error);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L526"
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))))) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L532"
                        break;
                        break;
                        break;
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L528"
                        _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("array" : stdgo.GoString), type : _v.type(), offset : ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError })));
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L529"
                        _d._skip();
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L530"
                        return (null : stdgo.Error);
                        break;
                    };
                };
                break;
            };
        };
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L536"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L538"
            _d._scanWhile((9 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L539"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode == ((8 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L540"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L544"
            if (_v.kind() == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L545"
                if ((_i >= _v.cap() : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L546"
                    _v.grow((1 : stdgo.GoInt));
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L548"
                if ((_i >= _v.len() : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L549"
                    _v.setLen((_i + (1 : stdgo.GoInt) : stdgo.GoInt));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L553"
            if ((_i < _v.len() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L555"
                {
                    var _err = @:assignType (_d._value(_v.index(_i)?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L556"
                        return _err;
                    };
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L560"
                {
                    var _err = @:assignType (_d._value((new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value)) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L561"
                        return _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L564"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L567"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode == ((9 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L568"
                _d._scanWhile((9 : stdgo.GoInt));
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L570"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode == ((8 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L571"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L573"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode != ((7 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L574"
                throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L578"
        if ((_i < _v.len() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L579"
            if (_v.kind() == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L580"
                while ((_i < _v.len() : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L581"
                    _v.index(_i).setZero();
                    _i++;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L584"
                _v.setLen(_i);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L587"
        if (((_i == (0 : stdgo.GoInt)) && (_v.kind() == (23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L588"
            _v.set(stdgo._internal.reflect.Reflect_makeslice.makeSlice(_v.type(), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L590"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _valueQuoted( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):stdgo.AnyInterface {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L403"
        {
            final __value__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode;
            if (__value__ == ((6 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L408"
                _d._skip();
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L409"
                _d._scanNext();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                var _v = @:assignType (_d._literalInterface() : stdgo.AnyInterface);
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L413"
                {
                    final __type__ = _v;
                    if (__type__ == null || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(string_kind))) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L415"
                        return _v;
                    };
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L405"
                throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L418"
        return new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue() : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_unquotedvaluedott_unquotedvalue.__type__stdgodot_internaldotencodingdotjsondotJson_t_unquotedvaluedotT_unquotedValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_unquotedvaluedott_unquotedvalue.__type__stdgodot_internaldotencodingdotjsondotJson_t_unquotedvaluedotT_unquotedValue));
    }
    @:keep
    @:tdfield
    static public function _value( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L358"
        {
            final __value__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode;
            if (__value__ == ((6 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L363"
                if (_v.isValid()) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L364"
                    {
                        var _err = @:assignType (_d._array(_v?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L365"
                            return _err;
                        };
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L368"
                    _d._skip();
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L370"
                _d._scanNext();
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L373"
                if (_v.isValid()) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L374"
                    {
                        var _err = @:assignType (_d._object(_v?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L375"
                            return _err;
                        };
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L378"
                    _d._skip();
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L380"
                _d._scanNext();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                var _start = @:assignType (_d._readIndex() : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L385"
                _d._rescanLiteral();
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L387"
                if (_v.isValid()) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L388"
                    {
                        var _err = @:assignType (_d._literalStore(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.__slice__(_start, _d._readIndex()) : stdgo.Slice<stdgo.GoUInt8>), _v?.__copy__(), false) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L389"
                            return _err;
                        };
                    };
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L360"
                throw new stdgo.AnyInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L393"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _rescanLiteral( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var switchBreak = false;
        var _i_168:stdgo.GoInt = (0 : stdgo.GoInt);
        var _data_167:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    {
                        final __tmp__0 = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data;
                        final __tmp__1 = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off;
                        _data_167 = @:binopAssign __tmp__0;
                        _i_168 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4678557i64;
                } else if (__value__ == (4678557i64)) {
                    switchBreak = false;
                    _gotoNext = 4678566i64;
                } else if (__value__ == (4678566i64)) {
                    //"file://#L0"
                    if (!switchBreak) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L319"
                        {
                            final __value__ = _data_167[(_i_168 - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            if (__value__ == ((34 : stdgo.GoUInt8))) {
                                _gotoNext = 4678586i64;
                            } else if (__value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8)) || __value__ == ((45 : stdgo.GoUInt8))) {
                                _gotoNext = 4678775i64;
                            } else if (__value__ == ((116 : stdgo.GoUInt8))) {
                                _gotoNext = 4679020i64;
                            } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                                _gotoNext = 4679057i64;
                            } else if (__value__ == ((110 : stdgo.GoUInt8))) {
                                _gotoNext = 4679096i64;
                            } else {
                                _gotoNext = 4679136i64;
                            };
                        };
                    } else {
                        _gotoNext = 4679136i64;
                    };
                } else if (__value__ == (4678586i64)) {
                    0i64;
                    _gotoNext = 4678608i64;
                } else if (__value__ == (4678608i64)) {
                    //"file://#L0"
                    if ((_i_168 < (_data_167.length) : Bool)) {
                        _gotoNext = 4678633i64;
                    } else {
                        _gotoNext = 4679136i64;
                    };
                } else if (__value__ == (4678629i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L321"
                    _i_168++;
                    _gotoNext = 4678608i64;
                } else if (__value__ == (4678633i64)) {
                    _gotoNext = 4678638i64;
                } else if (__value__ == (4678638i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L322"
                    {
                        final __value__ = _data_167[(_i_168 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4678658i64;
                        } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                            _gotoNext = 4678696i64;
                        } else {
                            _gotoNext = 4678629i64;
                        };
                    };
                } else if (__value__ == (4678658i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L324"
                    _i_168++;
                    _gotoNext = 4678629i64;
                } else if (__value__ == (4678696i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L326"
                    _i_168++;
                    switchBreak = true;
                    _gotoNext = 4678566i64;
                } else if (__value__ == (4678775i64)) {
                    0i64;
                    _gotoNext = 4678847i64;
                } else if (__value__ == (4678847i64)) {
                    //"file://#L0"
                    if ((_i_168 < (_data_167.length) : Bool)) {
                        _gotoNext = 4678872i64;
                    } else {
                        _gotoNext = 4679136i64;
                    };
                } else if (__value__ == (4678868i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L331"
                    _i_168++;
                    _gotoNext = 4678847i64;
                } else if (__value__ == (4678872i64)) {
                    _gotoNext = 4678877i64;
                } else if (__value__ == (4678877i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L332"
                    {
                        final __value__ = _data_167[(_i_168 : stdgo.GoInt)];
                        if (__value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8)) || __value__ == ((46 : stdgo.GoUInt8)) || __value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((45 : stdgo.GoUInt8))) {
                            _gotoNext = 4678897i64;
                        } else {
                            _gotoNext = 4678984i64;
                        };
                    };
                } else if (__value__ == (4678897i64)) {
                    _gotoNext = 4678868i64;
                } else if (__value__ == (4678984i64)) {
                    switchBreak = true;
                    _gotoNext = 4678566i64;
                } else if (__value__ == (4679020i64)) {
                    _i_168 = (_i_168 + (((("rue" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoInt);
                    _gotoNext = 4679136i64;
                } else if (__value__ == (4679057i64)) {
                    _i_168 = (_i_168 + (((("alse" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoInt);
                    _gotoNext = 4679136i64;
                } else if (__value__ == (4679096i64)) {
                    _i_168 = (_i_168 + (((("ull" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoInt);
                    _gotoNext = 4679136i64;
                } else if (__value__ == (4679136i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L346"
                    if ((_i_168 < (_data_167.length) : Bool)) {
                        _gotoNext = 4679153i64;
                    } else {
                        _gotoNext = 4679208i64;
                    };
                } else if (__value__ == (4679153i64)) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode = stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue((stdgo.Go.setRef((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_scannerdott_scanner.__type__stdgodot_internaldotencodingdotjsondotJson_t_scannerdotT_scanner })) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), _data_167[(_i_168 : stdgo.GoInt)]);
                    _gotoNext = 4679235i64;
                } else if (__value__ == (4679208i64)) {
                    _gotoNext = 4679208i64;
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode = (10 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 4679235i64;
                } else if (__value__ == (4679235i64)) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = (_i_168 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = -1i64;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _scanWhile( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _op:stdgo.GoInt):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var __0 = (stdgo.Go.setRef((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_scannerdott_scanner.__type__stdgodot_internaldotencodingdotjsondotJson_t_scannerdotT_scanner })) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), __1 = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data, __2 = @:assignType ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off : stdgo.GoInt);
var _i = __2, _data = __1, _s = __0;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L294"
        while ((_i < (_data.length) : Bool)) {
            var _newOp = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step(_s, _data[(_i : stdgo.GoInt)]) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L296"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L297"
            if (_newOp != (_op)) {
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode = _newOp;
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = _i;
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L300"
                return;
            };
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = ((_data.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan._eof();
    }
    @:keep
    @:tdfield
    static public function _scanNext( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L281"
        if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off < ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.length) : Bool)) {
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan._step((stdgo.Go.setRef((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_scannerdott_scanner.__type__stdgodot_internaldotencodingdotjsondotJson_t_scannerdotT_scanner })) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data[((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off : stdgo.GoInt)]);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L283"
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off++;
        } else {
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan._eof();
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
    }
    @:keep
    @:tdfield
    static public function _skip( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var __0 = (stdgo.Go.setRef((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_scannerdott_scanner.__type__stdgodot_internaldotencodingdotjsondotJson_t_scannerdotT_scanner })) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), __1 = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data, __2 = @:assignType ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off : stdgo.GoInt);
var _i = __2, _data = __1, _s = __0;
        var _depth = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parseState.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L268"
        while (true) {
            var _op = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step(_s, _data[(_i : stdgo.GoInt)]) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L270"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L271"
            if ((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parseState.length) < _depth : Bool)) {
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = _i;
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opcode = _op;
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L274"
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _addErrorContext( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _err:stdgo.Error):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L254"
        if ((({
            final value = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext ?? throw stdgo.Error._nullPointerDereference.__underlying__()).struct_ != null) || (((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fieldStack.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L255"
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshaltypeerrordotunmarshaltypeerror.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshaltypeerrordotUnmarshalTypeError }))) {
                    var _err:stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>) : __type__.__underlying__().value);
                    (@:checkr _err ?? throw stdgo.Error._nullPointerDereference.__underlying__()).struct_ = (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext ?? throw stdgo.Error._nullPointerDereference.__underlying__()).struct_.name()?.__copy__();
                    (@:checkr _err ?? throw stdgo.Error._nullPointerDereference.__underlying__()).field = stdgo._internal.strings.Strings_join.join((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fieldStack, ("." : stdgo.GoString))?.__copy__();
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L261"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _saveError( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _err:stdgo.Error):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L247"
        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._savedError == null) {
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._savedError = _d._addErrorContext(_err);
        };
    }
    @:keep
    @:tdfield
    static public function _init( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data = _data;
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = (0 : stdgo.GoInt);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._savedError = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L236"
        if (({
            final value = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext ?? throw stdgo.Error._nullPointerDereference.__underlying__()).struct_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
            (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fieldStack = ((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorContext ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fieldStack.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L241"
        return _d;
    }
    @:keep
    @:tdfield
    static public function _readIndex( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L224"
        return ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off - (1 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _unmarshal( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var _rv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_v)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L173"
        if (((_rv.kind() != (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || _rv.isNil() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L174"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError(stdgo._internal.reflect.Reflect_typeof.typeOf(_v)) : stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_invalidunmarshalerrordotinvalidunmarshalerror.__type__stdgodot_internaldotencodingdotjsondotJson_invalidunmarshalerrordotInvalidUnmarshalError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_invalidunmarshalerrordotinvalidunmarshalerror.__type__stdgodot_internaldotencodingdotjsondotJson_invalidunmarshalerrordotInvalidUnmarshalError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L177"
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan._reset();
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L178"
        _d._scanWhile((9 : stdgo.GoInt));
        var _err = @:assignType (_d._value(_rv?.__copy__()) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L182"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L183"
            return _d._addErrorContext(_err);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L185"
        return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._savedError;
    }
}
