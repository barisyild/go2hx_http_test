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
@:using(stdgo._internal.net.Net_haxelistener_static_extension.HaxeListener_static_extension) @:using(stdgo._internal.net.Net_haxelistener_static_extension.HaxeListener_static_extension) class HaxeListener {
    @:local
    private var _socket = #if sys {
        (null : sys.net.Socket);
    } #else null #end;
    @:local
    private var _addr = null;
    public function new(addr, socket) {
        this._addr = addr;
        this._socket = socket;
    }
    public dynamic function accept():{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        #if sys {
            final s = _socket.accept();
            return { _0 : new stdgo._internal.net.Net_haxeconn.HaxeConn(this._addr, s), _1 : null };
        } #else null #end;
        return { _0 : null, _1 : null };
    }
    public dynamic function close():stdgo.Error {
        #if sys {
            _socket.close();
        } #else null #end;
        return null;
    }
    public dynamic function addr():stdgo._internal.net.Net_addr.Addr {
        return this._addr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
}
