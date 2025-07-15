package stdgo._internal.os.exec;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
@:keep @:allow(stdgo._internal.os.exec.Exec.Error_asInterface) class Error_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.os.exec.Exec_error.Error>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.os.exec.Exec_error.Error> = _e;
        trace("funclit");
        throw "not implemented: unwrap";
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.os.exec.Exec_error.Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.os.exec.Exec_error.Error> = _e;
        trace("funclit");
        throw "not implemented: error";
    }
}
