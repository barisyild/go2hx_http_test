package stdgo._internal.internal.intern;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.internal.intern.Intern.Value_asInterface) class Value_static_extension {
    @:keep
    @:tdfield
    static public function get( _v:stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>):stdgo.AnyInterface {
        @:recv var _v:stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value> = _v;
        //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L32"
        return (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cmpVal;
    }
}
