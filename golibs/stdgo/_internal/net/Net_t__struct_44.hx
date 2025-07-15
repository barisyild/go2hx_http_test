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
@:local @:using(stdgo._internal.net.Net_t__struct_44_static_extension.T__struct_44_static_extension) @:using(stdgo._internal.net.Net_t__struct_44_static_extension.T__struct_44_static_extension) @:using(stdgo._internal.net.Net_t__struct_44_static_extension.T__struct_44_static_extension) typedef T__struct_44 = {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_mutex.Mutex;
    /**
        * Key for the list of literal IP addresses must be a host
        * name. It would be part of DNS labels, a FQDN or an absolute
        * FQDN.
        * For now the key is converted to lower case for convenience.
    **/
    public var _byName : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.Net_t_byname.T_byName>;
    /**
        * Key for the list of host names must be a literal IP address
        * including IPv6 address with zone identifier.
        * We don't support old-classful IP address notation.
    **/
    public var _byAddr : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>;
    public var _expire : stdgo._internal.time.Time_time.Time;
    public var _path : stdgo.GoString;
    public var _mtime : stdgo._internal.time.Time_time.Time;
    public var _size : stdgo.GoInt64;
};
