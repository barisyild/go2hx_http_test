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
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_190:stdgo.GoInt = (0 : stdgo.GoInt);
        var _iterator_4838323_189:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_188:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_185:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_170:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_169:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _next_169 = (123 : stdgo.GoUInt8);
                    _gotoNext = 4838172i64;
                } else if (__value__ == (4838172i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L680"
                    if ((0i64 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 4838714i64;
                    } else {
                        _gotoNext = 4838718i64;
                    };
                } else if (__value__ == (4838214i64)) {
                    _f_185 = (stdgo.Go.setRef(_se._fields._list[(_i_170 : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_fielddott_field.__type__stdgodot_internaldotencodingdotjsondotJson_t_fielddotT_field })) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_188 = _v?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L685"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _f_185 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index.length)) {
                        _gotoNext = 4838471i64;
                    } else {
                        _gotoNext = 4838477i64;
                    };
                } else if (__value__ == (4838337i64)) {
                    _i_190 = (@:checkr _f_185 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index[(_iterator_4838323_189 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L686"
                    if (_fv_188.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 4838374i64;
                    } else {
                        _gotoNext = 4838453i64;
                    };
                } else if (__value__ == (4838374i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L687"
                    if (_fv_188.isNil()) {
                        _gotoNext = 4838394i64;
                    } else {
                        _gotoNext = 4838430i64;
                    };
                } else if (__value__ == (4838394i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L680"
                    _i_170++;
                    _gotoNext = 4838715i64;
                } else if (__value__ == (4838430i64)) {
                    _fv_188 = _fv_188.elem()?.__copy__();
                    _gotoNext = 4838453i64;
                } else if (__value__ == (4838453i64)) {
                    _fv_188 = _fv_188.field(_i_190)?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L685"
                    _iterator_4838323_189++;
                    _gotoNext = 4838472i64;
                } else if (__value__ == (4838471i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (@:checkr _f_185 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index[(0i64 : stdgo.GoInt)];
                        _iterator_4838323_189 = @:binopAssign __tmp__0;
                        _i_190 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4838472i64;
                } else if (__value__ == (4838472i64)) {
                    //"file://#L0"
                    if (_iterator_4838323_189 < ((@:checkr _f_185 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index.length)) {
                        _gotoNext = 4838337i64;
                    } else {
                        _gotoNext = 4838477i64;
                    };
                } else if (__value__ == (4838477i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L695"
                    if (((@:checkr _f_185 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_188?.__copy__()) : Bool)) {
                        _gotoNext = 4838512i64;
                    } else {
                        _gotoNext = 4838532i64;
                    };
                } else if (__value__ == (4838512i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L680"
                    _i_170++;
                    _gotoNext = 4838715i64;
                } else if (__value__ == (4838532i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L698"
                    _e.writeByte(_next_169);
                    _next_169 = (44 : stdgo.GoUInt8);
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L700"
                    if (_opts._escapeHTML) {
                        _gotoNext = 4838584i64;
                    } else {
                        _gotoNext = 4838627i64;
                    };
                } else if (__value__ == (4838584i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L701"
                    _e.writeString((@:checkr _f_185 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nameEscHTML?.__copy__());
                    _gotoNext = 4838666i64;
                } else if (__value__ == (4838627i64)) {
                    _gotoNext = 4838627i64;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L703"
                    _e.writeString((@:checkr _f_185 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nameNonEsc?.__copy__());
                    0i64;
                    _gotoNext = 4838666i64;
                } else if (__value__ == (4838666i64)) {
                    _opts._quoted = (@:checkr _f_185 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quoted;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L706"
                    (@:checkr _f_185 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._encoder(_e, _fv_188?.__copy__(), _opts?.__copy__());
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L680"
                    _i_170++;
                    _gotoNext = 4838715i64;
                } else if (__value__ == (4838714i64)) {
                    _i_170 = 0i64;
                    _gotoNext = 4838715i64;
                } else if (__value__ == (4838715i64)) {
                    //"file://#L0"
                    if (_i_170 < (_se._fields._list.length)) {
                        _gotoNext = 4838214i64;
                    } else {
                        _gotoNext = 4838718i64;
                    };
                } else if (__value__ == (4838718i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L708"
                    if (_next_169 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 4838733i64;
                    } else {
                        _gotoNext = 4838765i64;
                    };
                } else if (__value__ == (4838733i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L709"
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 4838789i64;
                } else if (__value__ == (4838765i64)) {
                    _gotoNext = 4838765i64;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L711"
                    _e.writeByte((125 : stdgo.GoUInt8));
                    0i64;
                    _gotoNext = 4838789i64;
                } else if (__value__ == (4838789i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
}
