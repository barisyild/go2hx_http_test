package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_t_input_static_extension.T_input_static_extension) @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_t_input_static_extension.T_input_static_extension) class T_input {
    public var _str : stdgo.GoString = "";
    public var _bytes : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_str:stdgo.GoString, ?_bytes:stdgo.Slice<stdgo.GoUInt8>) {
        if (_str != null) this._str = _str;
        if (_bytes != null) this._bytes = _bytes;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_bytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_input(_str, _bytes);
    }
}
