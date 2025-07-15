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
function _newBufferedPipe(_softLimit:stdgo.GoInt):stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe> {
        var _p = (stdgo.Go.setRef(({ _softLimit : _softLimit } : stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_bufferedpipedott_bufferedpipe.__type__stdgodot_internaldotnetdotNet_t_bufferedpipedotT_bufferedPipe })) : stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rCond.l = stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex })) : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }));
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wCond.l = stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex })) : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }));
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L256"
        return _p;
    }
