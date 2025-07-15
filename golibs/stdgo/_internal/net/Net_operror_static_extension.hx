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
@:keep @:allow(stdgo._internal.net.Net.OpError_asInterface) class OpError_static_extension {
    @:keep
    @:tdfield
    static public function temporary( _e:stdgo.Ref<stdgo._internal.net.Net_operror.OpError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.Net_operror.OpError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L523"
        if ((((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ("accept" : stdgo.GoString)) && stdgo._internal.net.Net__isconnerror._isConnError((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L524"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L527"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_syscallerrordotsyscallerror.__type__stdgodot_internaldotosdotOs_syscallerrordotSyscallError })) : stdgo.Ref<stdgo._internal.os.Os_syscallerror.SyscallError>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.os.Os_syscallerror.SyscallError>), _1 : false };
            }, _ne = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = (@:checkr _ne ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_temporarydott_temporary.__type__stdgodot_internaldotnetdotNet_t_temporarydotT_temporary) : stdgo._internal.net.Net_t_temporary.T_temporary), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo._internal.net.Net_t_temporary.T_temporary), _1 : false };
                }, _t = __tmp__._0, _ok = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/net.go#L529"
                return (_ok && _t.temporary() : Bool);
            };
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_temporarydott_temporary.__type__stdgodot_internaldotnetdotNet_t_temporarydotT_temporary) : stdgo._internal.net.Net_t_temporary.T_temporary), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.net.Net_t_temporary.T_temporary), _1 : false };
        }, _t = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L532"
        return (_ok && _t.temporary() : Bool);
    }
    @:keep
    @:tdfield
    static public function timeout( _e:stdgo.Ref<stdgo._internal.net.Net_operror.OpError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.Net_operror.OpError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L508"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_syscallerrordotsyscallerror.__type__stdgodot_internaldotosdotOs_syscallerrordotSyscallError })) : stdgo.Ref<stdgo._internal.os.Os_syscallerror.SyscallError>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.os.Os_syscallerror.SyscallError>), _1 : false };
            }, _ne = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = (@:checkr _ne ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_timeoutdott_timeout.__type__stdgodot_internaldotnetdotNet_t_timeoutdotT_timeout) : stdgo._internal.net.Net_t_timeout.T_timeout), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo._internal.net.Net_t_timeout.T_timeout), _1 : false };
                }, _t = __tmp__._0, _ok = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/net.go#L510"
                return (_ok && _t.timeout() : Bool);
            };
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_timeoutdott_timeout.__type__stdgodot_internaldotnetdotNet_t_timeoutdotT_timeout) : stdgo._internal.net.Net_t_timeout.T_timeout), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.net.Net_t_timeout.T_timeout), _1 : false };
        }, _t = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L513"
        return (_ok && _t.timeout() : Bool);
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.net.Net_operror.OpError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.Net_operror.OpError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L470"
        if (({
            final value = _e;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L471"
            return ("<nil>" : stdgo.GoString);
        };
        var _s = @:assignType ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L474"
        if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).net != ((stdgo.Go.str() : stdgo.GoString))) {
            _s = (_s + (((" " : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).net?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L477"
        if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).source != null) {
            _s = (_s + (((" " : stdgo.GoString) + ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).source.string() : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L480"
        if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).addr != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L481"
            if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).source != null) {
                _s = (_s + (("->" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            } else {
                _s = (_s + ((" " : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _s = (_s + (((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).addr.string() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        _s = (_s + (((": " : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err.error()?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L489"
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.net.Net_operror.OpError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.Net_operror.OpError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L467"
        return (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
    }
}
