package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension) @:using(stdgo._internal.reflect.Reflect_value_static_extension.Value_static_extension) class Value {
    @:embedded
    public var _flag : stdgo._internal.reflect.Reflect_t_flag.T_flag = (new stdgo.GoUIntptr(0) : stdgo._internal.reflect.Reflect_t_flag.T_flag);
    public var value : stdgo.AnyInterface;
    @:local
    var underlyingValue : Dynamic;
    public var underlyingIndex : stdgo.GoInt = -1;
    @:local
    var underlyingKey : Dynamic = null;
    public var canAddrBool : Bool = false;
    public var notSetBool : Bool = false;
    dynamic public function string():stdgo.GoString @:splitdeps {
        var _v = this;
        if (@:privateAccess _v.value == null) {
            return "<invalid Value>";
        };
        var value = @:privateAccess _v.value.value;
        final t:stdgo._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case std.Type.ValueType.TClass(c):
                    final name = std.Type.getClassName(c);
if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
            value = (value : stdgo.Pointer<Dynamic>).value;
        };
        final underlyingType = stdgo._internal.internal.reflect.Reflect.getUnderlying(t);
        switch (underlyingType) {
            case stdgo._internal.internal.reflect.GoType.basic(kind):
                switch kind {
                case string_kind:
                    return value;
                default:
                    final _ = false;
            };
            default:
                final _ = false;
        };
        return "<" + _v.type().string() + " Value>";
    };
    public function new(?_flag:stdgo._internal.reflect.Reflect_t_flag.T_flag, ?value:stdgo.AnyInterface, ?underlyingValue:Dynamic, ?underlyingIndex:stdgo.GoInt, ?underlyingKey:Dynamic, ?canAddrBool:Bool, ?notSetBool:Bool, ?string) {
        if (_flag != null) this._flag = _flag;
        if (value != null) this.value = value;
        if (underlyingValue != null) this.underlyingValue = underlyingValue;
        if (underlyingIndex != null) this.underlyingIndex = underlyingIndex;
        if (underlyingKey != null) this.underlyingKey = underlyingKey;
        if (canAddrBool != null) this.canAddrBool = canAddrBool;
        if (notSetBool != null) this.notSetBool = notSetBool;
        if (string != null) this.string = string;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_flag", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_t_flagdott_flag.__type__stdgodot_internaldotreflectdotReflect_t_flagdotT_flag }, optional : false }])));
    public function __copy__() {
        return new Value(_flag, value, underlyingValue, underlyingIndex, underlyingKey, canAddrBool, notSetBool);
    }
}
