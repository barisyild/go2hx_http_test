package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.internal.abi.Abi.IntArgRegBitmap_asInterface) class IntArgRegBitmap_static_extension {
    @:keep
    @:tdfield
    static public function get( _b:stdgo.Ref<stdgo._internal.internal.abi.Abi_intargregbitmap.IntArgRegBitmap>, _i:stdgo.GoInt):Bool {
        @:recv var _b:stdgo.Ref<stdgo._internal.internal.abi.Abi_intargregbitmap.IntArgRegBitmap> = _b;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L101"
        return (_b[(_i / (8 : stdgo.GoInt) : stdgo.GoInt)] & (((1 : stdgo.GoUInt8) << ((_i % (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoUInt8)) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function set( _b:stdgo.Ref<stdgo._internal.internal.abi.Abi_intargregbitmap.IntArgRegBitmap>, _i:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.internal.abi.Abi_intargregbitmap.IntArgRegBitmap> = _b;
        _b[(_i / (8 : stdgo.GoInt) : stdgo.GoInt)] = (_b[(_i / (8 : stdgo.GoInt) : stdgo.GoInt)] | (((1 : stdgo.GoUInt8) << ((_i % (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoUInt8)) : stdgo.GoUInt8);
    }
}
