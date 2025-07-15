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
@:using(stdgo._internal.net.Net_haxeconn_static_extension.HaxeConn_static_extension) @:using(stdgo._internal.net.Net_haxeconn_static_extension.HaxeConn_static_extension) class HaxeConn {
    @:local
    private var _socket = #if sys {
        (null : sys.net.Socket);
    } #else null #end;
    @:local
    private var _addr = null;
    public function new(addr, socket) {
        this._socket = socket;
        this._addr = addr;
    }
    public dynamic function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        #if sys {
            final b = _b.toBytes();
            var i = 0;
            try {
                i = @:privateAccess _socket.input.readBytes(b, 0, b.length);
            } catch(e:haxe.io.Eof) {
                return { _0 : 0, _1 : stdgo._internal.io.Io_eof.eOF };
            };
            final data = b.getData();
            for (pos in 0 ... i) {
                (_b : stdgo.GoArray.GoArrayData<stdgo.GoByte>).vector[pos] = haxe.io.Bytes.fastGet(data, pos);
            };
            return { _0 : i, _1 : null };
        } #else null #end;
        return { _0 : 0, _1 : null };
    }
    public dynamic function write(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        #if sys {
            final b = _b.toBytes();
            final i = _socket.output.writeBytes(b, 0, b.length);
            @:privateAccess _b.__bytes__ = b;
            return { _0 : i, _1 : null };
        } #else null #end;
        return { _0 : 0, _1 : null };
    }
    public dynamic function close():stdgo.Error {
        #if sys {
            _socket.close();
        } #else null #end;
        return null;
    }
    public dynamic function localAddr():stdgo._internal.net.Net_addr.Addr {
        final obj = _socket.host();
        final addr = new stdgo._internal.net.Net_haxeaddr.HaxeAddr(@:privateAccess _addr._network, obj.host.toString(), obj.port);
        return addr;
    }
    public dynamic function remoteAddr():stdgo._internal.net.Net_addr.Addr {
        final obj = _socket.peer();
        final addr = new stdgo._internal.net.Net_haxeaddr.HaxeAddr(@:privateAccess _addr._network, obj.host.toString(), obj.port);
        return addr;
    }
    public dynamic function setDeadline(t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return null;
    }
    public dynamic function setReadDeadline(t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return null;
    }
    public dynamic function setWriteDeadline(t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return null;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
}
