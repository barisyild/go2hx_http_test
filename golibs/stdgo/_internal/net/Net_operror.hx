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
@:structInit @:using(stdgo._internal.net.Net_operror_static_extension.OpError_static_extension) @:using(stdgo._internal.net.Net_operror_static_extension.OpError_static_extension) class OpError {
    public var op : stdgo.GoString = "";
    public var net : stdgo.GoString = "";
    public var source : stdgo._internal.net.Net_addr.Addr = (null : stdgo._internal.net.Net_addr.Addr);
    public var addr : stdgo._internal.net.Net_addr.Addr = (null : stdgo._internal.net.Net_addr.Addr);
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?op:stdgo.GoString, ?net:stdgo.GoString, ?source:stdgo._internal.net.Net_addr.Addr, ?addr:stdgo._internal.net.Net_addr.Addr, ?err:stdgo.Error) {
        if (op != null) this.op = op;
        if (net != null) this.net = net;
        if (source != null) this.source = source;
        if (addr != null) this.addr = addr;
        if (err != null) this.err = err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "op", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "net", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "source", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr }, optional : false }, { name : "addr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr }, optional : false }, { name : "err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new OpError(op, net, source, addr, err);
    }
}
