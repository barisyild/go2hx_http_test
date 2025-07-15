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
@:structInit class T__dialParallel___localname___T__dialParallel___localname___dialResult_15967_15967 {
    @:embedded
    public var conn : stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
    @:embedded
    public var _error : stdgo.Error = (null : stdgo.Error);
    public var _primary : Bool = false;
    public var _done : Bool = false;
    public function new(?conn:stdgo._internal.net.Net_conn.Conn, ?_error:stdgo.Error, ?_primary:Bool, ?_done:Bool) {
        if (conn != null) this.conn = conn;
        if (_error != null) this._error = _error;
        if (_primary != null) this._primary = _primary;
        if (_done != null) this._done = _done;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "conn", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn }, optional : false }, { name : "_error", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_primary", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_done", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    public function get_close():() -> stdgo.Error return @:check31 (this.conn ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close;
    public var error(get, never) : () -> stdgo.GoString;
    @:embedded
    public function get_error():() -> stdgo.GoString return @:check31 (this._error ?? throw stdgo.Error._nullPointerDereference.__underlying__()).error;
    public var localAddr(get, never) : () -> stdgo._internal.net.Net_addr.Addr;
    @:embedded
    public function get_localAddr():() -> stdgo._internal.net.Net_addr.Addr return @:check31 (this.conn ?? throw stdgo.Error._nullPointerDereference.__underlying__()).localAddr;
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.conn ?? throw stdgo.Error._nullPointerDereference.__underlying__()).read;
    public var remoteAddr(get, never) : () -> stdgo._internal.net.Net_addr.Addr;
    @:embedded
    public function get_remoteAddr():() -> stdgo._internal.net.Net_addr.Addr return @:check31 (this.conn ?? throw stdgo.Error._nullPointerDereference.__underlying__()).remoteAddr;
    public var setDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    public function get_setDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check31 (this.conn ?? throw stdgo.Error._nullPointerDereference.__underlying__()).setDeadline;
    public var setReadDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    public function get_setReadDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check31 (this.conn ?? throw stdgo.Error._nullPointerDereference.__underlying__()).setReadDeadline;
    public var setWriteDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    public function get_setWriteDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check31 (this.conn ?? throw stdgo.Error._nullPointerDereference.__underlying__()).setWriteDeadline;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.conn ?? throw stdgo.Error._nullPointerDereference.__underlying__()).write;
    public function __copy__() {
        return new T__dialParallel___localname___T__dialParallel___localname___dialResult_15967_15967(conn, _error, _primary, _done);
    }
}
