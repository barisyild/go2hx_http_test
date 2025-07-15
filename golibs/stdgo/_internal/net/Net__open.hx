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
function _open(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_t_file.T_file>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_open.open(_name?.__copy__()), _fd:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L77"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L78"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L80"
        return { _0 : (stdgo.Go.setRef((new stdgo._internal.net.Net_t_file.T_file(_fd, (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (65536 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), false) : stdgo._internal.net.Net_t_file.T_file), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_filedott_file.__type__stdgodot_internaldotnetdotNet_t_filedotT_file })) : stdgo.Ref<stdgo._internal.net.Net_t_file.T_file>), _1 : (null : stdgo.Error) };
    }
