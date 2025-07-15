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
@:structInit @:using(stdgo._internal.net.Net_unixlistener_static_extension.UnixListener_static_extension) @:using(stdgo._internal.net.Net_unixlistener_static_extension.UnixListener_static_extension) class UnixListener {
    public var _fd : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD> = (null : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>);
    public var _path : stdgo.GoString = "";
    public var _unlink : Bool = false;
    public var _unlinkOnce : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public function new(?_fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>, ?_path:stdgo.GoString, ?_unlink:Bool, ?_unlinkOnce:stdgo._internal.sync.Sync_once.Once) {
        if (_fd != null) this._fd = _fd;
        if (_path != null) this._path = _path;
        if (_unlink != null) this._unlink = _unlink;
        if (_unlinkOnce != null) this._unlinkOnce = _unlinkOnce;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_fd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_netfddott_netfd.__type__stdgodot_internaldotnetdotNet_t_netfddotT_netFD }) }, optional : false }, { name : "_path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_unlink", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_unlinkOnce", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_oncedotonce.__type__stdgodot_internaldotsyncdotSync_oncedotOnce }, optional : false }])));
    public function __copy__() {
        return new UnixListener(_fd, _path, _unlink, _unlinkOnce);
    }
}
