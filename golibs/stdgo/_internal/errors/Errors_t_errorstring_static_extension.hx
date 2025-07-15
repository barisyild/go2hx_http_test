package stdgo._internal.errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
@:keep @:allow(stdgo._internal.errors.Errors.T_errorString_asInterface) class T_errorString_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.errors.Errors_t_errorstring.T_errorString>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.errors.Errors_t_errorstring.T_errorString> = _e;
        //"file:///Users/o/.go/go1.21.3/src/errors/errors.go#L71"
        return (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s?.__copy__();
    }
}
