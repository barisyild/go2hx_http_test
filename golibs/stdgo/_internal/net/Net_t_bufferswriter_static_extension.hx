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
@:keep class T_buffersWriter_static_extension {
    @:interfacetypeffun
    static public function _writeBuffers(t:stdgo._internal.net.Net_t_bufferswriter.T_buffersWriter, _0:stdgo.Ref<stdgo._internal.net.Net_buffers.Buffers>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return t._writeBuffers(_0);
}
