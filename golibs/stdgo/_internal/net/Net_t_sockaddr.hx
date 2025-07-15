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
@:interface typedef T_sockaddr = stdgo.StructType & {
    /**
        * family returns the platform-dependent address family
        * identifier.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _family():stdgo.GoInt;
    /**
        * isWildcard reports whether the address is a wildcard
        * address.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _isWildcard():Bool;
    /**
        * sockaddr returns the address converted into a syscall
        * sockaddr type that implements syscall.Sockaddr
        * interface. It returns a nil interface when the address is
        * nil.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _sockaddr(_family:stdgo.GoInt):{ var _0 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _1 : stdgo.Error; };
    /**
        * toLocal maps the zero address to a local system address (127.0.0.1 or ::1)
        
        
    **/
    @:interfacetypeffun
    public dynamic function _toLocal(_net:stdgo.GoString):stdgo._internal.net.Net_t_sockaddr.T_sockaddr;
    public dynamic function network():stdgo.GoString;
    public dynamic function string():stdgo.GoString;
};
