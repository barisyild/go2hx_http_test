package stdgo._internal.internal.poll;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
@:structInit @:using(stdgo._internal.internal.poll.Poll_t_polldesc_static_extension.T_pollDesc_static_extension) @:using(stdgo._internal.internal.poll.Poll_t_polldesc_static_extension.T_pollDesc_static_extension) class T_pollDesc {
    public var _fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = (null : stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>);
    public var _closing : Bool = false;
    public function new(?_fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, ?_closing:Bool) {
        if (_fd != null) this._fd = _fd;
        if (_closing != null) this._closing = _closing;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_fd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotpolldotpoll_fddotfd.__type__stdgodot_internaldotinternaldotpolldotPoll_fddotFD }) }, optional : false }, { name : "_closing", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_pollDesc(_fd, _closing);
    }
}
