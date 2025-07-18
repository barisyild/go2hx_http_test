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
@:keep @:allow(stdgo._internal.encoding.json.Json.T_arrayEncoder_asInterface) class T_arrayEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _ae:stdgo._internal.encoding.json.Json_t_arrayencoder.T_arrayEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _ae:stdgo._internal.encoding.json.Json_t_arrayencoder.T_arrayEncoder = _ae?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L843"
        _e.writeByte((91 : stdgo.GoUInt8));
        var _n = @:assignType (_v.len() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L845"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L846"
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L847"
                    _e.writeByte((44 : stdgo.GoUInt8));
                };
//"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L849"
                _ae._elemEnc(_e, _v.index(_i).__copy__(), _opts.__copy__());
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L851"
        _e.writeByte((93 : stdgo.GoUInt8));
    }
}
