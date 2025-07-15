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
@:keep @:allow(stdgo._internal.encoding.json.Json.T_condAddrEncoder_asInterface) class T_condAddrEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _ce:stdgo._internal.encoding.json.Json_t_condaddrencoder.T_condAddrEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _ce:stdgo._internal.encoding.json.Json_t_condaddrencoder.T_condAddrEncoder = _ce?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L892"
        if (_v.canAddr()) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L893"
            _ce._canAddrEnc(_e, _v?.__copy__(), _opts?.__copy__());
        } else {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L895"
            _ce._elseEnc(_e, _v?.__copy__(), _opts?.__copy__());
        };
    }
}
