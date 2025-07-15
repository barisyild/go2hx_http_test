package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function notNilFilter(__0:stdgo.GoString, _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L23"
        {
            final __value__ = _v.kind();
            if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L25"
                return !_v.isNil();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L27"
        return true;
    }
