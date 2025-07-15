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
@:keep @:allow(stdgo._internal.net.Net.T__struct_46_asInterface) class T__struct_46_static_extension {
    @:embedded
    @:localembedfields
    public static function _doSlow( __self__:stdgo._internal.net.Net_t__struct_46.T__struct_46, _0:() -> Void):Void return @:check32 __self__.once._doSlow(_0);
    @:embedded
    @:localembedfields
    public static function do_( __self__:stdgo._internal.net.Net_t__struct_46.T__struct_46, _0:() -> Void):Void return @:check32 __self__.once.do_(_0);
}
