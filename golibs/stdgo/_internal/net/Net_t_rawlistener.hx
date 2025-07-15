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
@:structInit @:using(stdgo._internal.net.Net_t_rawlistener_static_extension.T_rawListener_static_extension) @:using(stdgo._internal.net.Net_t_rawlistener_static_extension.T_rawListener_static_extension) class T_rawListener {
    @:embedded
    public var _rawConn : stdgo._internal.net.Net_t_rawconn.T_rawConn = ({} : stdgo._internal.net.Net_t_rawconn.T_rawConn);
    public function new(?_rawConn:stdgo._internal.net.Net_t_rawconn.T_rawConn) {
        if (_rawConn != null) this._rawConn = _rawConn;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_rawConn", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_rawconndott_rawconn.__type__stdgodot_internaldotnetdotNet_t_rawconndotT_rawConn }, optional : false }])));
    public var control(get, never) : (stdgo.GoUIntptr -> Void) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_control():(stdgo.GoUIntptr -> Void) -> stdgo.Error return @:check32 this._rawConn.control;
    public var pollFD(get, never) : () -> stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_pollFD():() -> stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> return @:check32 this._rawConn.pollFD;
    public var _ok(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__ok():() -> Bool return @:check32 this._rawConn._ok;
    public function __copy__() {
        return new T_rawListener(_rawConn);
    }
}
