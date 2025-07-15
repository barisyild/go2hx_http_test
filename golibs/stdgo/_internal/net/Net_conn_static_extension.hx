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
@:keep class Conn_static_extension {
    @:interfacetypeffun
    static public function setWriteDeadline(t:stdgo._internal.net.Net_conn.Conn, _t:stdgo._internal.time.Time_time.Time):stdgo.Error return t.setWriteDeadline(_t);
    @:interfacetypeffun
    static public function setReadDeadline(t:stdgo._internal.net.Net_conn.Conn, _t:stdgo._internal.time.Time_time.Time):stdgo.Error return t.setReadDeadline(_t);
    @:interfacetypeffun
    static public function setDeadline(t:stdgo._internal.net.Net_conn.Conn, _t:stdgo._internal.time.Time_time.Time):stdgo.Error return t.setDeadline(_t);
    @:interfacetypeffun
    static public function remoteAddr(t:stdgo._internal.net.Net_conn.Conn):stdgo._internal.net.Net_addr.Addr return t.remoteAddr();
    @:interfacetypeffun
    static public function localAddr(t:stdgo._internal.net.Net_conn.Conn):stdgo._internal.net.Net_addr.Addr return t.localAddr();
    @:interfacetypeffun
    static public function close(t:stdgo._internal.net.Net_conn.Conn):stdgo.Error return t.close();
    @:interfacetypeffun
    static public function write(t:stdgo._internal.net.Net_conn.Conn, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.write(_b);
    @:interfacetypeffun
    static public function read(t:stdgo._internal.net.Net_conn.Conn, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.read(_b);
}
