package stdgo._internal.internal.intern;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.internal.intern.Intern.T_key_asInterface) class T_key_static_extension {
    @:keep
    @:tdfield
    static public function value( _k:stdgo._internal.internal.intern.Intern_t_key.T_key):stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value> {
        @:recv var _k:stdgo._internal.internal.intern.Intern_t_key.T_key = _k?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L55"
        if (_k._isString) {
            //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L56"
            return (stdgo.Go.setRef(({ _cmpVal : new stdgo.AnyInterface(_k._s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))) } : stdgo._internal.internal.intern.Intern_value.Value), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotinterndotintern_valuedotvalue.__type__stdgodot_internaldotinternaldotinterndotIntern_valuedotValue })) : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L58"
        return (stdgo.Go.setRef(({ _cmpVal : _k._cmpVal } : stdgo._internal.internal.intern.Intern_value.Value), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotinterndotintern_valuedotvalue.__type__stdgodot_internaldotinternaldotinterndotIntern_valuedotValue })) : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
    }
}
