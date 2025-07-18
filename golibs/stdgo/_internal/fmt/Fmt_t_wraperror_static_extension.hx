package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_wrapError_asInterface) class T_wrapError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperror.T_wrapError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperror.T_wrapError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/fmt/errors.go#L64"
        return (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperror.T_wrapError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperror.T_wrapError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/fmt/errors.go#L60"
        return (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg?.__copy__();
    }
}
