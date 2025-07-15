package stdgo._internal.internal.poll;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
@:keep @:allow(stdgo._internal.internal.poll.Poll.SysFile_asInterface) class SysFile_static_extension {
    @:keep
    @:tdfield
    static public function _destroy( _s:stdgo.Ref<stdgo._internal.internal.poll.Poll_sysfile.SysFile>, _fd:stdgo.GoInt):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.internal.poll.Poll_sysfile.SysFile> = _s;
        trace("funclit");
        throw "not implemented: _destroy";
    }
    @:keep
    @:tdfield
    static public function _init( _s:stdgo.Ref<stdgo._internal.internal.poll.Poll_sysfile.SysFile>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.internal.poll.Poll_sysfile.SysFile> = _s;
    }
}
