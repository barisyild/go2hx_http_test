package stdgo._internal.os.signal;
import stdgo._internal.context.Context;
@:keep @:allow(stdgo._internal.os.signal.Signal.T_handler_asInterface) class T_handler_static_extension {
    @:keep
    @:tdfield
    static public function _clear( _h:stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler>, _sig:stdgo.GoInt):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler> = _h;
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mask[(_sig / (32 : stdgo.GoInt) : stdgo.GoInt)] = ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mask[(_sig / (32 : stdgo.GoInt) : stdgo.GoInt)] & (((((1u32 : stdgo.GoUInt32) << ((_sig & (31 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt32)) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _set( _h:stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler>, _sig:stdgo.GoInt):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler> = _h;
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mask[(_sig / (32 : stdgo.GoInt) : stdgo.GoInt)] = ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mask[(_sig / (32 : stdgo.GoInt) : stdgo.GoInt)] | (((1u32 : stdgo.GoUInt32) << ((_sig & (31 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt32)) : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _want( _h:stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler>, _sig:stdgo.GoInt):Bool {
        @:recv var _h:stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler> = _h;
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L37"
        return ((((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mask[(_sig / (32 : stdgo.GoInt) : stdgo.GoInt)] >> ((_sig & (31 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt32)) & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
}
