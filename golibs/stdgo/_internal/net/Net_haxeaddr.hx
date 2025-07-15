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
@:using(stdgo._internal.net.Net_haxeaddr_static_extension.HaxeAddr_static_extension) @:using(stdgo._internal.net.Net_haxeaddr_static_extension.HaxeAddr_static_extension) class HaxeAddr {
    @:local
    private var _network : String = "";
    @:local
    private var _ip : String = "";
    @:local
    private var _port : Int = 0;
    public function new(network, ip, port) {
        this._network = network;
        this._ip = ip;
        this._port = port;
    }
    public dynamic function network():stdgo.GoString {
        return _network;
    }
    public dynamic function string():stdgo.GoString {
        return _ip + ":" + _port;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
}
