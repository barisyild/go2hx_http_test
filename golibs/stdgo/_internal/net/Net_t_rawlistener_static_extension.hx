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
@:keep @:allow(stdgo._internal.net.Net.T_rawListener_asInterface) class T_rawListener_static_extension {
    @:keep
    @:tdfield
    static public function write( _l:stdgo.Ref<stdgo._internal.net.Net_t_rawlistener.T_rawListener>, _0:stdgo.GoUIntptr -> Bool):stdgo.Error {
        @:recv var _l:stdgo.Ref<stdgo._internal.net.Net_t_rawlistener.T_rawListener> = _l;
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L91"
        return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
    }
    @:keep
    @:tdfield
    static public function read( _l:stdgo.Ref<stdgo._internal.net.Net_t_rawlistener.T_rawListener>, _0:stdgo.GoUIntptr -> Bool):stdgo.Error {
        @:recv var _l:stdgo.Ref<stdgo._internal.net.Net_t_rawlistener.T_rawListener> = _l;
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L87"
        return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _ok( __self__:stdgo._internal.net.Net_t_rawlistener.T_rawListener):Bool return @:_5 __self__._ok();
    @:embedded
    @:embeddededffieldsffun
    public static function pollFD( __self__:stdgo._internal.net.Net_t_rawlistener.T_rawListener):stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> return @:_5 __self__.pollFD();
    @:embedded
    @:embeddededffieldsffun
    public static function control( __self__:stdgo._internal.net.Net_t_rawlistener.T_rawListener, _0:stdgo.GoUIntptr -> Void):stdgo.Error return @:_5 __self__.control(_0);
}
