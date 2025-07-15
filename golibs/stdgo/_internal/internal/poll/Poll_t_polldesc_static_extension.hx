package stdgo._internal.internal.poll;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
@:keep @:allow(stdgo._internal.internal.poll.Poll.T_pollDesc_asInterface) class T_pollDesc_static_extension {
    @:keep
    @:tdfield
    static public function _pollable( _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc>):Bool {
        @:recv var _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc> = _pd;
        trace("funclit");
        throw "not implemented: _pollable";
    }
    @:keep
    @:tdfield
    static public function _waitCanceled( _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc>, _mode:stdgo.GoInt):Void {
        @:recv var _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc> = _pd;
    }
    @:keep
    @:tdfield
    static public function _waitWrite( _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc>, _isFile:Bool):stdgo.Error {
        @:recv var _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc> = _pd;
        trace("funclit");
        throw "not implemented: _waitWrite";
    }
    @:keep
    @:tdfield
    static public function _waitRead( _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc>, _isFile:Bool):stdgo.Error {
        @:recv var _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc> = _pd;
        trace("funclit");
        throw "not implemented: _waitRead";
    }
    @:keep
    @:tdfield
    static public function _wait( _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc>, _mode:stdgo.GoInt, _isFile:Bool):stdgo.Error {
        @:recv var _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc> = _pd;
        trace("funclit");
        throw "not implemented: _wait";
    }
    @:keep
    @:tdfield
    static public function _prepareWrite( _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc>, _isFile:Bool):stdgo.Error {
        @:recv var _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc> = _pd;
        trace("funclit");
        throw "not implemented: _prepareWrite";
    }
    @:keep
    @:tdfield
    static public function _prepareRead( _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc>, _isFile:Bool):stdgo.Error {
        @:recv var _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc> = _pd;
        trace("funclit");
        throw "not implemented: _prepareRead";
    }
    @:keep
    @:tdfield
    static public function _prepare( _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc>, _mode:stdgo.GoInt, _isFile:Bool):stdgo.Error {
        @:recv var _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc> = _pd;
        trace("funclit");
        throw "not implemented: _prepare";
    }
    @:keep
    @:tdfield
    static public function _evict( _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc>):Void {
        @:recv var _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc> = _pd;
    }
    @:keep
    @:tdfield
    static public function _close( _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc>):Void {
        @:recv var _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc> = _pd;
    }
    @:keep
    @:tdfield
    static public function _init( _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc>, _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error {
        @:recv var _pd:stdgo.Ref<stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc> = _pd;
        trace("funclit");
        throw "not implemented: _init";
    }
}
