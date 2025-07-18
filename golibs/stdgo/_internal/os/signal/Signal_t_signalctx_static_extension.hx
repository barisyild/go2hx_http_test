package stdgo._internal.os.signal;
import stdgo._internal.context.Context;
@:keep @:allow(stdgo._internal.os.signal.Signal.T_signalCtx_asInterface) class T_signalCtx_static_extension {
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.os.signal.Signal_t_signalctx.T_signalCtx>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.signal.Signal_t_signalctx.T_signalCtx> = _c;
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _name = @:assignType (((stdgo.Go.typeAssert(({
            final __t__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), _internal.gotype.Gotype___type__stdgodot_internaldotosdotsignaldotsignal_t_stringerdott_stringer.__type__stdgodot_internaldotosdotsignaldotSignal_t_stringerdotT_stringer) : stdgo._internal.os.signal.Signal_t_stringer.T_stringer).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _name = (_name.__slice__(0, ((_name.length) - (((".WithCancel" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _buf = (_buf.__append__(...((("signal.NotifyContext(" : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L322"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signals.length) != ((0 : stdgo.GoInt))) {
            _buf = (_buf.__append__(...(((", [" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L324"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signals != null) for (_i => _s in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signals) {
                _buf = (_buf.__append__(...((_s.string() : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L326"
                if (_i != ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signals.length) - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _buf = (_buf.__append__((32 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
            _buf = (_buf.__append__((93 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _buf = (_buf.__append__((41 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L333"
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _stop( _c:stdgo.Ref<stdgo._internal.os.signal.Signal_t_signalctx.T_signalCtx>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.signal.Signal_t_signalctx.T_signalCtx> = _c;
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L307"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancel();
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L308"
        stdgo._internal.os.signal.Signal_stop.stop((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function value( __self__:stdgo._internal.os.signal.Signal_t_signalctx.T_signalCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface return @:_5 __self__.value(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:stdgo._internal.os.signal.Signal_t_signalctx.T_signalCtx):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function done( __self__:stdgo._internal.os.signal.Signal_t_signalctx.T_signalCtx):stdgo.Chan<{ }> return @:_5 __self__.done();
    @:embedded
    @:embeddededffieldsffun
    public static function deadline( __self__:stdgo._internal.os.signal.Signal_t_signalctx.T_signalCtx):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_5 __self__.deadline();
}
