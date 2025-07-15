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
@:structInit @:using(stdgo._internal.net.Net_dnserror_static_extension.DNSError_static_extension) @:using(stdgo._internal.net.Net_dnserror_static_extension.DNSError_static_extension) class DNSError {
    public var err : stdgo.GoString = "";
    public var name : stdgo.GoString = "";
    public var server : stdgo.GoString = "";
    public var isTimeout : Bool = false;
    public var isTemporary : Bool = false;
    public var isNotFound : Bool = false;
    public function new(?err:stdgo.GoString, ?name:stdgo.GoString, ?server:stdgo.GoString, ?isTimeout:Bool, ?isTemporary:Bool, ?isNotFound:Bool) {
        if (err != null) this.err = err;
        if (name != null) this.name = name;
        if (server != null) this.server = server;
        if (isTimeout != null) this.isTimeout = isTimeout;
        if (isTemporary != null) this.isTemporary = isTemporary;
        if (isNotFound != null) this.isNotFound = isNotFound;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "err", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "server", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "isTimeout", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "isTemporary", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "isNotFound", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new DNSError(err, name, server, isTimeout, isTemporary, isNotFound);
    }
}
