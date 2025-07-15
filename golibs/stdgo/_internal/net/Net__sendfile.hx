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
function _sendFile(_c:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; var _2 : Bool; } {
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error), _handled = false;
        //"file:///Users/o/.go/go1.21.3/src/net/sendfile_stub.go#L12"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; var _2 : Bool; } = { _0 : (0i64 : stdgo.GoInt64), _1 : (null : stdgo.Error), _2 : false };
            _n = __tmp__._0;
            _err = __tmp__._1;
            _handled = __tmp__._2;
            __tmp__;
        };
    }
