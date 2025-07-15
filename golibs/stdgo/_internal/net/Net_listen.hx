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
function listen(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_listener.Listener; var _1 : stdgo.Error; } {
        #if sys {
            final network:String = _network;
            final address:String = _address;
            final colonIndex = address.indexOf(":");
            if (colonIndex == -1) throw "invalid address formatting: " + address;
            final host = new sys.net.Host(address.substr(0, colonIndex));
            final port = Std.parseInt(address.substr(colonIndex + 1));
            final addr = new stdgo._internal.net.Net_haxeaddr.HaxeAddr(network, host.toString(), port);
            switch network {
                case "tcp", "tcp4", "tcp6":
                    final l = new sys.net.Socket();
l.bind(host, port);
l.listen(0);
if (port == 0) @:privateAccess addr._port = l.host().port;
return { _0 : new stdgo._internal.net.Net_haxelistener.HaxeListener(addr, l), _1 : null };
                case "udp", "udp4", "udp6":
                    throw "unimplemented network: " + network;
                case "ip", "ip4", "ip6":
                    throw "unimplemented network: " + network;
                case "unix", "unixgram", "unixpacket":
                    throw "unimplemented network: " + network;
                default:
                    throw "unimplemented network: " + network;
            };
        } #else throw "net.Listen only implemented on sys targets" #end;
    }
