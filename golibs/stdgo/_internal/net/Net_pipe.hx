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
function pipe():{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo._internal.net.Net_conn.Conn; } {
        var _cb1 = (new stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>(0, () -> (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>);
        var _cb2 = (new stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>(0, () -> (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>);
        var _cn1 = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _cn2 = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _done1 = (new stdgo.Chan<stdgo._internal.net.Net_t__struct_18.T__struct_18>(0, () -> ({  } : stdgo._internal.net.Net_t__struct_18.T__struct_18)) : stdgo.Chan<stdgo._internal.net.Net_t__struct_18.T__struct_18>);
        var _done2 = (new stdgo.Chan<stdgo._internal.net.Net_t__struct_18.T__struct_18>(0, () -> ({  } : stdgo._internal.net.Net_t__struct_18.T__struct_18)) : stdgo.Chan<stdgo._internal.net.Net_t__struct_18.T__struct_18>);
        var _p1 = (stdgo.Go.setRef(({ _rdRx : _cb1, _rdTx : _cn1, _wrTx : _cb2, _wrRx : _cn2, _localDone : _done1, _remoteDone : _done2, _readDeadline : stdgo._internal.net.Net__makepipedeadline._makePipeDeadline()?.__copy__(), _writeDeadline : stdgo._internal.net.Net__makepipedeadline._makePipeDeadline()?.__copy__() } : stdgo._internal.net.Net_t_pipe.T_pipe), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_pipedott_pipe.__type__stdgodot_internaldotnetdotNet_t_pipedotT_pipe })) : stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>);
        var _p2 = (stdgo.Go.setRef(({ _rdRx : _cb2, _rdTx : _cn2, _wrTx : _cb1, _wrRx : _cn1, _localDone : _done2, _remoteDone : _done1, _readDeadline : stdgo._internal.net.Net__makepipedeadline._makePipeDeadline()?.__copy__(), _writeDeadline : stdgo._internal.net.Net__makepipedeadline._makePipeDeadline()?.__copy__() } : stdgo._internal.net.Net_t_pipe.T_pipe), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_pipedott_pipe.__type__stdgodot_internaldotnetdotNet_t_pipedotT_pipe })) : stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>);
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L135"
        return { _0 : stdgo.Go.asInterface(_p1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_pipedott_pipe.__type__stdgodot_internaldotnetdotNet_t_pipedotT_pipe })), _1 : stdgo.Go.asInterface(_p2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_pipedott_pipe.__type__stdgodot_internaldotnetdotNet_t_pipedotT_pipe })) };
    }
