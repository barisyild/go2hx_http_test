package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
@:structInit @:using(_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macgeneric_static_extension.T_macGeneric_static_extension) @:using(_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macgeneric_static_extension.T_macGeneric_static_extension) class T_macGeneric {
    @:embedded
    public var _macState : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macstate.T_macState = ({} : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macstate.T_macState);
    public var _buffer : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public var _offset : stdgo.GoInt = 0;
    public function new(?_macState:_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macstate.T_macState, ?_buffer:stdgo.GoArray<stdgo.GoUInt8>, ?_offset:stdgo.GoInt) {
        if (_macState != null) this._macState = _macState;
        if (_buffer != null) this._buffer = _buffer;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_macState", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotpoly1305_t_macstatedott_macstate.__type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotPoly1305_t_macstatedotT_macState }, optional : false }, { name : "_buffer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 16) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_macGeneric(_macState, _buffer, _offset);
    }
}
