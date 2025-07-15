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
@:interface typedef Addr = stdgo.StructType & {
    /**
        
        
        * name of the network (for example, "tcp", "udp")
    **/
    @:interfacetypeffun
    public dynamic function network():stdgo.GoString;
    /**
        
        
        * string form of address (for example, "192.0.2.1:25", "[2001:db8::1]:80")
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
};
