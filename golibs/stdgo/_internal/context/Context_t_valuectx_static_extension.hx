package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.context.Context.T_valueCtx_asInterface) class T_valueCtx_static_extension {
    @:keep
    @:tdfield
    static public function value( _c:stdgo.Ref<stdgo._internal.context.Context_t_valuectx.T_valueCtx>, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        @:recv var _c:stdgo.Ref<stdgo._internal.context.Context_t_valuectx.T_valueCtx> = _c;
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L748"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key == (_key)) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L749"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._val;
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L751"
        return stdgo._internal.context.Context__value._value((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context, _key);
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.context.Context_t_valuectx.T_valueCtx>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.context.Context_t_valuectx.T_valueCtx> = _c;
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L742"
        return (((((stdgo._internal.context.Context__contextname._contextName((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context) + (".WithValue(type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (stdgo._internal.internal.reflectlite.Reflectlite_typeof.typeOf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key).string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (", val " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.context.Context__stringify._stringify((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._val)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:stdgo._internal.context.Context_t_valuectx.T_valueCtx):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function done( __self__:stdgo._internal.context.Context_t_valuectx.T_valueCtx):stdgo.Chan<{ }> return @:_5 __self__.done();
    @:embedded
    @:embeddededffieldsffun
    public static function deadline( __self__:stdgo._internal.context.Context_t_valuectx.T_valueCtx):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_5 __self__.deadline();
}
