package stdgo._internal.net;
import stdgo._internal.net.netip.Netip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.os.Os;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.internal.poll.Poll;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.Io;
import stdgo._internal.sync.atomic_.Atomic_;
import _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.net.Net.T_onlyValuesCtx_asInterface) class T_onlyValuesCtx_static_extension {
    @:keep
    @:tdfield
    static public function value( _ovc:stdgo.Ref<stdgo._internal.net.Net_t_onlyvaluesctx.T_onlyValuesCtx>, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        @:recv var _ovc:stdgo.Ref<stdgo._internal.net.Net_t_onlyvaluesctx.T_onlyValuesCtx> = _ovc;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L276"
        {
            {
                var __select__ = true;
                var __c__0 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = (@:checkr _ovc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lookupValues.done();
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L278"
                                return (null : stdgo.AnyInterface);
                            };
                        };
                    } else {
                        __select__ = false;
                        {
                            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L280"
                            return (@:checkr _ovc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lookupValues.value(_key);
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
            };
            return (null : stdgo.AnyInterface);
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:stdgo._internal.net.Net_t_onlyvaluesctx.T_onlyValuesCtx):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function done( __self__:stdgo._internal.net.Net_t_onlyvaluesctx.T_onlyValuesCtx):stdgo.Chan<{ }> return @:_5 __self__.done();
    @:embedded
    @:embeddededffieldsffun
    public static function deadline( __self__:stdgo._internal.net.Net_t_onlyvaluesctx.T_onlyValuesCtx):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_5 __self__.deadline();
}
