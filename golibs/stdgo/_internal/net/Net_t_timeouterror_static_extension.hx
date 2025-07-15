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
@:keep @:allow(stdgo._internal.net.Net.T_timeoutError_asInterface) class T_timeoutError_static_extension {
    @:keep
    @:tdfield
    static public function is_( _e:stdgo.Ref<stdgo._internal.net.Net_t_timeouterror.T_timeoutError>, _err:stdgo.Error):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.Net_t_timeouterror.T_timeoutError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L601"
        return ({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == (({
            final __t__ = stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }));
    }
    @:keep
    @:tdfield
    static public function temporary( _e:stdgo.Ref<stdgo._internal.net.Net_t_timeouterror.T_timeoutError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.Net_t_timeouterror.T_timeoutError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L598"
        return true;
    }
    @:keep
    @:tdfield
    static public function timeout( _e:stdgo.Ref<stdgo._internal.net.Net_t_timeouterror.T_timeoutError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.Net_t_timeouterror.T_timeoutError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L597"
        return true;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.net.Net_t_timeouterror.T_timeoutError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.Net_t_timeouterror.T_timeoutError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L596"
        return ("i/o timeout" : stdgo.GoString);
    }
}
